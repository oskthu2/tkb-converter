# 1 Inledning - strategicresourcemanagement: organizational: organization v2.0.0-rc1

* [**Table of Contents**](toc.md)
* **1 Inledning**

## 1 Inledning

# 1 Inledning

Källa: **Tjänstekontraktsbeskrivning strategicresourcemanagement: organizational: organization**, commit b349285d18c2 (2017-02-27, efter taggen 2.0_RC1), [TKB_strategicresourcemanagement_organizational_organization.docx](TKB_strategicresourcemanagement_organizational_organization.docx).

> **Utgången domän.** Domänen kom aldrig längre än 2.0_RC1. I september 2017 flyttades tjänstekontrakten till infrastructure.directory.organization, som har en egen IG, och domänens repo är sedan dess tomt. IG:n dokumenterar den sista versionen med innehåll.

### Dokumentinformation

| | |
| :--- | :--- |
| Svenskt namn | infrastruktur: katalogtjänster: organisation |
| Version | 2.0_RC1 (tagg i källan; dokumentets versionsfält är tomma). IG:n bygger på senaste commit med innehåll, b349285d18c2 (2017-02-27) |
| Senaste revision | 1.3_RC1, 2016-04-11 |

#### Revisionshistorik

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
|   | PA1 | 2013-05-22 – 2013-07-19 | Första version | Ronny Nilsson, Henrika Littorin, Björn Skeppner |   |
|   | PA2 | 2013-09-06 | Uppdaterat efter synpunkter från Arkitektur och Regelverk / Skapat bilaga Arkitekturella beslut och lyft ut relevanta delar i skrivningar och kommentarer till detta dokument / Förbättringsförslag för mallen utlyfta till separat mail / Två mindre språkliga korrigeringar / Tydliggjort skrivning om informationsägarskap samt hänvisningen till R4 | Henrika Littorin |   |
|   | PA3 | 2013-10-03 – 2013-10-30 | Uppdaterat efter synpunkter från Arkitektur & Regelverk / Justering av SLA-nivåer / Anrop med felaktiga svar ska ge svar med felinformation / Förtydligande av att referenser till HSA är exempel där så är tillämpligt / Uppdaterat referenser till befintliga och nya arkitekturella beslut. / Byte av namn från organisation till organization / Förberedelse för delning i tre domäner | Ronny Nilsson, Henrika Littorin |   |
|   | PA4 | 2013-10-30 | Delad och rensad från information som enbart berör tjänstedomänerna employee och authorizationmanagement | Henrika Littorin |   |
|   | PA5 | 2014-01-29 | Borttag av attributet Fakturaadress / Förändrad funktionalitet i tjänstekontraktet GetHealthCareUnit / Tillägg av namn på enhet, vårdenhet och vårdgivare / Tillägg av HSA-id samt start- och slutdatum för vårdenhet / Tillägg av organisationsnummer för vårdgivare / Funktionsändring så att kontraktet ger svar även om HSA-id i frågan motsvarar en vårdenhet och att svaret då returneras med en flagga som informerar om att enheten är en vårdenhet / Tillägg av ytterligare felfall | Robert Lundmark |   |
| 1.0_RC2 |   | 2014-03-18 | Justeringar enligt avstämning med Ineras IT-arkitekt och A&R I samt efter intern genomgång: / Infört två alternativ för hantering av flera anslutna tjänsteproducenter (katalogtjänster) med beskrivning av fördelar för respektive alternativ / Justering av hänvisning till arkitekturella beslut (nu gemensamma för tre domäner), borttag av referenser till borttagna AB:n samt justering av numrering av övriga AB:n / Justerat skrivning om styrning av åtkomst / Borttag av några exempel på krav som kan ställas på tjänstekonsument / Borttag av referens till HSA-policyn för krav på producent / Borttag av SLA-krav på antal avbrott och längd på avbrott | Henrika Littorin, Ronny Nilsson |   |
| 1.0.0.RC_03 |   | 2014-07-22 | Justeringar enligt granskningsprotokoll VIS samt T / Benämning av domänen på förstasidan samt svenskt namn på domänen / Överflytt av beskrivning av alternativ för aggregering/engagemangsindex till AB / Överfört till ny mall | Henrika Littorin |   |
| 1.0_RC4 |   | 2014-09-05 | Återgått till gammal benämning av versioner enligt besked från Leo Röjerås / Tillägg av nytt avsnitt ”Svenskt namn” samt justering under rubriken WEB beskrivning enligt ny mall för TKB | Henrika Littorin, Inera AB |   |
| 1.0_RC5 |   | 2014-10-22 | Korrigerat felkoder och varningar. | Robert Lundmark, Cybercom AB |   |
| 1.0.1_RC1 |   | 2015-02-24 | Ny metod getHealthCareUnitIncludingManager / Tagit bort RC-nummer för tjänstekontrakt / Förtydligat att getHealthCareUnit även gäller funktioner | Robert Lundmark, Cybercom AB |   |
| 1.1_RC1 |   | 2015-07-30 | Lagt till stöd för fingerade objekt i alla metoder / Nya felfall Vårdgivare finns inte i katalogen och Det går inte att hitta några vårdenheter under vårdgivaren / Uppdaterat referens till HSA-schemat samt kompletterat inbäddat schema för tjänstedomänerna | Robert Lundmark Cybercom AB, Henrika Littorin, Inera AB |   |
| 1.2_RC1 |   | 2015-10-14 | Lagt till stöd för arkiverade objekt i metoderna / getHealthCareUnit / getHealthCareUnitIncludingManager / getHealthCareUnitList / getHealthCareUnitMembers | Robert Lundmark Cybercom AB |   |
| 1.3_RC1 |   | 2016-04-11 | Ändrat kardinalitet för fälten healthCareUnitMemberHsaId och healthCareUnitMemberName till att inte längre vara obligatoriska. / Förtydligat hur argumentet searchBase används i metodanropen. | Robert Lundmar Cybercom AB |   |
|   |   |   |   |   |   |

