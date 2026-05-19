
|  | Tjänstekontraktsbeskrivning - yrkeslegitimering / Version 2.0 / 2016-02-01 |
| :--- | :--- |
Innehåll
1	Inledning	6
1.1	Svenskt namn	6
1.2	WEB beskrivning	6
2	Versionsinformation	7
2.1	Version 1.1	7
2.1.1	Oförändrade tjänstekontrakt	7
2.1.2	Nya tjänstekontrakt	7
2.1.3	Förändrade tjänstekontrakt	7
2.1.4	Utgångna tjänstekontrakt	7
3	Tjänstedomänens arkitektur	7
3.1	Flöden	7
3.1.1	Direktåtkomst för offentliga vårdgivare	7
3.1.2	Direktåtkomst för IVO	8
3.1.3	Obligatoriska kontrakt	9
3.2	Adressering	9
3.3	Aggregering och engagemangsindex	9
4	Tjänstedomänens krav och regler	10
4.1	Informationssäkerhet och juridik	10
4.2	Icke funktionella krav	11
4.2.1	SLA krav	11
4.2.2	Övriga krav	11
4.3	Felhantering	11
4.3.1	Krav på en tjänsteproducent	11
4.3.2	Krav på en tjänstekonsument	11
5	Tjänstedomänens meddelandemodeller	13
5.1	V-MIM	13
5.1.1	Begäran Offentliga vårdgivare	13
5.1.2	Begäran IVO	13
5.1.3	Svar Offentliga vårdgivare	14
5.1.4	Svar IVO	15
5.1.5	Mappning mot RIM	15
5.2	Formatregler	16
5.2.1	Datum	16
6	Tjänstekontrakt	18
6.1	GetHospPersonForPublicHealthcare	18
6.1.1	Version	18
6.1.2	Fältregler	18
6.1.3	Övriga regler	20
6.1.4	Annan information om kontraktet	20
6.2	GetHospPersonForIVO	21
6.2.1	Version	21
6.2.2	Fältregler	21
6.2.3	Övriga regler	24
6.2.4	Annan information om kontraktet	24
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.0 | 1 | 2014-10-30 | Första versionen inför leverans till Inera | Mats Ekhammar |  |
| 1.0 | 2 | 2015-04-24 | Förtydligat användandet av kodverk och identiteter samt tagit bort element för historik, vilka utgått ur domänen. | Oskar Thunman | Birgitta Ollars |
| 1.0 | 3 | 2015-05-12 | Uppdaterade
icke-funktionella krav. | Alexander Gunnerhell |  |
| 1.0 | 4 | 2015-05-07 | Förtydligat användning av inparametrar i begäran, lagt till fördelsedatum i svar samt lagt in kompletterande text om domänen juridik och förutsättning för nyttjande av tjänsten. | Oskar Thunman |  |
| 1.0 | 5 | 2015-05-20 | Uppdaterat icke-funktionella krav och detaljerat inledande flödesbeskrivning. | Oskar Thunman | Fredrik Ström, Alexander gunnerhell, Johan Zetterström |
| 1.0 | 6 | 2015-05-26 | Uppdaterat kardinaltiet mellan HoSpPerson och Legitimation (1..*) | Oskar Thunman |  |
| 1.0 | 7 | 2015-06-08 | Rättar versionsangivelse enligt synpunkter från granskning av referensgrupp. | Oskar Thunman |  |
| 1.0 | 8 | 2015-06-15 | Lagt till rätt domännamn | Oskar Thunman |  |
| 2.0 | 9 | 2015-08-13 | Påbörjar version 2. Lagt till fältregler för IVO-tjänsten. | Oskar Thunman |  |
| 2.0 | 10 | 2015-08-19 | Uppdaterat datum | Birgitta Ollars |  |
| 2.0 | 11 | 2015-08-20 | Lagt till flagga för avliden, uppdaterat mappning mot RIM, samt lagt in meddelandemodell för IVO-tjänst. | Oskar Thunman |  |
| 2.0 | 12 | 2015-08-21 | Personnummer format tillrättat | Birgitta Ollars |  |
| 1.1 | 13 | 2015-08-21 | Korrigerat personnummer format | Birgitta Ollars |  |
| 1.1 | 14 | 2015-09-08 | Felhantering för logiska fel utgår från tjänsten  då den är en fråga-svar-tjänst | Oskar Thunman |  |
| 1.1 | 15 | 2015-09-15 | Uppdaterat web-beskrivningen | Oskar Thunman |  |
| 1.1 | 16 | 2015-10-02 | Uppdaterat datatyp för hosp-id och förskrivarkod | Oskar Thunman |  |
| 1.1 | 16 | 2015-10-12 | Ändrar kardinaltiet på Legitimation för att stödja hantering av skyddad identitet. | Oskar Thunman |  |
| 1.1 | 17 | 2015-10-14 | I tjänsten för offentliga vårdgivare  har folkbokföringsuppgifter som inte utgör sökparametrar till tjänsten tagits bort. / Lagt till kön i tjänsten för offentliga vårdgivare | Oskar Thunman |  |
| 1.1 | 18 | 2014-10-15 | Rättade felaktig notation i fältbeskrivningen för IVO på specialistbevis/utbildningsland och internationellÖverrenskommelse. Förtydligade användning av wildcards (ej regex). | Oskar Thunman |  |
| 1.1 | 19 | 2015-10-19 | Attributet ”kön” ej längre med för offentliga vårdgivare | Oskar Thunman |  |
| 1.1 | 20 | 2015-10-22 | Förtydligar mappning av avlidenDatum | Oskar Thunman |  |
| 1.1 | 21 | 2015-11-11 | Uppdaterar icke-funktionellt krav för tillgänglighet. | Oskar Thunman |  |
| 1.1 (ny domän) | 22 | 2016-01-13 | Ändrar domän från infrastructure.directory.licensetopractice till  masterdata.organisationalresources.licencetopractice | Oskar Thunman |  |
| 2.0 | 23 | 2016-02-01 | Rättar felstavat domännamn och uppdaterar version till 2.0 inför publicering | Oskar Thunman |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – AB_masterdata_organisationalresources_licensetopractice.docx | Obligatoriskt | Denna mapp |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |

