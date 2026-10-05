<!-- Genererad av scripts/build_portal.py — redigera portal-data/ i stället. -->
<p>RIV Tekniska Anvisningar Basic Profile 2.1 hittar du under <a href="https://rivta.se/documents/ARK_0002/">RIV Tekniska Anvisningar - Basic Profile 2.1</a>.</p>

### Utveckling av tjänstekontrakt {#tjanstekontrakt}

<p>Tjänstekontrakt är specifikationer som reglerar vilken information som utbyts mellan olika system. De baseras på internationella standarder och är upprättade enligt anvisningar för teknisk interoperabilitet. Inera förvaltar livscykeln för de nationella tjänstekontrakten, såsom hantering av förändrade krav och behov, versionshantering och spelreglerna vid utfasning.</p>

<table class="grid">
<tr><th>Anvisningar</th><th>Mallar</th><th>Verktyg</th><th>Granskningsmallar</th></tr>
<tr><td style="vertical-align:top"><ul><li><a href="https://rivta.se/documents/ARK_0006/">RIV Tekniska Anvisningar - Domänschema</a></li><li><a href="https://rivta.se/documents/ARK_0005/">RIV Tekniska Anvisningar - Tjänsteschema</a></li><li><a href="https://rivta.se/documents/ARK_0007/">RIV Tekniska Anvisningar - Konfigurationsstyrning</a></li><li><a href="https://bitbucket.org/rivta-tools/servicedomain-test-framework/">Utveckling av testsvit</a></li><li><a href="https://bitbucket.org/rivta-domains/best-practice/">Best practice för datatypshantering</a></li><li><a href="https://confluence.nordicmedtest.se/display/NoWi">Verifiering av tjänsteproducent</a></li><li><a href="https://rivta.se/documents/ARK_0061/">Anvisning för utformning av nyttolast i tjänstekontrakt</a></li></ul></td><td style="vertical-align:top"><ul><li><a href="https://rivta.se/documents/ARK_0015/">Tjänstekontraktsbeskrivning - Mall</a></li><li><a href="https://rivta.se/documents/ARK_0023/">Arkitekturella beslut - Mall</a></li><li><a href="https://rivta.se/documents/ARK_0026/">Informationsspecifikation - Mall</a></li></ul></td><td style="vertical-align:top"><ul><li><a href="http://rivtatools-prod.appspot.com/">Tjänstekontraktsgenerator</a></li><li><a href="https://bitbucket.org/rivta-tools/verify-scripts/">Verifieringsscript</a></li><li><a href="https://bitbucket.org/rivta-tools/build-script-generators">Byggscriptsgenerator</a></li><li><a href="https://integrationer.tjansteplattform.se">Tjänstekontrakt i integrationssamband (Hippo)</a></li></ul></td><td style="vertical-align:top"><ul><li><a href="https://rivta.se/documents/ARK_0051/">T-granskning - Mall</a></li><li><a href="https://rivta.se/documents/ARK_0050/">S-granskning - Mall</a></li></ul></td></tr>
</table>

### Utveckling av e-tjänster {#e-tjanster}

<p>Mallarna är främst tänkta som stöd för projekt som utvecklar gemensamma (nationella) tjänster, men de kan även fylla en viktig funktion i regionala eller lokala projekt.</p>

<table class="grid">
<tr><th>Mallar</th></tr>
<tr><td style="vertical-align:top"><ul><li><a href="https://rivta.se/documents/ARK_0013/">Software Architecture Document - Mall</a></li><li><a href="https://rivta.se/documents/ARK_0023/">Arkitekturella beslut - Mall</a></li><li><a href="https://rivta.se/documents/ARK_0025/">Icke-funktionella krav - Mall och exempel</a></li></ul></td></tr>
</table>

### Tjänsteplattform {#tjansteplattform}

<p>En tjänsteplattform fungerar som en slags växel för system som vill utbyta information med varandra. Istället för att upprätta en direkt förbindelse mellan systemen sker informationsutbytet via tjänsteplattformen. På det sättet skapas lösa kopplingar mellan systemen. Det innebär att systemen har så få beroenden till varandra som möjligt för att förhindra dominoeffekter; om en verksamhet någonstans i Sverige bygger om sina interna system ska effekterna av det inte spridas och tvinga andra verksamheter i övriga landet att bygga om sina system.</p>
<p>RIV Tekniska anvisningar Tjänsteplattform innehåller de regler som måste tillämpas vid utveckling av tjänsteplattformar i enlighet med den tekniska referensarkitekturen i T-boken.</p>
<p>Syftet med regelverket är att underlätta utvecklings- och valideringsinsatser genom att samla de krav och regler som ställs på en tjänsteplattform. Målgruppen är tekniska arkitekter och utvecklare som ska realisera en tjänsteplattform enligt den tekniska referensarkitekturen i T-boken och RIV Tekniska anvisningar. Denna anvisning beskriver enbart tekniska regler. Därmed utelämnas ämnen som till exempel godkännandeprocess kring tjänstekontrakt och krav på loggning.</p>

<table class="grid">
<tr><th>Anvisningar</th><th>Referensimplementation</th><th>Kodverk</th></tr>
<tr><td style="vertical-align:top"><ul><li><a href="https://rivta.se/documents/ARK_0034/">RIV Tekniska Anvisningar - Tjänsteplattform</a></li></ul></td><td style="vertical-align:top"><ul><li><a href="https://inera.atlassian.net/wiki/spaces/SKLTP/">Referensimplementation av tjänsteplattform (SKLTP)</a></li></ul></td><td style="vertical-align:top"><ul><li><a href="https://rivta.se/documents/ARK_0037/">Information om kodverksförvaltning</a></li></ul></td></tr>
</table>

