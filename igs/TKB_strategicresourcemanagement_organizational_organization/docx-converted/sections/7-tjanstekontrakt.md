## Tjänstekontrakt

### GetHealthCareUnit
Metoden söker ut vilken vårdenhet den angivna enheten eller funktionen är kopplad till. Kan användas av tjänstekonsumenten för att koppla ihop en enhet eller funktion i ett vårdsystem med vårdenhet i enlighet med PDL. Notera särskilt att alla enheter inte är kopplade till en vårdenhet. Om enheten i sig själv är utpekad som vårdenhet markeras detta med en flagga i svaret.

#### Version
Version på detta kontrakt är .

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareUnitMemberHsaId | String | HSA-id för en enhet eller funktion som är kopplad till en vårdenhet enligt PDL. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| healthCareUnit | HealthCareUnitType |  | 0..1 |
| ..healthCareUnitMemberHsaId | String | Enhetens (funktionens) HSA-id | 0..1 |
| ..healthCareUnitMemberName | String | Enhetens (funktionens) namn | 0..1 |
| ..healthCareUnitMemberStartDate | dateTime | Startdatum för enhetens (funktionens) verksamhet | 0..1 |
| ..healthCareUnitMemberEndDate | dateTime | Slutdatum för enhetens (funktionens) verksamhet | 0..1 |
| ..healthCareUnitHsaId | String | Vårdenhetens HSA-id | 1..1 |
| ..unitIsHealthCareUnit | Boolean | True, om enheten (funktionen) själv är en vårdenhet
Om enheten (funktionen) inte är vårdenhet kommer inget värde att returneras. | 0..1 |
| ..healthCareUnitName | String | Vårdenhetens namn | 1..1 |
| ..healthCareUnitStartDate | dateTime | Startdatum för vårdenhetens verksamhet. | 0..1 |
| ..healthCareUnitEndDate | dateTime | Slutdatum för vårdenhetens verksamhet. | 0..1 |
| ..healthCareProviderHsaId | String | Vårdgivarens HSA-id | 1..1 |
| ..healthCareProviderName | String | Vårdgivarens namn | 1..1 |
| ..healthCareProviderOrgNo | String | Vårdgivarens organisationsnummer | 1..1 |
| ..healthCareProviderStartDate | dateTime | Startdatum för vårdgivarens verksamhet. | 0..1 |
| ..healthCareProviderEndDate | dateTime | Slutdatum för vårdgivarens verksamhet. | 0..1 |
| ..feignedHealthCareUnitMember | Boolean | true: om enheten är ett fingerat objekt | 0..1 |
| ..feignedHealthCareUnit | Boolean | true: om vårdenheten är ett fingerat objekt | 0..1 |
| ..feignedHealthCare | Boolean | true: om vårdgivaren är ett fingerat objekt | 0..1 |
| ..ealthCareUnitMember | Boolean | true: om enheten är ett arkiverat objekt | 0..1 |
| ..ealthCareUnit | Boolean | true: om vårdenheten är ett arkiverat objekt | 0..1 |
| ..ealthCareProvider | Boolean | true: om vårdgivaren är ett arkiverat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) searchBase
För GetHealthCareUnit används följande sökningar/sökbaser:
- Sök efter kopplad enhet: i anropet angiven sökbas
- Sök efter vårdenhet: i anropet angiven sökbas
- Sök efter vårdgivare: i anropet angiven sökbas

##### Icke funktionella krav

###### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetHealthCareUnit | 10 anrop/s | 100 ms |

###### Logiska fel

#### Annan information om kontraktet
Information returneras endast om angiven enhet är kopplad till en vårdenhet, om den angivna enheten inte är det, t ex om den i sig själv är en vårdenhet, returneras ingen vårdenhetsinformation.

### GetHealthCareUnitList
Metoden söker fram och listar en angiven vårdgivares alla vårdenheter, definierade enligt PDL. Kan användas av tjänstekonsumenten för att t.ex. skapa en förvalslista i ett användargränssnitt.

#### Version
Version på detta kontrakt är .

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareProviderHsaId | String | Vårdgivarens HSA-id. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas.