## Inledning
masterdata: organisationalresources: licensetopractice
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

### Svenskt namn
underlagförprocesstöd:personella resurser:yrkeslegitimering
yrkeslegitimering

### WEB beskrivning
Syftet med tjänstedomänen är att ge direktåtkomst till Socialstyrelsens register över hälso- och sjukvårdspersonal (HoSp) för offentliga vårdgivare samt Inspektionen för vård-och omsorg, genom att låta dem söka efter personer i HoSp-registret.

Tjänstekontrakten inom domänen kan användas på två sätt av offentliga vårdgivare. Antingen kan man söka efter en person genom att ange dennes personnummer eller samordningsnummer. Alternativt kan man söka efter en person genom att ange efternamn, ett eller flera förnamn och/eller födelsedatum. Inspektionen för vård och omsorg (IVO) får söka på flera sätt.

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen masterdata: organisationalresources: licensetopractice. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.0

#### Oförändrade tjänstekontrakt
Inga oförändrade tjänstekontrakt

#### Nya tjänstekontrakt
Inga nya tjänstekontrakt

#### Förändrade tjänstekontrakt
Följande tjänstekontrakt är förändrade då domänen bytt namn (men svarar funktionellt mot tjänstekontrakten i infrastructure.directory.licensetopractice 1.1)
GetHospPersonForIVO 2.0
GetHospPersonForPublicHealthcare 2.0

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden
Domänens flöde syftar till att ge direktåtkomst till HoSp-registret genom att låta användare nyttja tjänsten för att söka uppgifter baserat på namn och födelsedatum eller hämta uppgifter med hjälp av person- eller samordningsnummer.
Tjänsten kan nyttjas på två sätt. Antingen känner man till en persons personnummer eller samordningsnummer och anger detta genom inparameten personId till tjänsten.
Alternativt kan man söka efter en person genom att ange efternamn, ett eller flera förnamn och/eller födelsedatum. Vid uppslag vi personId retuneras uppgifter om en eller ingen person. Vid sökning kan resultatet även utgöras av flera matchande HoSp-personer.

