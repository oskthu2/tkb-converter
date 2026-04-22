
|  | infrastructure:directory:authorizationmanagement / Tjänstekontraktsbeskrivning / Version 2.4.5 / ARK_0015 / 2025-04-30 |
| :--- | :--- |
Innehåll
1	Inledning	11
1.1	Svenskt namn	11
2	Versionsinformation	12
2.1	Version 2.4.4	12
2.1.1	Oförändrade tjänstekontrakt	12
2.1.2	Nya tjänstekontrakt	12
2.1.3	Förändrade tjänstekontrakt	12
2.1.4	Utgångna tjänstekontrakt	12
2.2	Version tidigare	13
3	Tjänstedomänens arkitektur	13
3.1	Flöden	13
3.1.1	Hämta information om en persons PDL-relaterade behörighetsegenskaper	13
3.1.2	Hämta information om en persons Administrativa behörighetsegenskaper	14
3.1.3	Hämta HOSP-uppgifter (GetHospLastUpdate och GetHospCredentialsForPerson)	14
3.1.4	Hantera personer som behöver få HOSP-uppgifter utlämnade	15
(HandleHospCertificationPerson…)	15
3.1.5	Obligatoriska kontrakt	16
3.2	Adressering	16
3.3	Aggregering och engagemangsindex	17
4	Tjänstedomänens krav och regler	17
4.1	Informationssäkerhet och juridik	18
4.2	Icke funktionella krav	18
4.2.1	SLA krav	18
4.3	Felhantering	18
4.3.1	Krav på en tjänsteproducent	19
4.3.2	Krav på en tjänstekonsument	20
5	Tjänstedomänens meddelandemodeller	20
5.1	V-MIM	20
5.2	Formatregler	20
5.2.1	RIV-specifikation	20
6	Tjänstekontrakt	21
6.1	GetCredentialsForPersonIncludingProtectedPerson	21
6.1.1	Version	21
6.1.2	Fältregler	21
6.1.3	Tjänstekontraktsspecifika krav och regler	25
6.1.4	SLA-krav	26
6.1.5	Logiska fel	26
6.1.6	Annan information om kontraktet	27
6.2	GetCredentialsForPerson	28
6.2.1	Version	28
6.2.2	Fältregler	28
6.3	GetAdminCredentialsForPersonIncludingProtectedPerson	29
6.3.1	Version	29
6.3.2	Fältregler	29
6.3.3	Tjänstekontraktsspecifika krav och regler	32
6.3.4	SLA-krav	32
6.3.5	Logiska fel	32
6.4	GetAdminCredentialsForPerson	34
6.4.1	Version	34
6.4.2	Fältregler	34
6.5	GetHospLastUpdate	35
6.5.1	Version	35
6.5.2	Fältregler	35
6.5.3	Tjänstekontraktsspecifika krav och regler	35
6.5.4	SLA-krav	35
6.5.5	Logiska fel	36
6.5.6	Annan information om kontraktet	36
6.6	GetHospCredentialsForPerson	37
6.6.1	Version	37
6.6.2	Fältregler	37
6.6.3	Tjänstekontraktsspecifika krav och regler	39
6.6.4	SLA-krav	39
6.6.5	Logiska fel	39
6.6.6	Annan information om kontraktet	39
6.7	HandleHospCertificationPerson	40
6.7.1	Version	40
6.7.2	Fältregler	40
6.7.3	Tjänstekontraktsspecifika krav och regler	40
6.7.4	SLA-krav	40
6.7.5	Logiska fel	41
6.7.6	Annan information om kontraktet	41
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Beskrivning av ändringar | Ändringar gjorda av | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
|  | PA1 | 2013-10-30 | Första version, kopierad från tidigare arkitekturella beslut för infrastructure:directory:organization innan uppdelningen i flera domäner | Första version, kopierad från tidigare arkitekturella beslut för infrastructure:directory:organization innan uppdelningen i flera domäner | Henrika Littorin | Henrika Littorin |  |
|  | PA2 | 2014-01-23 | Ändrat format för specialitycode och specialityName. Tagit bort kommentarer. | Ändrat format för specialitycode och specialityName. Tagit bort kommentarer. | Robert Lundmark | Robert Lundmark |  |
|  | PA3 | 2014-01-30 | Ändrat felkod och meddelanden | Ändrat felkod och meddelanden | Robert Lundmark | Robert Lundmark |  |
| 1.0_RC2 |  | 2014-03-18 | Justeringar enligt avstämning med Ineras IT-arkitekt och A&R I samt efter intern genomgång: / Infört två alternativ för hantering av flera anslutna tjänsteproducenter (katalogtjänster) med beskrivning av fördelar för respektive alternativ / Justering av hänvisning till arkitekturella beslut (nu gemensamma för tre domäner), borttag av referenser till borttagna AB:n samt justering av numrering av övriga AB:n / Justerat skrivning om styrning av åtkomst / Borttag av några exempel på krav som kan ställas på tjänstekonsument / Borttag av referens till HSA-policyn för krav på producent / Borttag av SLA-krav på antal avbrott och längd på avbrott | Justeringar enligt avstämning med Ineras IT-arkitekt och A&R I samt efter intern genomgång: / Infört två alternativ för hantering av flera anslutna tjänsteproducenter (katalogtjänster) med beskrivning av fördelar för respektive alternativ / Justering av hänvisning till arkitekturella beslut (nu gemensamma för tre domäner), borttag av referenser till borttagna AB:n samt justering av numrering av övriga AB:n / Justerat skrivning om styrning av åtkomst / Borttag av några exempel på krav som kan ställas på tjänstekonsument / Borttag av referens till HSA-policyn för krav på producent / Borttag av SLA-krav på antal avbrott och längd på avbrott | Henrika Littorin, Ronny Nilsson | Henrika Littorin, Ronny Nilsson |  |
| 1.0.0.RC_03 |  | 2014-07-22 | Justeringar enligt granskningsprotokoll VIS samt T / Svenskt namn på domänen / Överflytt av beskrivning av alternativ för aggregering/engagemangsindex till AB / Överfört till ny mall | Justeringar enligt granskningsprotokoll VIS samt T / Svenskt namn på domänen / Överflytt av beskrivning av alternativ för aggregering/engagemangsindex till AB / Överfört till ny mall | Henrika Littorin | Henrika Littorin |  |
| 1.0_RC4 |  | 2014-08-20 | Justerat namnet på tjänstedomänen till endast gemener enligt besked från Sonja Kantonen / Återgått till gammal benämning av versioner enligt besked från Leo Röjerås | Justerat namnet på tjänstedomänen till endast gemener enligt besked från Sonja Kantonen / Återgått till gammal benämning av versioner enligt besked från Leo Röjerås | Henrika Littorin | Henrika Littorin |  |
| 1.0_RC5 |  | 2014-09-05 | Tillägg av nytt avsnitt ”Svenskt namn” samt justering under rubriken WEB beskrivning enligt ny mall för TKB | Tillägg av nytt avsnitt ”Svenskt namn” samt justering under rubriken WEB beskrivning enligt ny mall för TKB | Henrika Littorin, Inera AB | Henrika Littorin, Inera AB |  |
| 1.0_RC6 |  | 2014-10-22 | Korrigerat felkoder och varningar. | Korrigerat felkoder och varningar. | Robert Lundmark, Cybercom AB | Robert Lundmark, Cybercom AB |  |
| 1.0.1_RC1 |  | 2015-04-14 | Lagt till felkod för GetCredentialsForPerson / Tagit bort RC-nummer för tjänstekontrakt | Lagt till felkod för GetCredentialsForPerson / Tagit bort RC-nummer för tjänstekontrakt | Robert Lundmark, Cybercom AB | Robert Lundmark, Cybercom AB |  |
| 1.1_RC1 |  | 2015-07-31 | Ändrat nonPublicTelephoneNumber till flervärdesattribut / Lagt till stöd för fingerade objekt i alla metoder / Uppdaterat referens till HSA-schemat samt kompletterat inbäddat schema för tjänstedomänerna | Ändrat nonPublicTelephoneNumber till flervärdesattribut / Lagt till stöd för fingerade objekt i alla metoder / Uppdaterat referens till HSA-schemat samt kompletterat inbäddat schema för tjänstedomänerna | Robert Lundmark Cybercom AB, Henrika Littorin, Inera AB | Robert Lundmark Cybercom AB, Henrika Littorin, Inera AB |  |
| 1.2_RC1 |  | 2016-04-11 | Tillägg av flaggor för arkiverade objekt för GetCredentialsForPerson metoderna / Lagt till varning om både personnummer och hsaIdentity anges vid anrop för GetCredentialsForPerson och GetPersonAuthorizedToSystem / Förtydligat hur argumentet searchBase används i metodanropen. | Tillägg av flaggor för arkiverade objekt för GetCredentialsForPerson metoderna / Lagt till varning om både personnummer och hsaIdentity anges vid anrop för GetCredentialsForPerson och GetPersonAuthorizedToSystem / Förtydligat hur argumentet searchBase används i metodanropen. | Robert Lundmark Cybercom AB | Robert Lundmark Cybercom AB |  |
| 2.0_RC1 |  | 2016-11-22 | Ändrat tilltalsnamn till icke-obligatorisk parameter / Justerat felhantering enligt avstämning med A&R / Justerat skrivning om adressering efter input från Tommy Carlsson. / Uppdaterat/förtydligat textuella beskrivningar av attributen organisationsnummer, HSA-id, och e-postadress i schemat utifrån förändringar i HSA-schema version 4.6.1 och 4.7. / Kompletterat Excel-schemat med beskrivning av tjänstekontraktsparametrar som inte tekniskt är attribut (healthCareUnitHsaId etc.) / Tydliggjort att endast värden i systemRole med angivet system-id returneras i svar från GetPersonAuthorizedToSystem / Ensat benämningar för arkiverade och fingerade objekt / Justerat referens till ”Råd utlämnande av information från HSA” samt justerat versioner för HSA-policy och HSA-schema. | Ändrat tilltalsnamn till icke-obligatorisk parameter / Justerat felhantering enligt avstämning med A&R / Justerat skrivning om adressering efter input från Tommy Carlsson. / Uppdaterat/förtydligat textuella beskrivningar av attributen organisationsnummer, HSA-id, och e-postadress i schemat utifrån förändringar i HSA-schema version 4.6.1 och 4.7. / Kompletterat Excel-schemat med beskrivning av tjänstekontraktsparametrar som inte tekniskt är attribut (healthCareUnitHsaId etc.) / Tydliggjort att endast värden i systemRole med angivet system-id returneras i svar från GetPersonAuthorizedToSystem / Ensat benämningar för arkiverade och fingerade objekt / Justerat referens till ”Råd utlämnande av information från HSA” samt justerat versioner för HSA-policy och HSA-schema. | Henrika Littorin, Inera AB / Ronny Nilsson, Inera AB / Robert Lundmark, Inera AB | Henrika Littorin, Inera AB / Ronny Nilsson, Inera AB / Robert Lundmark, Inera AB |  |
| 2.0_RC2 |  | 2017-07-07 | Uppdaterat efter granskningskommentarer: / Flödesschemana ersatta av Sekvensdiagram / Referenser till nya Informations specifikationen, även införda per attribut i anrop och svar – därmed har exceldokumenten också kunnat tas bort. / Kapitlet om informationssäkerhet ersatt med ref till Informationsspecifikationen / Nytt krav vid bulk-uppdatering infört | Uppdaterat efter granskningskommentarer: / Flödesschemana ersatta av Sekvensdiagram / Referenser till nya Informations specifikationen, även införda per attribut i anrop och svar – därmed har exceldokumenten också kunnat tas bort. / Kapitlet om informationssäkerhet ersatt med ref till Informationsspecifikationen / Nytt krav vid bulk-uppdatering infört | Ronny Nilsson, Inera AB | Ronny Nilsson, Inera AB |  |
| 2.0_RC3 |  | 2017-08-24 | Bytt tillbaka till tidigare domännamn enligt beslut i A&R / Justerat länkar efter ny Inera-webb / Tagit bort referens till AB som beskrivit undantag från kravet att mappa mot nationellt fackspråk då detta är gjort i den senaste informationsspecifikationen | Bytt tillbaka till tidigare domännamn enligt beslut i A&R / Justerat länkar efter ny Inera-webb / Tagit bort referens till AB som beskrivit undantag från kravet att mappa mot nationellt fackspråk då detta är gjort i den senaste informationsspecifikationen | Henrika Littorin, Inera AB | Henrika Littorin, Inera AB |  |
| 2.0 |  | 2017-11-30 | Godkänd av Inera A&R |  |  |  |  |
| 2.1_RC1 | PA1 | 2018-02-10 | Tillägg av kontrakten GetAdminCredentialsForPerson och GetAdminCredentialsForPersonIncludingProtectedperson, / samt ändring av kontrakten 
GetPersonAuthorizedToSystemIncludingProtectedPerson och / GetPersonAuthorizedToSystem
m a p m a p attributet leg.yrkesgrupp och specialitet för läkare och tandläkare, avvikande telefontider, sms-telefonnummer och språkkod | Ronny Nilsson, Inera AB | Ronny Nilsson, Inera AB |  |  |
| 2.1_RC1 | PA2 | 2018-02-27 | Ändring av versionsnummer att överensstämma med RivTa | Robert Lundmark, Cybercom AB | Robert Lundmark, Cybercom AB |  |  |
| 2.1_RC1 | PA3 | 2018-03-06 | Uppdatering utifrån intern granskning | Ronny Nilsson, Inera AB | Ronny Nilsson, Inera AB |  |  |
| Förslag till ny version | PA1 | 2018-02-10 | Tillägg av ny profil för Sambi-anslutna IdP:er samt nya attribut kopplade till denna: personalIdentityNumber,  healthcareProfessionalLicenseIdentityNumber samt occupationalCode. Avser kontrakten GetCredentialsForPerson och GetCredentialsForPersonIncludingProtectedPerson. | Ronny Nilsson, Inera AB | Ronny Nilsson, Inera AB |  |  |
| Förslag till ny version | PA2 | 2018-03-06 | Uppdatering efter intern granskning | Ronny Nilsson, Inera AB | Ronny Nilsson, Inera AB |  |  |
| Förslag till ny version | PA3 | 2018-03-22 | Uppdatering efter granskningskommentarer | Ronny Nilsson, Inera AB | Ronny Nilsson, Inera AB |  |  |
| Förslag till ny version | PA4 | 2018-03-23 | Stämt av och arbetat in förslag och synpunkter från Per Mützell | Ronny Nilsson, Inera AB | Ronny Nilsson, Inera AB |  |  |
| 2.1.1_RC1 | PA5 | 2018-03-26 | Korrigerat tjänstekontraktsversion efter avstämning med Björn Hedman | Ronny Nilsson, Inera AB | Ronny Nilsson, Inera AB |  |  |
| 2.1.1_RC1 | PA6 | 2018-03-26 | Korrigerat version i 6.1 och 6.2 | Ronny Nilsson, Inera AB | Ronny Nilsson, Inera AB |  |  |
| 2.1.1_RC1 | PA7 | 2018-03-27 | Korrigera nivå på attribut i 6.5, tagit bort specialitySystem och korrigera beskrivning av logiska fel under 4.3.1.1 och resp tjänstekontrakt. | Ronny Nilsson, Inera AB | Ronny Nilsson, Inera AB |  |  |
| 2.1.1_RC2 | PA8 | 2018-05-02 | Ändra kardinalitet för adminCommission för GetAdminCommission… metoderna | Robert Lundmark, / Cybercom AB | Robert Lundmark, / Cybercom AB |  |  |
| 2.1.1 |  | 2018-05-28 | Ändra attribut som endast returneras när profile=extended1 för GetCredentialsForPerson | Robert Lundmark, Cybercom AB | Robert Lundmark, Cybercom AB |  |  |
| 2.2_RC1 |  | 2019-06-10 | Lagt till attribut pharmacyIdentifier för GetCredentialsForPerson | Robert Lundmark, Cybercom AB | Robert Lundmark, Cybercom AB |  |  |
| 2.2 |  | 2019-07-02 | Release av version 2.2 | Robert Lundmark, Cybercom AB | Robert Lundmark, Cybercom AB |  |  |
| 2.2.1_RC1 | PA1 | 2019-06-18 | Lagt till nya kontrakt för / HandleHospCertificationPerson / GetHospLastUpdate / GetHospCredentialsForPerson | Ronny Nilsson, Inera AB | Ronny Nilsson, Inera AB |  |  |
| 2.3_RC1 | PA1 | 2019-11-29 | Korrigerat versionsnumret för domän | Robert Lundmark, Cybercom AB | Robert Lundmark, Cybercom AB |  |  |
| 2.3_RC2 | PA1 | 2019-12-12 | Bytt versionsnummer på domänschema från 2.1.1 till 2.2 | Robert Lundmark, Cybercom AB | Robert Lundmark, Cybercom AB |  |  |
| 2.3 |  | 2019-12-18 | Release av version 2.3 | Robert Lundmark, Cybercom AB | Robert Lundmark, Cybercom AB |  |  |
| 2.4_RC1 |  | 2021-02-05 | Korrigering av felaktigheter i core schemat som funnits i version 2.2 och 2.3 av domänen. | Robert Lundmark, Cybercom AB | Robert Lundmark, Cybercom AB |  |  |
| 2.4 |  | 2021-03-10 | Release av version 2.4 | Robert Lundmark, Cybercom AB | Robert Lundmark, Cybercom AB |  |  |
| 2.4.1_arbetsversion |  | 2021-04-01 | Anpassning av nomenklaturen efter Behörighetsmodell för vård och omsorg | Annika Asp, Inera AB / Robert Lundmark, Cybercom AB | Annika Asp, Inera AB / Robert Lundmark, Cybercom AB |  |  |
| 2.4.1_PA1 |  | 2021-09-09 | Översyn och korrigering av referenser samt beskrivningar i avsnitten 3, 4 och 5. Justerat sidhuvud och sidfot enligt Ineras nu gällande dokumentmall. | Ronny Nilsson, Henrika Littorin, Inera AB | Ronny Nilsson, Henrika Littorin, Inera AB |  |  |
| 2.4.1_RC1 |  | 2022-01-12 | Justerat två felaktigt versionsnumrerade kontrakt. / Klar för formell granskning, godkänd i informell granskning (TFF- 821524). | Henrika Littorin, Inera AB | Henrika Littorin, Inera AB |  |  |
| 2.4.1 |  | 2022-01-28 | Godkänd granskning (VG-TFF-860524) | Robert Lundmark, Knowit | Robert Lundmark, Knowit |  |  |
| 2.4.2_RC1 |  | 2022-08-24 | Uppdaterat TKB med nya specialistkoder