searchBase används både för sökning av den kopplade enheten, vårdenheten och vårdgivaren. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| healthCareUnitList | HealthCareUnitListType |  | 0..1 |
| ..healthCareProviderHsaId | String | Vårdgivarens HSA-id | 1..1 |
| ..healthCareProviderName | String | Vårdgivarens namn | 1..1 |
|  |  |  |  |
| ..healthCareProviderStartDate | dateTime | Startdatum för vårdgivarens verksamhet. | 0..1 |
| ..healthCareProviderEndDate | dateTime | Slutdatum för vårdgivarens verksamhet. | 0..1 |
| ..feigned | Boolean | true: om vårdgivaren är ett fingerat objekt | 0..1 |
| ..ealthCareProvider | Boolean | true: om vårdgivaren är ett arkierat objekt | 0..1 |
| ..healthCareUnit | HealthCareUnitType | Ingående vårdenhet enligt PDL | 0..n |
| .. ..healthCareUnitHsaId | String | HSA-identitet ingående enhet | 1..1 |
| .. ..healthCareUnitName | String | Namn ingående enhet | 1..1 |
| .. ..healthCareUnitStartDate | dateTime | Startdatum för vårdenhetens verksamhet. | 0..1 |
| .. ..healthCareUnitEndDate | dateTime | Slutdatum för vårdenhetens verksamhet. | 0..1 |
| .. ..feigned | Boolean | true: om vårdenheten är ett fingerat objekt | 0..1 |
| .. ..ealthCareUnit | Boolean | true: om vårdenheten är ett arkierat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) searchBase
För GetHealthCareUnitList används följande sökningar/sökbaser:
- Sök efter vårdgivaren: i anropet angiven sökbas
- Sök efter vårdenheter: i anropet angiven sökbas

##### Icke funktionella krav

###### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetHealthCareUnitList | 1 anrop/s | 2000 ms |

###### Logiska fel

#### Annan information om kontraktet
-

### GetHealthCareUnitMembers
Metoden söker fram alla kopplade enheter för den angivna vårdenheten. Kan användas av tjänstekonsumenten för att se vilka mottagningar och avdelningar som ingår i en klinik eller för att i ett användargränssnitt skapa en förvalslista med samtliga arbetsplatskoder kopplade till vårdenheten. Notera särskilt att alla enheter inte är kopplade till en vårdenhet och att samtliga arbetsplatskoder inte finns registrerade.

#### Version
Version på detta kontrakt är .

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareUnitHsaId | String | HSA-id för vårdenhet enligt PDL. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| healthCareUnitMembers | HealthCareUnitMembersType | Information om vårdenheten och dess kopplade enheter | 0..1 |
| ..healthCareUnitName | String | Vårdenhetens namn. | 1..1 |
| ..healthCareUnitHsaId | String | Vårdenhetens HSA-id | 1..1 |
| ..healthCareUnitStartDate | dateTime | Startdatum för vårdenhetens verksamhet. | 0..1 |
| ..healthCareUnitEndDate | dateTime | Slutdatum för vårdenhetens verksamhet. | 0..1 |
| ..healthCareUnitPrescriptionCode | String | Vårdenhetens arbetsplatskod(-er) | 0..n |
| ..telephoneNumber | String | Vårdenhetens publika direkttelefonnummer. | 0..n |
| ..postalAddress | AddressType | Vårdenhetens postadress. | 0..1 |
| .. ..addressLine | String | Adressrader | 1..n |
| ..postalCode | String | Vårdenheten postnummer där verksamheten bedrivs | 0..1 |
| ..feigned | Boolean | true: om vårdenheten är ett fingerat objekt | 0..1 |
| ..ealthCareUnit | Boolean | true: om vårdenheten är ett arkierat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
| ..healthCareUnitMember | HealthCareUnitMemberType | Information om en kopplad enhet | 0..n |
| .. .. healthCareUnitMember Name | String | Den kopplade enhetens namn | 1..1 |
| .. .. healthCareUnitMember HsaId | String | Den kopplade enhetens HSA-id | 1..1 |
| .. ..healthCareUnitMember StartDate | dateTime | Startdatum för kopplade enhetens verksamhet. | 0..1 |
| .. ..healthCareUnitMember EndDate | dateTime | Slutdatum för kopplade enhetens verksamhet. | 0..1 |
| .. .. healthCareUnitMember PrescriptionCode | String | Den kopplade enhetens arbetsplatskod(-er) | 0..n |
| .. ..healthCareUnitMember TelephoneNumber | String | Den kopplade enhetens publika direkttelefonnummer | 0..n |
| .. .. healthCareUnitMember postalAddress | AddressType | Den kopplade enhetens postadress | 0..1 |
| .. .. ..addressLine | String | Adressrader | 1..n |
| .. .. healthCareUnitMember postalCode | String | Den kopplade enhetens postnummer för där verksamheten bedrivs. | 0..1 |
| .. .. | Boolean | true: om enheten är ett fingerat objekt | 0..1 |
| .. .. | Boolean | true: om enheten är ett arkierat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) searchBase
För GetHealthCareUnitMembers används följande sökningar/sökbaser:
- Sök efter vårdenheten: i anropet angiven sökbas
- Sök efter kopplade enheter: här används sökbasen c=se