#### Direktåtkomst för offentliga vårdgivare
Tjänsten syftar till att ge direktåtkomst till HoSp-registret för offentliga vårdgivare genom att låta dem söka uppgifter baserat på namn och födelsedatum eller hämta uppgifter med hjälp av person- eller samordningsnummer.
Fråga på specifikt personId:
GetHospPersonForPublicHealthcareRequest
<<personId>>
GetHospPersonForPublicHealthcareResponse
Svar med 0..1 hospPerson
Sökning efter HoSp-person:
GetHospPersonForPublicHealthcareRequest
<<fornamn|efternamn|fodelsedatum>>
GetHospPersonForPublicHealthcareResponse
Svar med 0..* hospPerson

#### Direktåtkomst för IVO
Tjänsten syftar till att ge direktåtkomst till HoSp-registret för IVO genom att låta dem söka uppgifter baserat på namn och födelsedatum eller hämta uppgifter med hjälp av person- eller samordningsnummer.
Fråga på specifikt personId:
GetHospPersonForIVORequest
<<personId>>
GetHospPersonForIVOResponse
Svar med 0..1 hospPerson
Sökning efter HoSp-person:
GetHospPersonIVORequest
<<fornamn|efternamn|fodelsedatum>>
GetHospPersonForIVOResponse
Svar med 0..* hospPerson

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde direktåtkomst |
| :--- | :--- |
| GetHospPersonForPublicHealthcare | Offentliga vårdgivare |
| GetHospPersonForIVO | IVO |

### Adressering
Den logiska adressen är till den nationella instansen för HoSp som representeras av Socialstyrelsens organisationsnummer.

### Aggregering och engagemangsindex
Används ej inom domänen,

## Tjänstedomänens krav och regler
Dessa gäller tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Enligt förordningen (2006:196) om register över legitimerad hälso- och sjukvårdspersonal är det offentliga vårdgivare samt IVO som får ha direktåtkomst till de beskrivna variablerna.
En offentlig vårdgivare får ha direktåtkomst till uppgifter som avses i 6 § 1, 3 och 5–8.
1. namn, personnummer, samordningsnummer eller andra liknande identitetsbeteckningar och kön,
3. yrke,
5. specialitet,
6. datum för utfärdande av legitimation respektive bevis om specialistkompetens,
7. beslut om prövotid och återkallelse av legitimation,
8. förskrivarkod och omfattning av förskrivningsrätt
Offentliga vårdgivare behöver avtal med Socialstyrelsen för att ansluta sig till direktåtkomsten.
Direktåtkomst får enligt 7b § förordningen om register över legitimerad hälso- och sjukvårdspersonal inte medges innan Socialstyrelsen har försäkrat sig om att behörighets- och säkerhetsfrågorna är lösta på ett sätt som är tillfredställande ur integritetssynpunkt.
IVO får ha direktåtkomst till uppgifter som avses i 6 §.
1. namn, personnummer, samordningsnummer eller andra liknande
identitetsbeteckningar och kön,
2. folkbokföringsort,
3. yrke,
4. grundyrke, läroanstalt, utbildningsland och datum för
utfärdande av examen,
5. specialitet,
6. datum för utfärdande av legitimation respektive bevis om
specialistkompetens,
7. beslut om prövotid och återkallelse av legitimation,
8. förskrivarkod och omfattning av förskrivningsrätt, samt
9. sådana tekniska och administrativa uppgifter som är
nödvändiga för att registerändamålen ska kunna tillgodoses.

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 99,5% under vardagar 9-17. Detta motsvarar en tillgänglighet på 24% av den totalt tillgängliga upptiden på årsbasis |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | I princip omedelbar, i praktiken =< 1 sekund | Från det att datat persisterats. Gäller ej personuppgifter hämtade från folkbokföringen, vilka kan vara upp till en vecka gamla. |
| Återställningstid | 1 timme =< Återställningstid < 24 timmar | Vid katastrof, bortfall av hel hall |
| Säkerhet/Autentisering | Default för NTJP-producenter. |  |
| Säkerhet/Auktorisering | Default för NTJP-producenter. |  |
| Säkerhet/Kryptering | Default för NTJP-producenter. |  |
| Säkerhet/Spårbarhet | Regleras i separat avtal mellan konsument och Socialstyrelsen. |  |