Borttag av inaktuella tjänstekontrakt GetPersonAuthorizedToSystem och GetPersonAuthorizedToSystemIncludingProtectedPerson | Robert Lundmark, Knowit | Robert Lundmark, Knowit |  |  |
| 2.4.2 |  | 2022-11-14 | Godkänd granskning (TFF- 917444). | Robert Lundmark, Knowit | Robert Lundmark, Knowit |  |  |
| 2.4.3_RC1 |  | 2023-03-13 | Justerat benämningen administrativt uppdrag  administrativt medarbetaruppdrag. | Henrika Littorin, Inera AB | Henrika Littorin, Inera AB |  |  |
| 2.4.3 |  | 2023-05-11 | Godkänd granskning (VG-TFF-982284 | Robert Lundmark, Knowit | Robert Lundmark, Knowit |  |  |
| 2.4.4 |  | 2024-02-29 | Inga dokumentändringar | Robert Lundmark, Knowit | Robert Lundmark, Knowit |  |  |
| 2.4.5_RC1 |  | 2025-03-13 | Förtydligat vilka objekttyper som kan levereras i hsaAdminCommissionSector. / Ändrat benämning från HSA-policy till HSA Tillitsramverk samt från HPT/HSA-policytillämpning till HSA Tillitsdeklaration. / Tagit bort versionsangivelser för refererade dokument. / Mindre språkliga justeringar. |  |  |  |  |
| 2.4.5 |  | 2025-04-30 | Godkänd kvalitetssäkring | Henrika Littorin, Inera AB | Henrika Littorin, Inera AB |  |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Infrastructure:directory:authorizationmanagement |  | https://rivta.se/tkview/#/domain/infrastructure:directory:authorizationmanagement |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Inera A&R Råd Utlämnande av information från HSA |  | www.inera.se/hsa/dokument, under länken Stödjande dokument |
| R4 | HSA Tillitsramverk |  | www.inera.se/hsa/dokument, under länken Styrande dokument |
| R5 | Informationsspecifikation för Katalogtjänst HSA |  | www.inera.se/hsa/dokument, under länken Styrande dokument |
| R6 | Behörighetsmodell för hälso- och sjukvården |  | www.inera.se/hsa/dokument, under länken Stödjande dokument |
| R7 | Socialstyrelsens Kodverk för yrkes- och specialistkoder | Utgörs av flera dokument | https://www.socialstyrelsen.se/ |
| R8 | Sambi attributspecifikation |  | https://www.sambi.se/ |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
Infrastructure: Directory: Authorizationmanagement
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Infrastruktur Katalogtjänster Behörighetshantering
Behörighetshantering

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen Infrastructure: Directory: Authorizationmanagement. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.4.4

#### Oförändrade tjänstekontrakt
Följande tjänstekontrakt är oförändrade:
GetPersonAuthorizedToSystemIncludingProtectedPerson
GetPersonAuthorizedToSystem
GetAdminCredentialsForPersonIncludingProtectedPerson
GetAdminCredentialsForPerson
GetCredentialsForPersonIncludingProtectedPerson
GetCredentialsForPerson
HandleHospCertificationPerson
GetHospLastUpdate
GetHospCredentialsForPerson

#### Nya tjänstekontrakt
-

#### Förändrade tjänstekontrakt
-
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |

#### Utgångna tjänstekontrakt
Följande tjänstekontrakt har utgått.
GetPersonAuthorizedToSystemIncludingProtectedPerson
GetPersonAuthorizedToSystem

### Version tidigare
Struktur enligt ovan

## Tjänstedomänens arkitektur
Tjänstekontrakten som beskrivs i detta dokument används för att hämta behörighetsegenskaper för en person som är anställd inom eller arbetar på uppdrag av en organisation verksam inom svensk vård och omsorg.
Anropen kan till exempel användas av en IdP (Identity Provider) för att förse de tjänster som en användare önskar använda med behörighetsgrundande information om användaren.

### Flöden

#### Hämta information om en persons PDL-relaterade behörighetsegenskaper
Flödet för en typisk användning är normalt att en tjänstekonsument hämtar en persons behörighetsegenskaper via en virtuell tjänst som i sin tur anropar tjänsteproducenten samt returnerar svaret från producenten tillbaka till den anropande konsumenten.  Se Sekvensdiagram nedan.

##### Arbetsflöde 1
Se Sekvensdiagram nedan.

##### Sekvensdiagram

![img_003.png](images/img_003.png)

#### Hämta information om en persons Administrativa behörighetsegenskaper
Flödet för en typisk användning är normalt att en tjänstekonsument hämtar en persons behörighetsegenskaper via en virtuell tjänst som i sin tur anropar tjänsteproducenten samt returnerar svaret från producenten tillbaka till den anropande konsumenten.  Se Sekvensdiagram nedan.

##### Arbetsflöde 3
Se Sekvensdiagram nedan.

##### Sekvensdiagram

![img_002.png](images/img_002.png)

#### Hämta HOSP-uppgifter (GetHospLastUpdate och GetHospCredentialsForPerson)
HOSP-information – det vill säga uppgifter om t.ex. legitimerad yrkesgrupp, specialistkompetens, förskrivarkod och förskrivningsrätt – hämtas till HSA från Socialstyrelsens HOSP-register och lagras i en separat och dold struktur i HSA. Därifrån kan dessa hämtas för att uppdatera en lokal HSA-katalog med aktuella HOSP-uppgifter för en eller för samtliga medarbetare.
Flödet för en typisk användning är att en tjänstekonsument först med anrop till GetHospLastUpdate kontrollerar om nytt utlämnande från Socialstyrelsen gjorts sedan konsumentens tidigare körning. Om nytt utlämnande tillgängliggjorts hämtar konsumenten HOSP-uppgifterna person för person för de personer som tjänsten behöver kontrollera.
Anrop för att kontrollera senaste tid för tillgängliggörande av nytt utlämnande med anrop till GetHospLastUpdate, samt anrop för att hämta en persons HOSP-uppgifter med anrop till GetHospCredentialsForPerson, görs normalt via en virtuell tjänst som i sin tur anropar tjänsteproducenten samt returnerar svaret från producenten tillbaka till den anropande konsumenten.  Se Sekvensdiagram nedan.

##### Arbetsflöde 4
Se Sekvensdiagram nedan.

##### Sekvensdiagram

![img_001.png](images/img_001.png)

#### Hantera personer som behöver få HOSP-uppgifter utlämnade

#### (HandleHospCertificationPerson…)
Katalogtjänsten kan begära utlämnande av HOSP-uppgifter för de personer som finns representerade med personpost i Katalogtjänsten från Socialstyrelsen. För en person som inte redan finns representerad i Katalogtjänsten kan tjänstekonsumenten med HandleHospCertificationPerson lägga till personen i Katalogtjänsten så Katalogtjänsten begär utlämnande av HOSP-uppgifter även för en sådan person. HOSP-uppgifter för personen kan sedan efter nästa begäran/utlämnande hämtas med GetHospCredentialsForPerson enligt ovan. Principen tillämpas parallellt med normal användarhantering i en tjänst som även tillhandahålls till personer som av olika anledningar inte kan registreras i Katalogtjänsten, t.ex. fritidsförskrivare.
Flödet för en typisk användning är normalt att en tjänstekonsument hämtar en persons HOSP-uppgifter via en virtuell tjänst som i sin tur anropar tjänsteproducenten samt returnerar svaret från producenten tillbaka till den anropande konsumenten.  Se Sekvensdiagram nedan.

##### Arbetsflöde 5
Se Sekvensdiagram nedan.

##### Sekvensdiagram

![img_004.png](images/img_004.png)

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde 1 | Flöde 2 | Flöde 3 | Flöde 4 | Flöde 5 |
| :--- | :--- | :--- | :--- | :--- | :--- |
| GetCredentialsForPersonIncludingProtectedPerson (se avsnitt 6.1) | X |  |  |  |  |
| GetCredentialsForPerson (se avsnitt 6.2) | X |  |  |  |  |
| GetPersonAuthorizedToSystemIncludingProtectedPerson (se avsnitt Error! Reference source not found.) |  | X |  |  |  |
| GetPersonAuthorizedToSystem (se avsnitt Error! Reference source not found.) |  | X |  |  |  |
| GetAdminCredentialsForPersonIncludingProtectedPerson (se avsnitt 6.5) |  |  | X |  |  |
| GetAdminCredentialsForPerson (se avsnitt 6.6) |  |  | X |  |  |
| GetHospLastUpdate (se avsnitt 6.5) |  |  |  | X |  |
| GetHospCredentialsForPerson (se avsnitt 6.6) |  |  |  | X |  |
| HandleHospCertificationPerson (se avsnitt 6.7) |  |  |  |  | X |

### Adressering
Tjänstedomänen tillämpar verksamhetsbaserad adressering. Som logisk adress används Inera AB:s HSA-id för Katalogtjänst HSA.

### Aggregering och engagemangsindex
För närvarande är aggregering eller engagemangsindex ej aktuellt, då endast en tjänsteproducent är ansluten till tjänstedomänen.
I samband med att fler tjänsteproducenter ansluter till tjänstedomänen behöver sökningen från anropande tjänstekonsument realiseras mot flera tjänsteproducenter. Vilken alternativ lösning som ska tillämpas när denna situation uppstår är ännu inte beslutat, se AB-2.3 [R1].

## Tjänstedomänens krav och regler
Följande krav skall beaktas då ett system agerar som en tjänstekonsument för tjänstedomänens ingående tjänster.
Autentisering av tjänstekonsument ska alltid ske med SITHS Funktionscertifikat.
Tjänstekonsumenten ansvarar för att ha en kontinuitetsplan för det fall att tjänsteproducentens tjänst inte skulle vara tillgänglig.
Tjänstekonsumenten skall redovisa sin belastning på tjänstedomänen (antalet anrop) till såväl tjänstedomänansvarig som till ansvarig för den/de tjänsteproducenter som tjänstekonsumenten anropar. Eventuella väsentliga ändringar av belastning ska kommuniceras i god tid före effektuering så att tillgänglighet och prestanda kan upprätthållas över tid.
Tjänstekonsumenten skall följa vid var tid gällande villkor för den/de tjänsteproducenter från vilka tjänstekonsumenten hämtar information. Ett exempel på sådana villkor är HSA Tillitsramverk [R4], där informationsägarna bland annat ställer krav på
att all användning av informationen erhållen från tjänsteproducenten ska beskrivas i godkänd HSA Tillitsdeklaration Konsument (alternativt i godkänd HSA Tillitsdeklaration Producent om det handlar om en lokal tjänst).
att tillämpliga lagar och regelverk, t.ex. Dataskyddsförordningen, GDPR, efterlev.s
att information som lagras i egen applikation ska skyddas på tillfredställande sätt.
att information som lagras i egen applikation ska hållas uppdaterad mot ursprungskällan.
att intern revision genomförs årligen för kontroll av efterlevnad till HSA Tillitsramverk.
Anslutna tjänsteproducenter kan ha egna processer för godkännande av tjänstekonsumenter som anropar tjänsteproducentens katalogtjänst.
OBS Vid anrop i syfte att uppdatera en lokal DB med aktuella uppgifter från producenten, så ska konsumenten bara använda 1 tråd, dvs göra ett anrop och sedan vänta på och ta emot svaret innan nästa anrop görs, och med en 50 mS paus mellan anropen. Detta för att kunna garantera svarstider för övriga användare.

### Informationssäkerhet och juridik
Se Informationsspecifikationen [R5].

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänstekontrakt inom domänen. Observera att för en konsument kan tillgängligheten bli något lägre utifrån t.ex. mellanliggande kommunikationsutrustning, kommunikationsnät och användning av regional tjänsteplattform.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid |  | Definieras per tjänstekontrakt i avsnitt 6. |
| Tillgänglighet | 24x7, 99,9% |  |
| Last |  | Definieras per tjänstekontrakt i avsnitt 6. |
| Aktualitet | 10 minuter | Vid uppdatering av information i katalogtjänsten får det maximalt ta så lång tid innan den informationen används av och returneras via tjänstekontrakten. |
| Återställningstid | 1 dygn | Vid katastrof som bortfall av driftshall |

### Felhantering
Vid ett tekniskt fel levereras normalt ett generellt undantag (SOAP-fault).
Exempel på tekniska fel vid anrop till någon av tjänstedomänens tjänstekontrakt där SOAP-fault returneras är:
Katalogen (eller ev. läskopia) är inte nåbar (ur funktion, överlastad, kommunikationsmässigt eller på annat sätt onåbar)
Katalogen returnerar att det blev ett internt fel vid sökningen
Grundläggande information i katalogen, t ex kodtabeller, innehåller felaktig information eller felaktigt strukturerad information.
Exempel på andra tekniska fel är:
Anslutande tjänst är inte behörig att anropa det aktuella tjänstekontraktet. För denna typ av fel returneras ”http Status 403 – Access is denied”.
Tjänstekontraktsprogramvaran har slutat fungera. För denna typ av fel returneras ”http Status 503 – Service Temporarily Unavailable”.
För fatala tekniska fel t ex server-fel, fel på kommunikationsutrustning, fel i webb-tjänst-systemprogramvaran, kan svar helt utebli, därför måste konsumenten ha hantering för uteblivet svar (time-out) för sådant fall.
Vid tekniska fel förmedlas inga kataloguppgifter till konsumenten.

#### Krav på en tjänsteproducent
Följande krav skall beaktas då ett system agerar som en tjänsteproducent för tjänstedomänens ingående tjänster.
Tjänsteproducenten ansvarar för
att tillhandahålla tjänsten i enlighet med denna tjänstekontraktsbeskrivning med avseende på
tjänstedomänens arkitektur (se avsnitt 3)
informationssäkerhet och juridik (se [R5])
felhantering (både tekniska och logiska fel som beskrivs i detta kapitel)
SLA:er (se avsnitt 4.2.1)
informationsinnehåll (specificeras för resp. tjänstekontrakt under avsnitt 6)
tjänstedomänens meddelandemodeller (se avsnitt 5)
att vid behov förmedla kontakt mellan tjänstekonsument och informationsägare, t.ex. i frågor som rör förändring av innehåll
att (vid behov genom kravställning på anslutna organisationer/informationsägare) tillse att
den information som tillhandahålls vid var tid är uppdaterad och korrekt
den information som tillhandahålls vid var tid i möjligaste mån är säkrad mot ursprungskällor
minst omfattar detta: kontroll av namnuppgifter mot Skatteverket samt kontroll av legitimerad yrkesgrupp mot Socialstyrelsens register minst en gång per månad
tillämpliga lagar och regelverk, t.ex. Dataskyddsförordningen, efterlevs
det finns ett dokumenterat regelverk för hur administratörsbehörigheter tilldelas och tas bort
uppgifter om koppling mellan HSA-id och individ arkiveras i enlighet med organisationens gallringsbeslut efter det att anställning upphört
uppgifter om koppling mellan HSA-id och organisation samt mellan HSA-id och vårdgivare/vårdenhet arkiveras efter det att verksamheten upphört
HSA-id behålls då en person byter person-identitet (t.ex. från samordningsnummer till personnummer)
att upprätthålla en organisation för administration samt för mottagande av driftstörningsinformation
att förändringar som görs i tjänsten loggas så att det går att spåra vem som gjort en förändring och när
att särskild hantering av personer med skyddade personuppgifter finns dokumenterad och tillämpas
att årligen genomföra intern revision för att säkerställa att tjänsteproducenten verkligen uppfyller samtliga krav beskrivna i denna tjänstekontraktsbeskrivning

##### Logiska fel
Logiskt fel, d.v.s. förutsättning för att kunna besvara anropet saknas, t ex för att visst nödvändigt objekt eller attributvärde saknas ska generellt hanteras enligt:
Objekt som saknar obligatoriska attribut eller där de obligatoriska attributen inte följer specificerad syntax ska inte returneras.
Andra attribut med värde som inte följer gällande syntax eller värdemängd returneras inte.
För mer specifik hantering hänvisas till avsnitt om logiska fel för respektive Tjänstekontrakt nedan.

#### Krav på en tjänstekonsument
Konsumenten behöver hantera de tekniska fel som kan uppstå, t ex uteblivet svar, se ovan.
Dessutom rekommenderas konsumenten ha egna kontroller av den information som returneras.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot Nationell Informationsstruktur 2016:1 samt mot schema (XSD) för tjänstekontrakt.

### V-MIM
För tjänstedomänen utnyttjas befintliga strukturer inom HSA för förvaltning och vidareutveckling av informations- och meddelandemodeller, se även AB-2.4 [R1]. Två gånger per år införs genomarbetade och beslutade ändringar i informationsmodellen enligt särskild process.
Nuvarande informationsmodell som också inkluderar mappning mot Nationell Informationsstruktur 2016:1 beskrivs i Informationsspecifikation för Katalogtjänst HSA [R5].

### Formatregler

#### RIV-specifikation
Formatregler för tjänstedomänen specificeras i Informationsspecifikation för Katalogtjänst HSA [R5], se även AB-2.6 [R1]. Ytterligare detaljer finns i även schemabeskrivningen för respektive tjänstekontrakt, se avsnitt 6.

## Tjänstekontrakt

### GetCredentialsForPersonIncludingProtectedPerson
GetCredentialsForPersonIncludingProtectedPerson används för att söka ut behörighetsgrundande egenskaper för angiven person. Informationen används som regel av e-tjänster (normalt via en IdP, Identity Provider) för att auktorisera användare mot den egna tjänstens regelverk för åtkomst till information/funktionalitet, normalt i enlighet med den nationella behörighetsmodellen [R6].
De behörighetsegenskaper som returneras är
De Vårdmedarbetaruppdrag som personen är knuten till inklusive information om vårdgivaren och vårdenheten, samt
Personliga egenskaper: Legitimerad yrkestitel, Förskrivarkod(-er), Befattning,
Individuell egenskap för it-tjänster, Personens specialistkoder kopplat till aktuell legitimerade yrkesgrupp samt Utökad yrkeskod.
Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.2 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### Version
Version på detta kontrakt är 2.2.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personHsaId *1) | String | Unik identifierare för den person vars behörighetsegenskaper ska sökas ut. / Ref. HSA-id (hsaIdentity) [R5] | 0..1 |
| personalIdentityNumber *1) | String | Person-id för den person vars behörighetsegenskaper ska sökas ut. 
Ref. person-id (personalIdentityNumber) [R5] | 0..1 |
| searchBase *4) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| profile | String | profile kan endast ha värdet ”extended1” och med detta värde satt returneras även personalIdentity, | 0..1 |
| Svar |  |  |  |
| credentialInformation *2) | CredentialInformationType | Behörighetsegenskaper för sökt person | 0..n |
| ..givenName | String | Tilltalsnamn. Endast ett litet antal personer saknar helt förnamn enligt befolkningsregistret och därmed även denna parameter. / Ref. tilltalsnamn (givenName, gn) [R5] | 0..1 |
| ..middleAndSurName | String | Personens Mellannamn och efternamn.  Namnen är separerade med mellanslag. / Ref. mellannamn (middleName) [R5] / Ref. efternamn (sn, surName) [R5] | 1..1 |
| ..personHsaId | String | Personens HSA-id / Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..healthCareProfessionalLicence | String | Personens Legitimerade yrkestitel(-lar) i klartext / Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 0..n |
| .. healthCareProfessionalLicenceCode | String | Kod för personens Legitimerade yrkestitel. / Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 0..n |
| .. healthCareProfessionalLicenceSpeciality | HCPSpecialityCodesType | Personens Specialistkoder kopplat till aktuell Legitimerade Yrkesgrupp. Ref. Leg. yrkesgrupp och specialitet för läkare och tandläkare (hsaSosTitleCodeSpeciality) [R5] | 0..n |
| .. .. healthCareProfessionalLicenceCode | String | Kod för den Legitimerade yrkestitel som specialistkoden hör till. Ref. Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 1..1 |
| .. ..specialityCode | String | Specialistkod, enligt något av Socialstyrelsens följande kodverk: 1.2.752.116.3.1.6 (Läkare 1992), 1.2.752.116.3.1.7 (Läkare 1996), 1.2.752.116.3.1.8 (Läkare 2008), 1.2.752.116.3.1.9 (Läkare 2015), 1.2.752.116.3.1.10 (Tandläkare 1993), 1.2.752.116.3.1.15 (temporär behörighet läkare och tandläkare 2016). / 1.2.752.116.3.1.17 (Tandläkare 2017)
1.2.752.116.3.1.20 (Läkare 2021) / Ref Socialstyrelsens kodverk [R7]. | 1..1 |
| .. ..specialityName | String | Specialitet i klartext. Klartext för specialityCode ovan. | 0..1 |
| ..occupationalCode | String | Utökad yrkeskod, används för icke-legitimerade medarbetares åtkomst till tjänster hos eHälsomyndigheten. / Ref. Utökad yrkeskod (occupationalCode) [5] och preliminärt kodverk enligt SAMBI attributspecifikation [8]: / - VT   Veterinär / - AL    AT-läkare / - TE    Apotekstekniker / - AE    Apotekarelev / - RE    Receptarieelev / - LF    Läkare med förordnande / - AD    Administratör av dospatientuppgifter | 0..n |
| ..personalIdentity *5) | IIType | Personens person- eller samordningsnummer / Ref. Person-id (personalIdentityNumber) [R5] | 0..1 |
| .. ..root | String | Anger typ av personalIdentity som returneras, för personnummer: 1.2.752.129.2.1.3.1, och för / samordningsnummer: 1.2.752.129.2.1.3.3 | 1..1 |
| .. ..extension | String | Person eller samordningsnummer. / Ref. Person-id (personalIdentityNumber) [R5] | 1..1 |
| .. healthcareProfessionalLicenseIdentityNumber | String | Personens Hosp-Id / Ref. HOSP-id (hospIdentityNumber) [R5] | 0..1 |
| ..personalPrescriptionCode | String | Personens förskrivarkod.
Ref förskrivarkod (personalPrescriptionCode) [R5] | 0..1 |
| ..groupPrescriptionCode | String | Gruppförskrivarkod (er) som personen tilldelats av sin arbetsgivare
Ref. gruppförskrivarkod (hsaGroupPrescriptionCode) [R5] | 0..n |
| ..nursePrescriptionRight | NursePrescriptionRightType | Förskrivningsrätt för barnmorska/sjuksköterska 
Ref. förskrivningsrätt för barnmorskor/ sjuksköterskor (hsaSosNursePrescriptionRight) [R5] | 0..n |
| .. ..healthCareProfessionalLicence | String | Personens Legitimerade yrkestitel inom vilken denne har förskrivningsrätt
BM för Barnmorska eller SJ för Sjuksköterska enligt Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 1..1 |
| .. ..prescriptionRight | Boolean | Personen har förskrivningsrätt inom den angivna Legitimerade yrkestiteln | 1..1 |
| ..hsaSystemRole | HsaSystemRoleType | Personens Individuella egenskaper för it-tjänster. 
Ref. individuell egenskap för it-tjänster (hsaSystemRole) [R5] | 0..n |
| .. ..systemId | String | IT-tjänstens SystemId | 1..1 |
| .. ..role | String | Personens Roll inom IT-tjänsten | 1..1 |
| ..paTitleCode | String | Personens Befattningskoder / Ref. befattningskod (paTitleCode) [R5] | 0..n |
| ..protectedPerson | Boolean | true: om person har skyddade personuppgifter / (om personen inte har skyddade personuppgifter kommer inget värde att returneras) / Ref. hjälpklassen Skyddad person (hsaConfidentialPerson) [R5] | 0..1 |
| ..feignedPerson | Boolean | true: om personen är ett fingerat objekt / Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |
| ..commission | CommissionType | De vårdmedarbetaruppdrag som personen är kopplad till | 0..n |
| .. ..commissionName | String | Vårdmedarbetaruppdragets Namn / Ref. objektnamn (cn) [R5] | 1..1 |
| .. ..commissionHsaId | String | Vårdmedarbetaruppdragets HSA-id / Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| .. ..commissionPurpose | String | Vårdmedarbetaruppdragets ändamål / Ref. vårdmedarbetaruppdragets ändamål (hsaCommissionPurpose) [R5] | 1..1 |
| .. ..commissionRight | CommissionRightType | Vårdmedarbetaruppdragets rättigheter / Ref. vårdmedarbetaruppdragets rättigheter (hsaCommissionRight) [R5] | 0..n |
| .. .. ..activity | String | Rättighet aktivitet | 1..1 |
| .. .. ..informationClass | String | Rättighet informationstyp | 1..1 |
| .. .. ..scope | String | Rättighet omfång | 1..1 |
| .. ..pharmacyIdentifier | String | Unikt id för apotek
Ref. (hsaGlnCode + hsaBusinessCode) [R5] | 0..1 |
| .. ..feignedCommission | Boolean | true: om vårdmedarbetaruppdraget är ett fingerat objekt / Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |
| .. ..healthCareUnitHsaId *3) | String | HSA-id för vårdenhet enligt PDL / Ref. HSA-id (hsaIdentity) [R5] | 0..1 |
| .. ..healthCareUnitName *3) | String | Vårdenhetens namn / Ref. hjälpklassen Vårdenhet (hsaHealthCareUnit) [R5] | 0..1 |
| .. ..healthCareUnitStartDate *3) | dateTime | Startdatum för vårdenhetens verksamhet / Ref. startdatum (startDate) [R5] | 0..1 |
| .. ..healthCareUnitEndDate *3) | dateTime | Slutdatum för vårdenhetens verksamhet / Ref. slutdatum (endDate) [R5] | 0..1 |
| .. ..feignedHealthCareUnit | Boolean | true: om vårdenheten är ett fingerat objekt / Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |
| .. ..archivedHealthCareUnit | Boolean | true: om vårdenheten är ett arkiverat objekt / Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5] | 0..1 |
| .. ..healthCareProviderHsaId | String | Vårdgivarens HSA-id / Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| .. ..healthCareProviderName | String | Vårdgivarens Namn 
Ref. hjälpklassen Vårdenhet (hsaHealthCareUnit) [R5] | 1..1 |
| .. ..healthCareProviderOrgNo | String | Vårdgivarens organisationsnummer / Ref. organisationsnummer (orgNo) [R5] | 1..1 |
| .. ..healthCareProviderStartDate | dateTime | Startdatum för vårdgivarens verksamhet / Ref. startdatum (startDate) [R5] | 0..1 |
| .. ..healthCareProviderEndDate | dateTime | Slutdatum för vårdgivarens verksamhet / Ref. slutdatum (endDate) [R5] | 0..1 |
| .. ..feignedHealthCareProvider | Boolean | true: om vårdgivaren är ett fingerat objekt / Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |
| .. ..archivedHealthCareProvider | Boolean | true: om vårdgivaren är ett arkiverat objekt / Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) personHsaId och personalIdentityNumber
Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
*2) credentialInformation
En person kan ha flera olika HSA-id om personen har lagts upp i olika organisationers grenar av katalogen.
Vid sökning med person-id så kommer i sådant fall en credentialInformation returneras per HSA-id (bl.a. eftersom kopplingen mellan personobjekt och vårdmedarbetaruppdrag görs via personens HSA-id).
*3) Vårdenhets- (healthCareUnit-) attribut
I det fall ett Vårdmedarbetaruppdrag ligger direkt under Vårdgivaren så returneras inga Vårdenhetsattribut, d.v.s. inga värden returneras för de attribut vars namn inleds med healthCareUnit.
*4) searchBase
För GetCredentialsForPersonIncludingProtectedPerson används följande sökningar/sökbaser:
- Sök efter person: i anropet angiven sökbas
- Sök efter vårdmedarbetaruppdrag: i anropet angiven sökbas
- Sök efter vårdenheter: utgår från DN för resp. vårdmedarbetaruppdrag, dvs ingen sökning
- Sök efter vårdgivare: här används sökbasen c=SE
*5) Attribut som returneras då inparametern ”profile” är satt till ”extended1” och om de finns definierade i personposten:
- personalIdentity, person- eller samordningsnummer

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Antal returnerade vårdmedarbetaruppdrag | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anropen ska ligga inom |
| :--- | :--- | :--- |
| Person med 0-1 vårdmedarbetaruppdrag | 10 anrop/s | 150 ms |
| Person med 2-9 vårdmedarbetaruppdrag | 5 anrop/s | 300 ms |
| Person med 10-199 vårdmedarbetaruppdrag | 1 anrop/s | 2000 ms |

