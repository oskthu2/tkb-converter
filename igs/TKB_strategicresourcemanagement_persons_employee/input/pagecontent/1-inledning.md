# 1 Inledning

Källa: *Tjänstekontraktsbeskrivning strategicresourcemanagement: persons: employee*, tagg 2.0_RC1 (2016-11-22), [TKB_strategicresourcemanagement_persons_employee.docx](TKB_strategicresourcemanagement_persons_employee.docx).

> **Utgången domän.** Domänen kom aldrig längre än 2.0_RC1. I september 2017 flyttades tjänstekontrakten till infrastructure.directory.employee, som har en egen IG, och domänens repo är sedan dess tomt. IG:n dokumenterar RC-versionen.

### Dokumentinformation

| Dokument | Tjänstekontraktsbeskrivning strategicresourcemanagement: persons: employee |
| :--- | :--- |
| Svenskt namn | infrastruktur: katalogtjänster: medarbetare |
| Version | 2.0_RC1 (tagg i källan; dokumentets versionsfält är tomma) |
| Senaste revision | 1.1.1RC1, 2016-04-11 |

#### Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
|  | PA1 | 2013-10-30 | Första version, kopierad från tidigare arkitekturella beslut för infrastructure:directory:organization innan uppdelningen i flera domäner | Henrika Littorin |  |
|  | PA2 | 2014-01-23 | Ändrat format för specialityCode och specialityName / Domännamn ändrat i enlighet med beslut från A&R från infrastructure:directory:person till infrastructure:directory:employee | Robert Lundmark |  |
|  | PA3 | 2014-01-29 | Lagt till attribut Befattning kod och namn till GetPerson-metoderna efter krav från tjänsten Plattform för internetbaserat stöd och behandling samt kompletterat med ytterligare felfall. | Robert Lundmark |  |
| 1.0_RC2 |  | 2014-03-18 | Justeringar enligt avstämning med Ineras IT-arkitekt och A&R VI samt efter intern genomgång: / Infört två alternativ för hantering av flera anslutna tjänsteproducenter (katalogtjänster) med beskrivning av fördelar för respektive alternativ / Justering av hänvisning till arkitekturella beslut (nu gemensamma för tre domäner), borttag av referenser till borttagna AB:n samt justering av numrering av övriga AB:n / Justerat skrivning om styrning av åtkomst / Borttag av några exempel på krav som kan ställas på tjänstekonsument / Borttag av referens till HSA-policyn för krav på producent / Borttag av SLA-krav på antal avbrott och längd på avbrott / Omskrivning/förtydligande av avsnitt 3.1 / Namnändring av kontrakten i analogi med namnändring av domänen (GetEmployee istället för GetPerson) | Henrika Littorin, Ronny Nilsson |  |
| 1.0.0.RC_03 |  | 2014-07-22 | Justeringar enligt granskningsprotokoll VIS samt T / Svenskt namn på domänen / Överflytt av beskrivning av alternativ för aggregering/engagemangsindex till AB / Överfört till ny mall | Henrika Littorin |  |
| 1.0_RC4 |  | 2014-09-05 | Återgått till gammal benämning av versioner enligt besked från Leo Röjerås / Tillägg av nytt avsnitt ”Svenskt namn” samt justering under rubriken WEB beskrivning enligt ny mall för TKB | Henrika Littorin, Inera AB |  |
| 1.1_RC1 |  | 2015-01-13 / 2015-01-23 / 2015-01-27 | Tillägg av nya tjänstekontrakt GetCommissionMembersIncludingProtectedPerson och GetCommissionMembers / Godkänd av kravställare Intygstjänster / Uppdaterat webbtext efter förhandsgranskning VI / Uppdaterat utifrån mina kommentarer | Henrika Littorin, Inera AB / Ronny Nilsson, Inera AB |  |
| 1.0.1_RC1 |  | 2015-03-17 | Ändrat till version 1.0.1 för att överensstämma med de gemensamma riktlinjerna / Lagt till felfall för felaktigt HSA-id i OrganizationalArea i commissionRights / Tagit bort RC-nummer för tjänstekontrakt | Robert Lundmark, Cybercom AB |  |
| 1.1_RC1 |  | 2015-06-10 | Lagt till stöd för fingerade objekt i alla metoder / Uppdaterat referens till HSA-schemat samt kompletterat inbäddat schema för tjänstedomänerna | Robert Lundmark Cybercom AB, Henrika Littorin, Inera AB |  |
| 1.1.1RC1 |  | 2016-04-11 | Lagt till varning om både personnummer och hsaIdentity anges vid anrop för GetEmployee / Förtydligat hur argumentet searchBase används i metodanropen. | Robert Lundmark Cybercom AB |  |
|  |  |  |  |  |  |

#### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – | Version 1.1_RC1, 2015-01-13 |  |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Råd Utlämnande av information från HSA | Version 1., | www.inera.se/hsa, under Dokument och Stödjande |
| R4 | Tillitsramverk: HSA-policy | Version 3.6, | www.inera.se/hsa, under Dokument och Avtal |
| R5 | RIV Informationsspecifikation HSA Struktur och innehåll | Version 4., | www.inera.se/hsa, under Dokument och Styrande |
| R6 | Behörighetsmodell för hälso- och sjukvården | Version 1.0, 2011-12-09 | www.inera.se/hsa, under Behörighetsmodell |

#### Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |

#### Kompletterande dokument i källan

| Dokument | Fil |
|---|---|
| Arkitekturella beslut (referens R1) | [AB_strategicresourcemanagement_persons_employee.docx](AB_strategicresourcemanagement_persons_employee.docx) |

Källan innehåller även en temporär Word-fil (`docs/~$B_infrastructure_directory_employee.docx`), som inte publiceras.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen .

Den svenska benämningen är .

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

infrastruktur:katalogtjänster:medarbetare

medarbetare

### 1.2 WEB beskrivning

Syftet med tjänstedomänen är att förse övriga e-tjänster med kvalitetssäkrade och aktuella personuppgifter om personer som är anställda inom, eller arbetar på uppdrag av, organisationer inom vård och omsorg.

Tjänstekontrakten inom domänen används främst för att göra sökningar efter kontaktinformation och andra egenskaper för personer verksamma inom vård och omsorg. Tjänstekontrakten möjliggör också att e-tjänster kan lista tillgängliga medarbetare inom en specifik vårdenhet.