#### Övriga krav
Säkerhetsaspekterna autentisering, auktorisering, kryptering och spårbarhet är viktiga för domänen, då känsliga uppgifter hanteras och tillhandahålls via tjänsteplattformen.

### Felhantering

#### Krav på en tjänsteproducent

##### Tekniska fel
Tekniska fel kommuniceras via SOAP Faults.

#### Krav på en tjänstekonsument
En omsändningsstrategi skall endast tillämpas vid tekniska fel. Denna skall innehålla ett begränsat antal försök under ett ökande tidsintervall samt med ett begränsat antal omsändningsförsök.

##### Felhantering
Då alla tjänster används synkront är det tjänstekonsumenten som ansvarar för att korrekt tolka fel i samband med kommunikation.

##### Säkerhet
Se 4.2.2 Övriga krav.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

### V-MIM

#### Begäran Offentliga vårdgivare

![img_001.png](images/img_001.png)

#### Begäran IVO

![img_002.png](images/img_002.png)

#### Svar Offentliga vårdgivare

![img_003.png](images/img_003.png)

#### Svar IVO

![img_004.png](images/img_004.png)

#### Mappning mot RIM

| Klass.attribut | Mappning mot NI 2015-2 |
| :--- | :--- |
| legitimation.examensdatum | Saknar motsvarighet i RIM |
| legitimation.lärosäte | Saknar motsvarighet i RIM |
| hospPerson.födelseDatum | Person.födelsetidpunkt |
| hospPerson.hospId | Saknar motsvarighet i RIM |
| hospPerson.efternamn | Person.efternamn |
| hospPerson.mellannamn | Person.mellannamn |
| hospPerson.samtligaFornamn | Person.förnamn |
| hospPerson.tilltalsnamn | Person.tilltalsnamnsmarkering |
| hospPerson.skyddadidentitet | Person.sekretessmarkering |
| hospPerson.skyddadidentitetUpplysning | Saknar motsvarighet i RIM |
| hospPerson.kön | Person.kön |
| hospPerson.län | Saknar motsvarighet i RIM |
| hospPerson.kommun | Saknar motsvarighet i RIM |
| hospPerson.folkbokföringsort | Person.Adress (City) |
| hospPerson.forskrivarkod | Saknar motsvarighet i RIM |
| hospPerson.avliden | Saknar motsvarighet i RIM |
| hospPerson.avlidenDatum | avlidenDatum är mappad mot NI 2015:1 eftersom detta inte finns i 2015:2: Person.avlidentidpunkt |
| hospPerson.utvandrad | Saknar motsvarighet i RIM |
| legitimation.legitimeratYrke | Person med kompetens att utföra hälso- och sjukvård, legitimation |
| legitimation.giltigLegitimation | Saknar motsvarighet i RIM |
| legitimation.legitimationsDatum | Saknar motsvarighet i RIM |
| legitimation.forskrivningsratt | Saknar motsvarighet i RIM |
| legitimation.forskrivningsrattDatum | Saknar motsvarighet i RIM |
| legitimation.beslutsdatumFysioterapeut | Saknar motsvarighet i RIM |
| legitimation.utbildning | Saknar motsvarighet i RIM |
| legitimation.utbildningsland | Saknar motsvarighet i RIM |
| legitimation.internationellÖverrenskommelse | Saknar motsvarighet i RIM |
| legitimation.examensdatum | Saknar motsvarighet i RIM |
| legitimation.lärosäte | Saknar motsvarighet i RIM |
| legitimation.grundyrke | Saknar motsvarighet i RIM |
| specialistbevis.specialistinriktning | Person med kompetens att utföra hälso- och sjukvård, specialistkompetens |
| specialistbevis.specialistbevisDatum | Saknar motsvarighet i RIM |
| specialistbevis.utbildningsland | Saknar motsvarighet i RIM |
| specialistbevis.internationellÖverrenskommelse | Saknar motsvarighet i RIM |
| behorighetsbegransning.typAvBehorighetsbegransning | Saknar motsvarighet i RIM |
| behorighetsbegransning.fromDatum | Saknar motsvarighet i RIM |
| behorighetsbegransning.tomDatum | Saknar motsvarighet i RIM |
| övrigBehörighet.behörighet | Saknar motsvarighet i RIM |
| övrigBehörighet.behörighetsdatum | Saknar motsvarighet i RIM |