#### Logiska fel
Logiska fel hanteras enligt:
Om angiven sökbas inte finns i katalogen, returneras ett tomt svar.
Om sökt person inte kan hittas i katalogen, så returneras tomt svar.
Saknar personobjektet obligatorisk uppgift om HSA-id eller Efternamn så returneras tomt svar.
Om både personHsaId och personIdentityNumber har angetts som sökparametrar, så är anropet felaktigt och ett soap-fault returneras.
Om någon obligatorisk uppgift gällande vårdmedarbetaruppdraget, vårdenheten eller vårdgivaren, så returneras inte commission-elementet. Dvs ingen information om det vårdmedarbetaruppdraget eller den vårdenhet eller den vårdgivare som vårdmedarbetaruppdraget hör till, returneras för personen om någon av följande obligatoriska uppgifter saknas eller inte följer specificerad syntax:
Vårdmedarbetaruppdragets HSA-id
Vårdmedarbetaruppdragets Ändamål
Vårdmedarbetaruppdragets Namn
Vårdenhetens HSA-Id (om inte uppdraget ligger direkt under en Vårdgivare)
Vårdenhetens Namn (om inte uppdraget ligger direkt under en Vårdgivare)
Vårdgivaren inte är korrekt utpekad från vårdenheten (om inte uppdraget ligger direkt under en Vårdgivare)
Vårdgivarens Namn
Vårdgivarens organisationsnummer
Vårdgivarens HSA-Id
För komplexa returvärden som inte följer specificerad syntax m a p sammansättningen, returneras inte det aktuella värdet. Detta gäller för:
-  hsaSystemRole som ska innehålla två delar (system-id och roll) separerade med ”;”.
- hsaCommissionRights som ska innehålla tre delar (aktivitet, informationstyp och omfång) separerade med ”;”.
- nursePrescriptionRight ska innehålla två delar (kod för legitimation och flagga för förskrivningsrätt) separerade med ”;”.
- healthCareProfessionalLicenceSpeciality, som ska innehålla tre delar (kod för legitimerad yrkestitel, kod för specialitet samt klartext för specialitet) separerade med ”;”.
för kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron vi tillhandahåller.