#### Referenser

| | | | |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – :directory:organization | Version 1.0_RC4, 2014-09-05 | http://rivta.se/domains/_directory_organization.html |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Råd Utlämnande av information från HSA | Version 1., | www.inera.se/hsa, under Dokument och Stödjande |
| R4 | Tillitsramverk: HSA-policy | Version 3.6, | www.inera.se/hsa, under Dokument och Avtal |
| R5 | RIV Informationsspecifikation HSA Struktur och innehåll | Version 4., | www.inera.se/hsa, under Dokument och Styrande |
| R6 | Behörighetsmodell för hälso- och sjukvården | Version 1.0, 2011-12-09 | www.inera.se/hsa, under Behörighetsmodell |

#### Förkortningar

| | | |
| :--- | :--- | :--- |
|   |   |   |

#### Kompletterande dokument i källan

| | |
| :--- | :--- |
| Arkitekturella beslut (referens R1) | [AB_strategicresourcemanagement_organizational_organization.docx](AB_strategicresourcemanagement_organizational_organization.docx) |

Källan innehåller även en temporär Word-fil (`docs/~$B_infrastructure_directory_organization.docx`), SoapUI-testsviter och kodgenereringsfiler, som inte publiceras.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen .

Den svenska benämningen är .

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

infrastruktur:katalogtjänster:organisation

organisation

### 1.2 WEB beskrivning

Tjänstedomänens ändamål är att förse övriga tjänster med kvalitetssäkrade och aktuella organisations-, enhets- och funktionsuppgifter.

Användningsområden utgörs främst av

Publika vårdsökningar efter kontaktinformation till enheter verksamma inom vård och omsorg

Hämtning av information om vårdgivare och vårdenheter kopplade till Patientdatalagen, PDL