### Formatregler

#### Datum
Datumvärdet är en sträng på formatet ”ÅÅÅÅMMDD” som matchar begränsad ISO 8601. Tid samt tidszon skall ej anges.

## Tjänstekontrakt

### GetHospPersonForPublicHealthcare
Tjänsten returnerar behörighetsinformation för en person med eventuella begränsningar av behörigheten.

#### Version
1.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personId* | II | Ett personnummer eller samordningsnummer för en person | 0..1 |
| ../ extension | String | Identitet i form av ÅÅÅÅMMDDXXXX. | 1..1 |
| ../ root | String | Anger om identiteten är ett personnummer eller samordningsnummer. Personnummer: "1.2.752.129.2.1.3.1" / Samordningsnummer: "1.2.752.129.2.1.3.3" | 1..1 |
| födelseDatum | date | Söker personer efter födelsedatum | 0..1 |
| efternamn | String | Söker personer efter efternamn | 0..1 |
| fornamn | String | Söker personer efter förnamn | 0..* |
| Svar |  |  |  |
| hospPerson* | HospPersonType |  | 0..* |
| ..hospId | String | Unikt ID för en person i HOSP | 1..1 |
| ../../extension | int | Identitet. | 1..1 |
| ../../root | String | OID= ”1.2.752.116.3.1.1”. | 1..1 |
| ../personId | II | Ett personnummer eller samordningsnummer för en person. | 0..1 |
| ../../ extension | String | Identitet i form av ÅÅÅÅMMDDXXXX. | 1..1 |
| ../../ root | String | Anger om identiteten är ett personnummer eller samordningsnummer. Personnummer: "1.2.752.129.2.1.3.1" / Samordningsnummer: "1.2.752.129.2.1.3.3" | 1..1 |
| ../tidigarePersonId | II | Ett tidigare personnummer eller samordningsnummer för en person. | 0..1 |
| ../../ extension | String | Identitet i form av ÅÅÅÅMMDDXXXX. | 1..1 |
| ../../ root | String | Anger om identiteten är ett personnummer eller samordningsnummer. Personnummer: "1.2.752.129.2.1.3.1" / Samordningsnummer: "1.2.752.129.2.1.3.3" | 1..1 |
| ../efternamn | String | En persons efternamn | 1..1 |
| ../samtligaFornamn | String | En persons samtliga förnamn | 1..* |
| ../fodelsedatum | date | Datum för en persons födelse, anges enligt ÅÅÅÅMMDD | 1..1 |
| ../skyddadidentitetUpplysning* | String | Upplysning gällande en person med skyddad identitet | 0..1 |
| ../forskrivarkod | String | En persons förskrivarkod | 0..1 |
| ../../ extension | Int | Förskrivarkod | 1..1 |
| ../../ root | String | OID = ” 1.2.752.116.3.1.2” | 1..1 |
| ../legitimation | LegitimationType | Legitimation innehåller en beskrivning av en persons legitimation | 0..* |
| ../../ legitimeratYrke | CV | Anger vilket legitimerat yrke som avses | 1..1 |
| ../../giltigLegitimation | Boolean | Anger om legitimationen är giltig | 1..1 |
| ../../utbildning | CV | Anger en persons utbildning för denna legitimation. OID= ”1.2.752.116.3.1.4” | 0..1 |
| ../../legitimationsDatum | Datum | Datum från vilket legitimationen är giltig. Anges som ÅÅÅÅMMDD | 1..1 |
| ../../beslutsdatumFysioterapeut | Datum | Anger datum då en person övergått från legitimerat yrke SG till FT | 0..1 |
| ../ ../forskrivningsratt | Boolean | Anger om personen har förskrivningsrätt (sant/falskt) | 0..1 |
| ../ ../forskrivningsrattDatum | Datum | Anger datum för förskrivningsrätt. Anges som ÅÅÅÅMMDD För personer med legitimerat yrke LK, TL eller TH är det samma datum som för legitimationen. För personer med legitimerat yrke BM och SJ med förskrivningsrätt är det datum för godkänd ansökan av förskrivningsrätt. | 0..1 |
| ../../specialistbevis | SpecialistbevisType | Specialistbevis beskriver vilket/vilka specialistbevis som är kopplade till en legitimation | 0..* |
| ../../../specialistinriktning | CV | Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen | 1..1 |
| ../../../ specialistbevisDatum | Datum | Datum från vilket specialistbeviset är giltigt. Anges som ÅÅÅÅMMDD | 1..1 |
| ../ ../behorighetsbegransning | BehorighetsbegransningType | Behorighetsbegransning används för att ange en begränsning i behörigheten för en person | 0..* |
| ../../../typAvBehorighetsbegransning | CV | Anger typ av behörighetsbegränsning för en viss legitimation | 1..1 |
| ../../../fromDatum | Datum | Anger från när begränsningen gäller | 1..1 |
| ../../../ tomDatum | Datum | Används vid en behörighetsbegränsning av typ ”Prövotid” | 0..1 |
| ../../ovrigBehorighet | OvrigBehorighetType | Anger vilken övrig behörighet som avses | 0..* |
| ../../../behorighet | CV | Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen | 1..1 |
| ../../../ behorighetsDatum | Datum | Datum från vilket behorigheten är giltigt. Anges som ÅÅÅÅMMDD | 1..1 |