#### Annan information om kontraktet
-

### GetCredentialsForPerson
Metoden är identisk med GetCredentialsForPersonIncludingProtectedPerson, förutom att information om skyddade personer aldrig returneras.
Det innebär också att fältet protectedPerson aldrig kommer att returneras.
För beskrivning av metoden se kap 6.1 GetCredentialsForPersonIncludingProtectedPerson ovan.

#### Version
Version på detta kontrakt är 2.2.

#### Fältregler
Eftersom att skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.1.2 Fältregler) aldrig kommer att returneras.

### GetAdminCredentialsForPersonIncludingProtectedPerson
GetAdminCredentialsForPersonIncludingProtectedPerson används för att söka ut en persons administrativa behörighetsegenskaper inom ett visst Behörighetsområde, dvs de behörighetsområdesegenskaper med tillhörande enheter / grenar som de gäller för. Syftet är att leverera de behörighetsgrundande egenskaper som krävs för att en användare ska få rätt behörigheter i en tjänst. Anropet sker normalt från en IdP (Identity Provider).
De behörighetsegenskaper som returneras är
Personliga egenskaper: Namn och HSA-Id
Personens Administrativa behörighetsegenskaper och för vilket organisatoriskt omfång de gäller
Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.4 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### Version
Version på detta kontrakt är 2.0.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personHsaId *1) | String | Unik identifierare för den person vars behörighetsegenskaper ska sökas ut. / Ref. HSA-id (hsaIdentity) [R5] | 0..1 |
| personalIdentityNumber *1) | String | Person-id för den person vars behörighetsegenskaper ska sökas ut. 
Ref. person-id (personalIdentityNumber) [R5] | 0..1 |
| authorizationScopeCode | String | Behörighetsområdeskod som ska ingå i sökt Administrativt medarbetaruppdrag. Optional. Om ej angiven returneras information från personens alla administrativa medarbetaruppdrag.
Ref Behörighetsområdeskod (hsaDomainCode) [R5] | 0..1 |
| authorizationScopePropertyCode | String | Kod för behörighetsområdesegenskap som ska ingå i sökt Administrativt medarbetaruppdrag. Optional. Om ej angiven returneras information från personens alla administrativa medarbetaruppdrag.
Ref Kod för Behörighetsområdesegenskap (hsaDomainAreaCode) [R5] | 0..1 |
| searchBase *2) | DN | Sökbas för behörighetsegenskaper. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| adminCredentialInformation | AdminCredentialInformationType |  | 0..n |
| ..personHsaId | String | Personens HSA-id. 
Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..givenName | String | Personens tilltalsnamn, returneras om personen har ett förnamn. Ett litet antal personer saknar helt förnamn enligt befolkningsregistret och därmed även denna parameter. / Ref. tilltalsnamn (givenName, gn) [R5] | 0..1 |
| ..middleAndSurName | String | Personens mellannamn och efternamn.  Namnen är separerade med mellanslag. / Ref. mellannamn (middleName) [R5] / Ref. efternamn (sn, surName) [R5] | 1..1 |
| ..protectedPerson | Boolean | true: om person har skyddade personuppgifter / (om personen inte har skyddade personuppgifter kommer inget värde att returneras) / Ref. hjälpklassen Skyddad person (hsaConfidentialPerson) [R5] | 0..1 |
| ..feignedPerson | Boolean | true: om personen är ett fingerat objekt 
Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |
| ..authorizationScopeProperties | AuthorizationScopePropertyType | Administrativa behörighetsegenskaper för sökt person | 0..n |
| .. ..authorizationScopeCode | String | Behörighetsområdeskod, 
Ref Behörighetsområdeskod (hsaDomainCode) [R5] | 1..1 |
| .. ..authorizationScopeName | String | Behörighetsområdets namn, från behörighetsområdesobjektets namn. Ref Objektnamn (cn) [R5] | 1..1 |
| .. ..authorizationScopeDescription | String | Behörighetsområdets beskrivning. Ref Beskrivning (description) [R5] | 0..1 |
| .. ..authorizationScopePropertyCode | String | Behörighetsområdesegenskap. Består av behörighetsområdeskoden och en kod för behörighetsområdesegenskap. / Information från Administrativa medarbetaruppdrag som saknar angivelse av kod för behörighetsegenskap levereras inte alls.
Ref Kod för Behörighetsområdesegenskap (hsaDomainAreaCode) [R5] | 1..1 |
| .. ..authorizationScopePropertyName | String | Behörighetsområdesegenskapens namn, från behörighetsområdesegenskapsobjektets namn. Ref Objektnamn (cn) [R5] | 1..1 |
| .. ..authorizationScopePropertyDescription | String | Behörighetsområdesegenskapens beskrivning. Ref Beskrivning (description) [R5] | 0..1 |
| .. ..adminCommission | AdminCommissionType |  | 1..n |
| .. .. ..adminCommissionHsaId | String | HSA-id för det administrativa medarbetaruppdrag varifrån uppgifterna hämtats. Returneras främst för att få spårbarhet och underlätta hantering av supportärenden
Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| .. .. .. adminCommissionResponsibleOrganisation | String | Organisationsnummer för organisationen som ansvarar för det administrativa medarbetaruppdraget. | 1..1 |
| .. .. ..sector | SectorType | Organisationsomfång för behörighetsområdesegenskapen inom uppdraget. Utgörs av organisations- eller enhetsobjekt eller i ett fåtal fall av behörighetsområdesobjekt. / Ref Organisationsomfång (hsaAdminCommissionSector) [R5] | 0..n |
| .. .. .. ..unitHsaId | String | HSA-id för det objekt som pekas ut i organisationsomfånget.
Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| .. .. .. ..sectorFlag | Boolean | True innebär att objektets alla hierarkiskt underliggande objekt ingår, objektet representerar en hel organisationsgren
Ref Organisationsomfång (hsaAdminCommissionSector) [R5] | 0..1 |
| .. .. .. ..name | String | Namnet på det objekt som pekas ut i organisationsomfånget / Ref. organisationsnamn (o), enhetsnamn (ou) respektive objektnamn (cn) [R5] | 1..1 |
| .. .. .. ..feignedUnit | Boolean | True om det objekt som pekas ut i organisationsomfånget är ett fingerat objekt
Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |
| ..  .. ..feignedAdminCommission | Boolean | True om behörighetsområdesegenskapen kommer från ett fingerat administrativt medarbetaruppdrag.
Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) personHsaId och personalIdentityNumber
Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
*2) searchBase, sökbas som används vid sökning efter administrativa medarbetaruppdrag, enhet samt personens uppgifter.

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Antal returnerade administrativa behörighetsegenskaper | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anropen ska ligga inom |
| :--- | :--- | :--- |
| Person med 0-1 administrativa medarbetaruppdrag | 10 anrop/s | 150 ms |
| Person med 2-9 administrativa medarbetaruppdrag | 5 anrop/s | 300 ms |
| Person med 10-199 administrativa medarbetaruppdrag | 1 anrop/s | 2000 ms |

