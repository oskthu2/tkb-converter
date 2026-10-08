## Inledning

*I källdokumentet (TKB 1.0, utgåva 1.0.2) är detta kapitel 3 ”Inledning”. IG:n följer projektets gemensamma kapitelindelning, men texten nedan är TKB:ns egen.*

**Hantera ordinations- och förskrivningsrelaterat utfall av aktivitet**  
Utgåva 1.0.2  
2022-02-16

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

riv:clinicalprocess:activityprescription:actoutcome

Den svenska benämningen är

”Hantera ordinations- och förskrivningsrelaterat utfall av aktivitet”.

### Användningsområden

Tjänstedomänen syftar till att tillmötesgå behovet av systemoberoende åtkomst till information om utfallet av ordinations- och förskrivningsrelaterade aktiviteter för såväl vårdgivar- som invånartjänster.

”Min journal”, ”Mitt vårdflöde”, Nationell patientöversikt och tjänster för elektroniskt utlämnande till patientens egna tjänster (via API-Gateway) som exempelvis personligt konto för hälsoinformation är exempel på nationella tjänster med behov av åtkomst till sådan information.

Tjänstekontrakten i denna domän ska tillmötesgå de nationella behoven men också fylla behovet för tjänster regionalt och lokalt.

För att vara tillämpbara för både invånar- och vårdgivartjänster behöver tjänstekontrakten förmedla den information som behövs för att båda typerna av e-tjänster (tjänstekonsumenter) ska ha det underlag som behövs för att säkerställa behörig åtkomst för sina respektive användargrupper.

Det är dock en grundläggande princip att tjänsteproducenterna inte ska anpassa svaret efter frågeställaren, utan istället tillhandahålla fullständig information som tjänstekonsumenten kan anpassa och behörighetsstyra för sin målgrupp.

### Övrigt

Tjänstedomänen syftar i första hand till realisering av aggregerande tjänster (enl. T-bok REV B). Tjänstekontrakten är därför uppbyggda för s.k. system-adressering.

Detta dokument kompletterar reglerna i de tekniska kontrakten (XML-scheman, WSDL-filer). Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

Där inte annat anges, baseras tjänstedomänens kontrakt på RIV – Informationsspecifikation Nationell Patientöversikt version 2.2.0.

### Arbetsgrupp

I arbetet har följande personer deltagit:

Projektgrupp:

* Johan Eltes, Eltes Consulting
* Marcus Claus, Mawell
* Fredrik Ström, Mawell
* Viktor Jernelöv, Cambio
* Göran Oettinger, Mawell
* Björn Genfors, Mawell

Referensgrupp Vaccination:

* Helena Palm, Cehis
* Roger Lundberg, Siemens
* Qemajl Imeri, SLL
* Jane Gustafsson, CGM/Takecare
* Katarina Skärlund, SMI

Projektledning:

* Johan Eltes, Eltes Consulting

Beställare:

* Nina Lundberg, SLL HSF