#### Övriga regler
personId i begäran
Om ett personId inte anges i frågan måste ett eller flera av fälten förnamn, efternamn, födelsedatum anges.
hospPerson i svar
Vid sökning av person med namn och/eller födelsedatum kan resultatet bli 0..* hospPerson.
skyddadIdentitet
Om personen har skyddad identitet finns endast uppgift om personnummer, födelsedatum, avliden samt en upplysning om att kontakta Socialstyrelsen. Detta gör att konsumenten inte kan använda tjänsten för att kontrollera behörigheter hos en person med skyddad identitet.

##### Icke funktionella krav

###### SLA-krav
Inga krav utöver de generella för domänen.

#### Annan information om kontraktet

### GetHospPersonForIVO
Tjänsten returnerar behörighetsinformation för en person med eventuella begränsningar av behörigheten.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personnummer | String | Söker en person efter personnummer. Anges enligt formatet ÅÅÅÅMMDDXXXX | 0..1 |
| samordningsnummer | String | Samordningsnummer | 0..1 |
| efternamn | String | Söker personer efter efternamn | 0..1 |
| fornamn | String | Söker personer efter förnamn | 0..1 |
| fodelseDatum | Date | Söker personer efter födelsedatum | 0..1 |
| lansKod | String | Filtrerar sökning efter person utifrån länskod | 0..1 |
| kommunKod | String | Filtrerar sökning efter person utifrån kommunkod | 0.1 |
| folkbokforingsort* | String | Filtrerar sökning efter person utifrån folkbokföringsort. Tillåter wildcard i angiven sträng. | 0.1 |
| forskrivarkod | String | Filtrerar sökning efter person utifrån kommunkod | 0..1 |
| yrke* | String | Filtrerar sökning efter person utifrån grundyrke. Tillåter wildcard i angiven sträng. | 0.1 |
| specialistinriktning* | String | Filtrerar sökning efter person utifrån specialistinriktning, Tillåter wildcard i angiven sträng. Tillåter även att en av Socialstyrelsens specialistinriktningskoder anges. | 0.1 |
| Svar |  |  |  |
| hospPerson* | HospPersonType |  | 0..* |
| ..hospId | String | Unikt ID för en person i HOSP | 1..1 |
| ../../extension | String | Identitet. | 1..1 |
| ../../root | String | OID= ”1.2.752.116.3.1.1”. | 1..1 |
| ../personId | II | Ett personnummer eller samordningsnummer för en person. | 0..1 |
| ../../ extension | String | Identitet i form av ÅÅÅÅMMDDXXXX. | 1..1 |
| ../../ root | String | Anger om identiteten är ett personnummer eller samordningsnummer. Personnummer: "1.2.752.129.2.1.3.1" / Samordningsnummer: "1.2.752.129.2.1.3.3" | 1..1 |
| ../tidigarePersonId | II | Ett personnummer eller samordningsnummer för en person om de bytt personId. | 0..1 |
| ../../ extension | String | Identitet i form av ÅÅÅÅMMDDXXXX. | 1..1 |
| ../../ root | String | Anger om identiteten är ett personnummer eller samordningsnummer. Personnummer: "1.2.752.129.2.1.3.1" / Samordningsnummer: "1.2.752.129.2.1.3.3" | 1..1 |
| ../efternamn | String | En persons efternamn | 1..1 |
| ../mellannamn | String | En persons mellannamn. | 0..1 |
| ../samtligaFornamn | String | En persons samtliga förnamn | 1..* |
| ../tilltalsnamn | String | Markering för tilltalsnamn | 0..1 |
| ../fodelsedatum | date | Datum för en persons födelse, anges enligt ÅÅÅÅMMDD | 1..1 |
| ../kon | CV | Personens kön. OID=”1.2.752.116.3.1.3” | 0..1 |
| ../lan | CV | Personens länstillhörighet. OID=”1.2.752.129.2.2.1.18” | 0..1 |
| ../kommun | CV | Personens kommuntillhörighet. OID=”1.2.752.129.2.2.1.17” | 0..1 |
| ../folkbokforingsort | String | Personens folkbokföringsort | 0..1 |
| ../skyddadIdentitet* | Boolean | Sant om personen har en sekretessmarkering | 1..1 |
| ../skyddadIdentitetUpplysning* | String | Upplysning gällande en person med skyddad identitet | 0..1 |
| ../avliden | Boolean | Sant om en person är avliden | 1..1 |
| ../avlidenDatum | Datum | Datum för en avliden person. Anges som ÅÅÅÅMMDD | 0..1 |
| ../utvandrad | Boolean | Sant om personen har utvandrat | 1..1 |
| ../forskrivarkod | String | En persons förskrivarkod | 0..1 |
| ../../ extension | String | Förskrivarkod | 1..1 |
| ../../ root | String | OID = ” 1.2.752.116.3.1.2” | 1..1 |
| ../legitimation | LegitimationType | Legitimation innehåller en beskrivning av en persons legitimation | 0..* |
| ../../ legitimeratYrke | CV | Anger vilket legitimerat yrke som avses | 1..1 |
| ../../giltigLegitimation | Boolean | Anger om legitimationen är giltig | 1..1 |
| ../../utbildning | CV | Anger en persons utbildning för denna legitimation. OID= ”1.2.752.116.3.1.4” | 1..1 |
| ../../utbildningsland | string | Land där utbildning skedde om ej svensk utbildning | 0..1 |
| ../../internationellOverrenskommelse | string | Internationell överrenskommelse anges för personer som har primär legitimation inom annat EU/EES -land | 0..1 |
| ../../legitimationsDatum | Datum | Datum från vilket legitimationen är giltig. Anges som ÅÅÅÅMMDD | 1..1 |
| ../../beslutsdatumFysioterapeut | Datum | Anger datum då en person övergått från legitimerat yrke SG till FT | 0..1 |
| ../../examensdatum | Datum | Datum för examen | 0..1 |
| ../../lärosäte | string | Lärosäte för examen | 0..1 |
| ../../grundyrke | string | Grundyrke för examen | 0..1 |
| ../ ../forskrivningsratt | Boolean | Anger om personen har förskrivningsrätt (sant/falskt) | 0..1 |
| ../ ../forskrivningsrattDatum | Datum | Anger datum för förskrivningsrätt. Anges som ÅÅÅÅMMDD För personer med legitimerat yrke LK, TL eller TH är det samma datum som för legitimationen. För personer med legitimerat yrke BM och SJ med förskrivningsrätt är det datum för godkänd ansökan av förskrivningsrätt. | 0..1 |
| ../../specialistbevis | SpecialistbevisType | Specialistbevis beskriver vilket/vilka specialistbevis som är kopplade till en legitimation | 0..* |
| ../../../specialistinriktning | CV | Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen | 1..1 |
| ../../../utbildningsland | string | Land där utbildning skedde om ej svensk utbildning | 0..1 |
| ../../../internationellOverrenskommelse | string | Internationell överrenskommelse anges för personer som har primär legitimation inom annat EU/EES -land | 0..1 |
| ../../../ specialistbevisDatum | Datum | Datum från vilket specialistbeviset är giltigt. Anges som ÅÅÅÅMMDD | 1..1 |
| ../ ../behorighetsbegransning | BehorighetsbegransningType | Behorighetsbegransning används för att ange en begränsning i behörigheten för en person | 0..* |
| ../../../typAvBehorighetsbegransning | CV | Anger typ av behörighetsbegränsning för en viss legitimation | 1..1 |
| ../../../fromDatum | Datum | Anger från när begränsningen gäller | 1..1 |
| ../../../ tomDatum | Datum | Används vid en behörighetsbegränsning av typ ”Prövotid” | 0..1 |
| ../../ovrigBehorighet | OvrigBehorighetType | Anger vilken övrig behörighet som avses | 0..* |
| ../../../behorighet | CV | Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen | 1..1 |
| ../../../ behorighetsDatum | Datum | Datum från vilket behorigheten är giltigt. Anges som ÅÅÅÅMMDD | 1..1 |

#### Övriga regler
personId i begäran
Om ett personId inte anges i frågan måste ett eller flera av fälten förnamn, efternamn, födelsedatum anges.
hospPerson i svar
Vid sökning av person med namn och/eller födelsedatum kan resultatet bli 0..* hospPerson.
skyddadIdentitet
Om personen har skyddad identitet finns endast uppgift om personnummer, födelsedatum, avliden samt en upplysning om att kontakta Socialstyrelsen. Detta gör att konsumenten inte kan använda tjänsten för att kontrollera behörigheter hos en person med skyddad identitet.
Wildcard i sökuttryck
'*' eller '%' används för att matcha delar av text. Ex:  "apa%" matchar "apan" och "apansson"
'?' eller '_' används för att matcha tecken. Ex: "a_a" matchar "apa" och "aba" men inte "apan".

##### Icke funktionella krav

###### SLA-krav
Inga krav utöver de generella för domänen.

#### Annan information om kontraktet