#### Logiska fel
Logiska fel hanteras enligt:
Om angiven sökbas inte finns i katalogen, returneras ett tomt svar.
Om sökt person inte kan hittas i katalogen, så returneras tomt svar.
Saknar personobjektet obligatorisk uppgift om HSA-id eller Efternamn så returneras tomt svar.
Om både personHsaId och personIdentityNumber har angetts som sökparametrar, så är anropet felaktigt och ett soap-fault returneras.
Om någon obligatorisk uppgift gällande ett administrativt medarbetaruppdrag saknas, så returneras inte authorizationScopeProperties-elementet. Dvs ingen information om det administrativa medarbetaruppdraget returneras för personen om någon av följande obligatoriska uppgifter saknas eller inte följer specificerad syntax:
Behörighetsområdeskod
Kod för behörighetsområdesegenskaps
Det administrativa medarbetaruppdragets HSA-id
För uppdraget ansvarig organisations organisationsnummer
Sektorinformation, ej obligatorisk, men måste följa gällande syntax, dvs
Objektets HSA-Id
Objektets Namn
Sektor-flagga
För kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron som planeras tillhandahållas.

### GetAdminCredentialsForPerson
Metoden är identisk med GetAdminCredentialsForPersonIncludingProtectedPerson, förutom att skyddade personer aldrig returneras. Det innebär också att fältet protectedPerson aldrig kommer att returneras.
För beskrivning av metoden se kap 6.3 GetAdminCredentialsForPersonIncludingProtectedPerson ovan.