##### Icke funktionella krav

###### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Vårdenhet med kopplade enheter eller inte | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| Svarstid för vårdenhet utan kopplade enheter | 10 anrop/s | 100 ms |
| Svarstid för vårdenhet med kopplade enheter | 1 anrop/s | 1000 ms |

###### Logiska fel

#### Annan information om kontraktet
-

### GetUnit
GetUnit returnerar information om den angivna enheten (med enhet avses här alla typer av organisatoriska objekt, d.v.s. både organisation, enhet och funktion). Kan användas av tjänstekonsumenten för att presentera detaljerad information om en enhet i t.ex. en vårdsökning eller en kontaktlista. Notera särskilt att alla attribut inte är obligatoriska och att ytterst få enheter innehåller samtlig information enligt nedan specifikation.

#### Version
Version på detta kontrakt är .

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| unitHsaId | String | HSA-id för sökt organisatorisk enhet. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| unit | unitType | Information om den angivna organisatoriska enheten | 0..1 |
| ..alternateName | String | Alternativt namn på enheten som används vid sidan av det officiella namnet (se även publicName). | 0..n |
| ..alternateText | String | Beskrivande text till jpegPhoto/bild på enhet. | 0..1 |
| ..businessClassification | BusinessClassificationType | Verksamhetskod | 0..n |
| .. ..businessClassificationName | String | Verksamhetskod(-er) i klartext | 1..1 |
| .. ..businessClassificationCode | String | Verksamhetskod(-er) kod | 1..1 |
| ..businessType | String | Klassificering av enhet (t.ex. sjukhus). | 0..n |
| ..careType | String | Vårdform. | 0..n |
| ..county | String | Namn på län. | 0..1 |
| ..countyCode | String | Kod för län. | 0..1 |
| ..description | String | Allmän beskrivning för enheten. | 0..1 |
| ..directoryContact | String | Mailadress till ansvarig för informationen om enheten. Uppgiften hämtas från enheten eller från något överliggande objekt (det närmast överliggande objekt där det finns definierat). | 0..1 |
| ..displayOption | String | Används för att beräkna enhetens publika / namn (publicName). | 0..1 |
| ..dropInHour | TimeSpan | Tider för dropin-besök (utan tidbokning). | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..mail | String | Mailadress till enheten. | 0..1 |
| ..facsimileNumber | Telefon | Faxnummer till enheten. | 0..n |
| ..geographicalCoordinatesRt90 | GeoCoordRt90Type | Geografiska koordinater för enhetens huvudsakliga fysiska placering. Koordinaterna anges enligt RT90. | 0..1 |
| .. ..xCoordinate | String | X-koordinat. | 1..1 |
| .. ..yCoordinate | String | Y-koordinat. | 1..1 |
| ..geographicalCoordinatesSWEREF99 | GeoCoordSWEREF99Type | Geografiska koordinater för enhetens huvudsakliga fysiska placering. Koordinaterna anges enligt SWEREF99. | 0..1 |
| .. ..nCoordinate | String | X-koordinat. | 1..1 |
| .. ..eCoordinate | String | Y-koordinat. | 1..1 |
| ..healthCareArea | String | Geografiskt definierat område för någon typ av administrativt indelning. | 0..1 |
| ..destinationIndicator | String | Anger vilka parter som får ta del av enhetens information. | 0..n |
| ..unitHsaId | String | Enhetens HSA-id | 1..1 |
| ..jpegPhoto | String | Bild för enheten. Base-64-format. | 0..1 |
| ..jpegLogotype | String | Logotype för enheten. Base-64-format. | 0..1 |
| ..labeledUri | String | Fullständig webbadress (inklusive http://  eller https://) | 0..1 |
| ..location | String | Namn på geografiskt område där enheten i huvudsak är placerad. | 0..1 |
| ..webPage1177 | String | Länk till Enhetens sida på 1177.se (om enheten är publik och finns på 1177.se) | 0..1 |
| ..management | String | Ägarform i klartext. | 0..n |
| ..municipality | String | Namn på kommun. | 0..1 |
| ..municipalityCode | String | Kod för kommun. | 0..1 |
|  |  |  |  |
| ..unitName | String | Namnet på enheten | 1..1 |
| ..patientInformation | String | Informationstext till patienter. | 0..1 |
| ..postalAddress | Address | Postadress. | 0..1 |
| .. ..addressLine | String | Adressrad. | 1..n |
| ..postalCode | String | Postnummer där verksamheten bedrivs | 0..1 |
| ..priceInformation | String | Prisinformation. | 0..1 |
| ..publicName | String | Publikt officiellt namn.
Det publika namnet beräknas i första hand utifrån enhetens DN tillsammans med värdet i attributet displayOption.
Om displayOption saknas beräknas det publika namnet enligt:
enhetens namn <blanktecken> location | 1..1 |
| ..relatedUnitHsaId | String | HSA-identitet på en enhet som på något sätt hör ihop med aktuell enhet. | 0..n |
| ..route | String | Vägbeskrivning. | 0..1 |
|  |  |  |  |
| ..street | String | Besöksadress (gatuadress). | 0..1 |
| ..surgeryHour | TimeSpan | Öppettider. | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..switchboardNumber | Telefon | Telefonnummer till växel | 0..1 |
| ..telephoneHour | TimeSpan | Telefontider | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..telephoneNumber | Telefon | Publikt direkttelefonnummer. | 0..n |
| ..textTelephoneNumber | Telefon | Texttelefonnummer för personer med tal- eller hörselhandikapp. | 0..n |
| ..unitExtraInformation | String | Kompletterande information om enheten | 0..1 |
| ..unitFunction | UnitFunctionType | Information från direkt underliggande funktionsobjekt med  reservera funktionsnamn Avbokning Rådgivning | 0..n |
| .. ..name | String | unktionens namn (se ). | 1..1 |
| .. ..telephoneHour | TimeSpan | Telefontider för telefonnummer i parametern telephoneNumber. | 0..n |
| .. .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| .. ..telephoneNumber | Telefon | Publikt direkttelefonnummer. | 0..n |
| ..unitTemporaryInformation | DateSpan | Tillfällig information om enheten. | 0..1 |
| .. ..fromDate | String | Från datum. Exempel: 20101123 | 0..1 |
| .. ..toDate | String | Till datum. Exempel: 20101131 | 0..1 |
| .. ..temporaryInformation | String | Tillfällig information | 1..1 |
| ..visitingHour | TimeSpan | Besökstider för anhöriga. | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..visitingRuleAge | AgeSpan | Åldersintervall på patienter som tas emot. | 0..1 |
| .. ..fromAge | String | Från ålder. 00 för nyfödd. | 1..1 |
| .. ..toAge | String | Till ålder. 99 för ingen övre åldersgräns. | 1..1 |
| .. ..comment | String | Kommentar till åldersintervallet | 0..1 |
| ..referralRules | String | Beskrivning av remisskrav. | 0..1 |
| ..visitingRules | String | Besöksregler | 0..1 |
| ..unitStartDate | dateTime | Startdatum för enhetens verksamhet | 0..1 |
| ..unitEndDate | dateTime | Slutdatum för enhetens verksamhet | 0..1 |
| ..feigned | Boolean | true: om enheten är ett fingerat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) searchBase
För GetUnit används följande sökningar/sökbaser:
- Sök efter enheten: i anropet angiven sökbas

