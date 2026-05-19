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
| ../../root | String | OID= "1.2.752.116.3.1.1". | 1..1 |
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
| ../../ root | String | OID = " 1.2.752.116.3.1.2" | 1..1 |
| ../legitimation | LegitimationType | Legitimation innehåller en beskrivning av en persons legitimation | 0..* |
| ../../ legitimeratYrke | CV | Anger vilket legitimerat yrke som avses | 1..1 |
| ../../giltigLegitimation | Boolean | Anger om legitimationen är giltig | 1..1 |
| ../../utbildning | CV | Anger en persons utbildning för denna legitimation. OID= "1.2.752.116.3.1.4" | 0..1 |
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
| ../../../ tomDatum | Datum | Används vid en behörighetsbegränsning av typ "Prövotid" | 0..1 |
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

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetHospPersonForPublicHealthCareInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetHospPersonForPublicHealthCareInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [masterdata_organisationalresources_licensetopractice_2.0.xsd](files/schema/masterdata_organisationalresources_licensetopractice_2.0.xsd) | Domänschema (delat) |
| [GetHospPersonForPublicHealthCareResponder_2.0.xsd](files/schema/GetHospPersonForPublicHealthCareResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/gethosppersonforpublichealthcare](StructureDefinition-gethosppersonforpublichealthcare.html)
* **Logisk modell (request):** [StructureDefinition/gethosppersonforpublichealthcare-request](StructureDefinition-gethosppersonforpublichealthcare-request.html)
* **Kodsystem (legitimerade yrken):** [CodeSystem/legitimerat-yrke-cs](CodeSystem-legitimerat-yrke-cs.html)
* **ValueSet (legitimerade yrken):** [ValueSet/legitimerat-yrke-vs](ValueSet-legitimerat-yrke-vs.html)
* **Kodsystem (typ av behörighetsbegränsning):** [CodeSystem/typ-av-behorighetsbegransning-cs](CodeSystem-typ-av-behorighetsbegransning-cs.html)
* **ValueSet (typ av behörighetsbegränsning):** [ValueSet/typ-av-behorighetsbegransning-vs](ValueSet-typ-av-behorighetsbegransning-vs.html)

---

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
| kommunKod | String | Filtrerar sökning efter person utifrån kommunkod | 0..1 |
| folkbokforingsort* | String | Filtrerar sökning efter person utifrån folkbokföringsort. Tillåter wildcard i angiven sträng. | 0..1 |
| forskrivarkod | String | Filtrerar sökning efter person utifrån kommunkod | 0..1 |
| yrke* | String | Filtrerar sökning efter person utifrån grundyrke. Tillåter wildcard i angiven sträng. | 0..1 |
| specialistinriktning* | String | Filtrerar sökning efter person utifrån specialistinriktning, Tillåter wildcard i angiven sträng. Tillåter även att en av Socialstyrelsens specialistinriktningskoder anges. | 0..1 |
| Svar |  |  |  |
| hospPerson* | HospPersonType |  | 0..* |
| ..hospId | String | Unikt ID för en person i HOSP | 1..1 |
| ../../extension | String | Identitet. | 1..1 |
| ../../root | String | OID= "1.2.752.116.3.1.1". | 1..1 |
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
| ../kon | CV | Personens kön. OID="1.2.752.116.3.1.3" | 0..1 |
| ../lan | CV | Personens länstillhörighet. OID="1.2.752.129.2.2.1.18" | 0..1 |
| ../kommun | CV | Personens kommuntillhörighet. OID="1.2.752.129.2.2.1.17" | 0..1 |
| ../folkbokforingsort | String | Personens folkbokföringsort | 0..1 |
| ../skyddadIdentitet* | Boolean | Sant om personen har en sekretessmarkering | 1..1 |
| ../skyddadIdentitetUpplysning* | String | Upplysning gällande en person med skyddad identitet | 0..1 |
| ../avliden | Boolean | Sant om en person är avliden | 1..1 |
| ../avlidenDatum | Datum | Datum för en avliden person. Anges som ÅÅÅÅMMDD | 0..1 |
| ../utvandrad | Boolean | Sant om personen har utvandrat | 1..1 |
| ../forskrivarkod | String | En persons förskrivarkod | 0..1 |
| ../../ extension | String | Förskrivarkod | 1..1 |
| ../../ root | String | OID = " 1.2.752.116.3.1.2" | 1..1 |
| ../legitimation | LegitimationType | Legitimation innehåller en beskrivning av en persons legitimation | 0..* |
| ../../ legitimeratYrke | CV | Anger vilket legitimerat yrke som avses | 1..1 |
| ../../giltigLegitimation | Boolean | Anger om legitimationen är giltig | 1..1 |
| ../../utbildning | CV | Anger en persons utbildning för denna legitimation. OID= "1.2.752.116.3.1.4" | 1..1 |
| ../../utbildningsland | string | Land där utbildning skedde om ej svensk utbildning | 0..1 |
| ../../internationellOverrenskommelse | string | Internationell överrenskommelse anges för personer som har primär legitimation inom annat EU/EES-land | 0..1 |
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
| ../../../internationellOverrenskommelse | string | Internationell överrenskommelse anges för personer som har primär legitimation inom annat EU/EES-land | 0..1 |
| ../../../ specialistbevisDatum | Datum | Datum från vilket specialistbeviset är giltigt. Anges som ÅÅÅÅMMDD | 1..1 |
| ../ ../behorighetsbegransning | BehorighetsbegransningType | Behorighetsbegransning används för att ange en begränsning i behörigheten för en person | 0..* |
| ../../../typAvBehorighetsbegransning | CV | Anger typ av behörighetsbegränsning för en viss legitimation | 1..1 |
| ../../../fromDatum | Datum | Anger från när begränsningen gäller | 1..1 |
| ../../../ tomDatum | Datum | Används vid en behörighetsbegränsning av typ "Prövotid" | 0..1 |
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

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetHospPersonForIvoInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetHospPersonForIvoInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [masterdata_organisationalresources_licensetopractice_2.0.xsd](files/schema/masterdata_organisationalresources_licensetopractice_2.0.xsd) | Domänschema (delat) |
| [GetHospPersonForIvoResponder_2.0.xsd](files/schema/GetHospPersonForIvoResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/gethosppersonforivo](StructureDefinition-gethosppersonforivo.html)
* **Logisk modell (request):** [StructureDefinition/gethosppersonforivo-request](StructureDefinition-gethosppersonforivo-request.html)
* **Kodsystem (kön):** [CodeSystem/kon-cs](CodeSystem-kon-cs.html)
* **ValueSet (kön):** [ValueSet/kon-vs](ValueSet-kon-vs.html)
* **Kodsystem (legitimerade yrken):** [CodeSystem/legitimerat-yrke-cs](CodeSystem-legitimerat-yrke-cs.html)
* **ValueSet (legitimerade yrken):** [ValueSet/legitimerat-yrke-vs](ValueSet-legitimerat-yrke-vs.html)
* **Kodsystem (typ av behörighetsbegränsning):** [CodeSystem/typ-av-behorighetsbegransning-cs](CodeSystem-typ-av-behorighetsbegransning-cs.html)
* **ValueSet (typ av behörighetsbegränsning):** [ValueSet/typ-av-behorighetsbegransning-vs](ValueSet-typ-av-behorighetsbegransning-vs.html)