#### Version
Version på detta kontrakt är 2.0.

#### Fältregler
Eftersom att skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.3.2 Fältregler) aldrig kommer att returneras.

### GetHospLastUpdate
GetHospLastUpdate används för att hämta tidpunkt för då HOSP-informationen tillgängliggjorts efter det senaste utlämnandet från Socialstyrelsen. GetHospLastUpdate anropas lämpligen innan anrop till GetHospCredentialsForPerson så inte onödiga slagningar efter samma person görs innan ny HOSP-information utlämnats och tillgängliggjorts.

#### Version
Version på detta kontrakt är 1.0.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| - | - | Kontraktet har inga inparametrar | - |
| Svar |  |  |  |
| lastUpdate | dateTime | Tidpunkten då HOSP-informationen tillgängliggjorts efter det senaste utlämnandet | 1..1 |

#### Tjänstekontraktsspecifika krav och regler
-

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Antal returnerade vårdmedarbetaruppdrag | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anropen ska ligga inom |
| :--- | :--- | :--- |
| GetHospLastUpdate | 10 anrop/s | 100 ms |

#### Logiska fel
-

#### Annan information om kontraktet
-

### GetHospCredentialsForPerson
GetHospCredentialsForPerson används för att hämta från Socialstyrelsen utlämnad behörighetsgrundande HOSP-information för angiven person. Användning av GetHospCredentialsForPerson bör föregås av anrop till GetHospLastUpdate så att inte samma information hämtas i onödan innan ny utlämning tillgängliggjorts.