##### Icke funktionella krav

###### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetUnit | 10 anrop/s | 200 ms |

###### Logiska fel

#### Annan information om kontraktet
-

### GetHealthCareUnitIncludingManager
Metoden söker ut vilken vårdenhet den angivna enheten eller funktionen är kopplad till. Kan användas av tjänstekonsumenten för att koppla ihop en enhet eller funktion i ett vårdsystem med vårdenhet i enlighet med PDL. Notera särskilt att alla enheter inte är kopplade till en vårdenhet. Om enheten i sig själv är utpekad som vårdenhet markeras detta med en flagga i svaret. Metoden är identisk med GetHealthCareUnit men innehåller även attribut för utpekad verksamhetschef i söksvaret.

#### Version
Version på detta kontrakt är .

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareUnitMemberHsaId | String | HSA-id för en enhet (funktion) som är kopplad till en vårdenhet enligt PDL. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| healthCareUnit | HealthCareUnitType |  | 0..1 |
| ..healthCareUnitMemberHsaId | String | Enhetens (funktionens) HSA-id | 0..1 |
| ..healthCareUnitMemberName | String | Enhetens (funktionens) namn | 0..1 |
| ..healthCareUnitMemberStartDate | dateTime | Startdatum för enhetens (funktionens) verksamhet | 0..1 |
| ..healthCareUnitMemberEndDate | dateTime | Slutdatum för enhetens (funktionens) verksamhet | 0..1 |
| ..healthCareUnitHsaId | String | Vårdenhetens HSA-id | 1..1 |
| ..unitIsHealthCareUnit | Boolean | True, om enheten själv är en vårdenhet
Om enhet inte är vårdenhet kommer inget värde att returneras. | 0..1 |
| ..healthCareUnitName | String | Vårdenhetens namn | 1..1 |
| ..healthCareUnitManager | String | HSA id till utpekad verksamhetschef | 0..1 |
| ..healthCareUnitStartDate | dateTime | Startdatum för vårdenhetens verksamhet. | 0..1 |
| ..healthCareUnitEndDate | dateTime | Slutdatum för vårdenhetens verksamhet. | 0..1 |
| ..healthCareProviderHsaId | String | Vårdgivarens HSA-id | 1..1 |
| ..healthCareProviderName | String | Vårdgivarens namn | 1..1 |
| ..healthCareProviderOrgNo | String | Vårdgivarens organisationsnummer | 1..1 |
| ..healthCareProviderStartDate | dateTime | Startdatum för vårdgivarens verksamhet. | 0..1 |
| ..healthCareProviderEndDate | dateTime | Slutdatum för vårdgivarens verksamhet. | 0..1 |
| ..feignedHealthCareUnitMember | Boolean | true: om enheten är ett fingerat objekt | 0..1 |
| ..feignedHealthCareUnit | Boolean | true: om vårdenheten är ett fingerat objekt | 0..1 |
| ..feignedHealthCare | Boolean | true: om vårdgivaren är ett fingerat objekt | 0..1 |
| ..feignedHealthCareUnitManager | Boolean | true: om vårdenhetens verksamhetschef är ett fingerat objekt | 0..1 |
| ..ealthCareUnitMember | Boolean | true: om enheten är ett arkiverat objekt | 0..1 |
| ..ealthCareUnit | Boolean | true: om vårdenheten är ett arkiverat objekt | 0..1 |
| ..ealthCareProvider | Boolean | true: om vårdgivaren är ett arkiverat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) searchBase
För GetHealthCareUnitIncludingManager används följande sökningar/sökbaser:
- Sök efter kopplad enhet: i anropet angiven sökbas
- Sök efter vårdenhet: i anropet angiven sökbas
- Sök efter vårdgivare: i anropet angiven sökbas
- Sök efter verksamhetschef: i anropet angiven sökbas

##### Icke funktionella krav

###### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetHealthCareUnit | 10 anrop/s | 100 ms |

###### Logiska fel

#### Annan information om kontraktet
Information returneras endast om angiven enhet är kopplad till en vårdenhet, om den angivna enheten inte är det, t ex om den i sig själv är en vårdenhet, returneras ingen vårdenhetsinformation.
