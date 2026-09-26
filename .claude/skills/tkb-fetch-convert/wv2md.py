#!/usr/bin/env python3
"""wvHtml-utdata -> Markdown. Hoppar över överstruken text (<s>), sidhuvud/sidfot och innehållsförteckning."""
import sys, re
from html.parser import HTMLParser

def fix(s):
    try: return s.encode('latin-1').decode('utf-8')
    except Exception: return s

HEAD = {'Rubrik 1':1,'Rubrik 2':2,'Rubrik 3 Nr':3,'Rubrik 31':3,'Rubrik 4':4,'Rubrik 41':4}
SKIP = ('Sidhuvud','Sidfot','Innehåll')

class P(HTMLParser):
    def __init__(s):
        super().__init__(convert_charrefs=True)
        s.out=[]; s.buf=[]; s.style='Normal'; s.strike=0; s.bold=0
        s.tables=[]; s.lists=[]; s.img=0; s.cnt=[0,0,0,0,0]
    def flush(s):
        t=re.sub(r'\s+',' ',''.join(s.buf)).strip(); s.buf=[]
        return t
    def emit_par(s):
        t=s.flush()
        if not t: return
        if s.tables:
            s.tables[-1]['cell'].append(t); return
        st=s.style
        if any(st.startswith(x) for x in SKIP): return
        if st in HEAD:
            lvl=HEAD[st]; s.cnt[lvl-1]+=1
            for i in range(lvl,5): s.cnt[i]=0
            num='.'.join(str(c) for c in s.cnt[:lvl]) if lvl<=2 else ''
            s.out.append('\n'+'#'*lvl+' '+(num+' ' if num else '')+t+'\n'); return
        if s.lists:
            s.out.append('  '*(len(s.lists)-1)+('1.' if s.lists[-1]=='ol' else '-')+' '+t); return
        s.out.append('\n'+t+'\n')
    def handle_starttag(s,tag,a):
        a=dict(a)
        if tag=='div' and 'name' in a: s.style=fix(a['name'])
        elif tag=='s': s.strike+=1
        elif tag=='p' or tag=='br':
            if tag=='p': s.emit_par()
            else: s.buf.append(' ')
        elif tag in('ol','ul'): s.emit_par(); s.lists.append(tag)
        elif tag=='li': s.emit_par()
        elif tag=='table': s.emit_par(); s.tables.append({'rows':[],'row':None,'cell':None})
        elif tag=='tr' and s.tables: s.tables[-1]['row']=[]
        elif tag in('td','th') and s.tables: s.tables[-1]['cell']=[]; s.tables[-1]['span']=int(a.get('colspan','1') or 1)
        elif tag=='img':
            s.img+=1; s.buf.append(f' ![Figur {s.img}](IMG{s.img:02d}) ')
    def handle_endtag(s,tag):
        if tag=='s': s.strike=max(0,s.strike-1)
        elif tag=='p' or tag=='div': s.emit_par()
        elif tag in('ol','ul') and s.lists: s.emit_par(); s.lists.pop()
        elif tag in('td','th') and s.tables:
            s.emit_par(); T=s.tables[-1]
            txt=' <br> '.join(x for x in T['cell'] if x).replace('|','\\|')
            T['row'].append(txt)
            for _ in range(T.get('span',1)-1): T['row'].append('')
        elif tag=='tr' and s.tables:
            T=s.tables[-1]; T['rows'].append(T['row'])
        elif tag=='table' and s.tables:
            T=s.tables.pop(); rows=[r for r in T['rows'] if any(c.strip() for c in r)]
            if not rows: return
            w=max(len(r) for r in rows); rows=[r+['']*(w-len(r)) for r in rows]
            md=['| '+' | '.join(rows[0])+' |','|'+'---|'*w]+['| '+' | '.join(r)+' |' for r in rows[1:]]
            s.out.append('\n'+'\n'.join(md)+'\n')
    def handle_data(s,d):
        if s.strike: return
        s.buf.append(d)

p=P(); p.feed(open(sys.argv[1],encoding='utf-8',errors='replace').read()); p.emit_par()
md='\n'.join(p.out)
md=re.sub(r'\n{3,}','\n\n',md)
open(sys.argv[2],'w').write(md)