#### Version
Version på detta kontrakt är 1.0.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personalIdentityNumber | String | Person-id för den person vars HoSp-uppgifter ska sökas ut. 
Ref. person-id (personalIdentityNumber) [R5] | 1..1 |
| Svar |  |  |  |
| personalIdentityNumber | IIType | Personens person- eller samordningsnummer / Ref. Person-id (personalIdentityNumber) [R5] | 1..1 |
| .. root | String | Anger typ av personalIdentity som returneras, för personnummer: 1.2.752.129.2.1.3.1, och för / samordningsnummer: 1.2.752.129.2.1.3.3 | 1..1 |
| .. extension | String | Person eller samordningsnummer. / Ref. Person-id (personalIdentityNumber) [R5] | 1..1 |
| healthCareProfessionalLicence | healthCareProfessionalLicenceType | Personens Legitimerade yrkestitel(-lar) | 0..n |
| .. healthCareProfessionalLicenceCode | String | Kod för personens Legitimerade yrkestitel. / Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 1..1 |
| .. healtCareProfessionalLicenceName | String | Klartext för personens Legitimerade yrkestitel. / Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 1..1 |
| personalPrescriptionCode | String | Personlig förskrivarkod. Ref. Förskrivarkod (personalPrescriptionCode) [R5] | 0..1 |
| healthCareProfessionalLicenceSpeciality | HCPSpecialityCodesType | Personens specialistkod(er) kopplat till aktuell legitimerad yrkesgrupp. Ref. Leg. yrkesgrupp och specialitet för läkare och tandläkare (hsaSosTitleCodeSpeciality) [R5] | 0..n |
| .. healthCareProfessionalLicenceCode | String | Kod för den legitimerade yrkestitel som specialistkoden hör till. Ref. Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 1..1 |
| .. specialityCode | String | Specialistkod, enligt något av Socialstyrelsens följande kodverk: 1.2.752.116.3.1.6 (Läkare 1992), 1.2.752.116.3.1.7 (Läkare 1996), 1.2.752.116.3.1.8 (Läkare 2008), 1.2.752.116.3.1.9 (Läkare 2015), 1.2.752.116.3.1.10 (Tandläkare 1993), 1.2.752.116.3.1.15 (temporär behörighet läkare och tandläkare 2016). / Ref Socialstyrelsens kodverk [R7] och Specialitetskod (specialityCode) [R5] | 1..1 |
| .. specialityName | String | Specialitet i klartext. Klartext för specialityCode ovan. Ref Socialstyrelsens kodverk [R7] och Specialitet (specialityName) [R5] | 1..1 |
| nursePrescriptionRight | NursePrescriptionRightType | Förskrivningsrätt för barnmorska/sjuksköterska | 0..n |
| .. healthCareProfessionalLicence | String | Personens legitimerade yrkestitel inom vilken denne har förskrivningsrätt
BM för Barnmorska eller SJ för Sjuksköterska Ref. Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 och förskrivningsrätt för barnmorskor/sjuksköterskor (hsaSosNursePrescriptionRight) [R5] | 1..1 |
| .. prescriptionRight | Boolean | Personen har förskrivningsrätt inom den angivna Legitimerade yrkestiteln | 1..1 |
| healthcareProfessionalLicenseIdentityNumber | String | Personens HoSp-id. / Ref. HOSP-id (hospIdentityNumber) [R5] | 0..1 |
| educationCode | String | Utbildningskod. Ref. Socialstyrelsens kodverk [R7] HoSp utbildningskod 1.2.752.116.3.1.4 och Utbildningskod (hsaSosEducationCode) [R5] | 0..n |
| restrictions | RestrictionType |  | 0..n |
| .. healthCareProfessionalLicenceCode | String | Kod för den Legitimerade yrkestitel som restriktionskoden hör till. Ref. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3 | 1..1 |
| .. restrictionCode | String | Restriktionskod. Ref Socialstyrelsens kodverk [R7] Behörighetsbegränsning 1.2.752.116.3.1.5 och Restriktionskod (hsaSosRestrictionsCode) [R5] | 1..1 |
| .. restrictionName | String | Restriktionskod i klartext. Ref Socialstyrelsens kodverk [R7] Behörighetsbegränsning 1.2.752.116.3.1.5 och Restriktionskod (hsaSosRestrictions) [R5] | 1..1 |
| feignedPerson | Boolean | true: om personen är en fingerad person 
Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
-

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Antal returnerade vårdmedarbetaruppdrag | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anropen ska ligga inom |
| :--- | :--- | :--- |
| GetHospCredentialsForPerson | 10 anrop/s | 100 ms |

