## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen clinicalprocess:logistics:logistics. Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Tjänstedomänens syftar till att tillmötesgå behovet av systemoberoende åtkomst till patientjournal för såväl vårdgivar- som invånartjänster. ”Journal på nätet”, nationell patientöversikt och tjänster för elektroniskt utlämnande till patientens egna tjänster är alla exempel på nationella tjänster med behov av direktåtkomst till journalhistorik. Tjänstekontrakten i denna domän ska tillmötesgå de nationella behoven men också fylla behovet för direktåtkomst-tjänster inom ett landsting.

För att vara tillämpbara för både invånar- och vårdgivartjänster behöver tjänstekontrakten förmedla den information som behövs för att båda typerna av tjänster ska ha det underlag som behövs för att säkerställa behörig åtkomst för sina respektive användargrupper. Det är dock en grundläggande princip att tjänsteproducenterna inte ska anpassa svaret efter frågeställaren, utan istället tillhandahålla fullständig information som tjänstekonsumenten kan anpassa till sin målgrupp.

Tjänstedomänen syftar huvudsakligen till realisering av aggregerande tjänster (enl. T-bok REV B) [R4]. Tjänstekontrakten är därför uppbyggda för s.k. system-adressering.

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

Tjänstedomänen baseras på RIV – Informationsspecifikation Nationell Patientöversikt version 2.2.0.

### Svenskt namn
operativt processtöd: samordna resurser över verksamhetsstrukturer: logistik

resurssamordning

### Beskrivning
Denna domän hanterar information om historiska och framtida vårdkontakter samt vårdplaner. Domänen hanterar administrativ information som sker vid kontakt med hälso- och sjukvården, samt vid vårdplanering, och möjliggör tillgång till sådan information för både patienter och hälso- och sjukvårdspersonal.

### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – AB_clinicalprocess_healthcond_description.docx | Obligatoriskt | Bilaga |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Bilaga Gemensamma_typer_3.pdf |  | Bilaga |
| R4 | RIV Tekniska Anvisningar Översikt | Finns på webben | https://inera.atlassian.net/wiki/spaces/RTA/pages/3632911/RIV+Tekniska+Anvisningar+versikt |
| R5 | Tabell över godkända tjänstedomäner | Finns på Webben | http://rivta.se/domains/ |
| R6 | Patientdatalagen i praktiken RIV | Finns på webben | https://rivta.se/documents/ARK_0031/ |
| R7 | RIV Tekniska Anvisningar – Parallella versioner av ett tjänstekontrakt | Finns på webben | http://rivta.se/documents/ARK_0040/ |
| R8 | ISO8601-standarden för tidsformat | Finns på Webben | http://en.wikipedia.org/wiki/ISO_8601 |
| R9 | Kodverkslistan | Finns på Webben | https://inera.atlassian.net/wiki/spaces/KINT/pages/3615655/Kodverk+i+nationella+tj+nstekontrakt |
| R10 | Lista över identifierare | Finns på Webben | https://inera.atlassian.net/wiki/spaces/KINT/pages/468746902/Identifierare+i+nationella+tj+nstekontrakt |

### Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| K | Tjänstekonsument | Se referens [R4] |
| P | Tjänsteproducent | Se referens [R4] |