#### Logiska fel
Logiska fel hanteras enligt:
Om sökt person inte kan hittas bland utlämnade HOSP-uppgifter returneras tomt svar.
för kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron vi tillhandahåller.

#### Annan information om kontraktet
-

### HandleHospCertificationPerson
HandleHospCertificationPerson används för att lägga till eller ta bort personobjekt från kommande utlämningsförfrågningar av HoSp-information till Socialstyrelsen. När sedan en sådan utlämningsförfrågan behandlats, tillgängliggörs HoSp-informationen via GetHospCredentialsForPerson (se avsnitt 6.8). När personobjektet tagits bort garanteras inte HoSp-informationen längre finnas nåbar via GetHospCredentialsForPerson.

#### Version
Version på detta kontrakt är 1.0.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personalIdentityNumber | String | Person-id för den person vars HoSp-uppgifter ska begäras utlämnade från Socialstyrelsen. 
Ref. person-id (personalIdentityNumber) [R5] | 1..1 |
| operation | String | ”add” för att lägga till personen, ”remove” för att ta bort personen från utlämningsförfrågningar. | 1..1 |
| certificationId | String | Frivillig uppgift. Alternativ id för personposten | 0..1 |
| reason | String | Frivillig uppgift om anledning till avregistrering. Uppgiften sparas inte utan kommer bara loggas i tjänstekontraktets logg. | 0..1 |
| Svar |  |  |  |
| resultCode | String | Resultat av ett ”add” eller ”remove”-anrop (OK eller ERROR). | 1..1 |
| resultText | String | Beskrivning av fel vid resultCode=ERROR. | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
-

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Antal returnerade vårdmedarbetaruppdrag | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anropen ska ligga inom |
| :--- | :--- | :--- |
| HandleHospCertificationPerson | 5 anrop/s | 200 ms |

#### Logiska fel
Personposter som läggs till får en märkning unik för den anropande tjänsten, om personposten redan finns adderas bara märkningen till den befintliga posten. Märkningen syftar till att skydda personposter från borttag av annan tjänst. Vid borttag av personpost som lagts till av flera tjänster tas bara den anropande tjänstens märkning bort. Personposten tas bara bort i sin helhet när den bara är märkt med den tjänst som gör borttaget.
Logiska fel hanteras enligt:
Om personposten inte kan sparas eller tas bort returneras resultCode = ERROR
Om personposten som ska läggas till redan finns, så adderas bara en märkning om att den behövs för den anropande tjänsten (så att personposten inte tas bort av annan tjänst). Resp. om personposten ska tas bort och den är märkt med flera tjänster tas bara den aktuella tjänstens märkning bort.
Om en sådan operationen misslyckas returneras resultCode = ERROR.
Om personposten som ska läggas till redan finns och har märkts med den anropande tjänsten så returneras resultCode = OK.
Om personpost som ska tas bort redan är borttagen, eller om märkningen med anropande tjänsten inte finns på personposten så returneras resultCode = OK

#### Annan information om kontraktet
-
