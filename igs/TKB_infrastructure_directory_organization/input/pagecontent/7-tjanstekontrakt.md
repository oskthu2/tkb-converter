## Tjänstekontrakt

### GetHealthCareUnit
Söker ut vilken vårdenhet den angivna enheten eller funktionen är kopplad till. Kan användas av tjänstekonsumenten för att koppla ihop en enhet eller funktion i ett vårdsystem med vårdenhet i enlighet med PDL. Notera särskilt att alla enheter inte är kopplade till en vårdenhet. Om enheten i sig själv är utpekad som vårdenhet markeras detta med en flagga i svaret.

#### Version
Version på detta kontrakt är 2.0.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på till exempel fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareUnitMemberHsaId | String | HSA-id för en enhet eller funktion som är kopplad till en vårdenhet enligt PDL. Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| healthCareUnit | HealthCareUnitType |  | 0..1 |
| ..healthCareUnitMemberHsaId | String | Enhetens (funktionens) HSA-id. Ref. HSA-id (hsaIdentity) [R5] | 0..1 |
| ..healthCareUnitMemberName | String | Enhetens (funktionens) namn. Ref. organisationsnamn (o), enhetsnamn (ou) resp. objektnamn (cn) [R5] | 0..1 |
| ..healthCareUnitMemberPublicName | String | Publikt officiellt namn. Det publika namnet beräknas i första hand utifrån enhetens DN tillsammans med värdet i attributet displayOption. Om displayOption saknas beräknas det publika namnet enligt: enhetens namn blanktecken location / Ref. alternativ namnvisning (displayOption), organisationsnamn (o), enhetsnamn (ou), objektnamn (cn), resp geografisk plats (l, localityName) [R5] | 0..1 |
| ..healthCareUnitMemberStartDate | dateTime | Startdatum för enhetens (funktionens) verksamhet. Ref. startdatum (startDate) [R5] | 0..1 |
| ..healthCareUnitMemberEndDate | dateTime | Slutdatum för enhetens (funktionens) verksamhet. Ref. slutdatum (endDate) [R5] | 0..1 |
| ..healthCareUnitHsaId | String | Vårdenhetens HSA-id. Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..unitIsHealthCareUnit | Boolean | True, om enheten (funktionen) själv är en vårdenhet. Om enheten (funktionen) inte är vårdenhet kommer inget värde att returneras. Ref. hjälpklassen Vårdenhet (hsaHealthCareUnit) [R5] | 0..1 |
| ..healthCareUnitName | String | Vårdenhetens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5] | 1..1 |
| ..healthCareUnitPublicName | String | Publikt officiellt namn. Ref. alternativ namnvisning (displayOption), organisationsnamn (o), enhetsnamn (ou), objektnamn (cn), resp geografisk plats (l, localityName) [R5] | 1..1 |
| ..healthCareUnitStartDate | dateTime | Startdatum för vårdenhetens verksamhet. Ref. startdatum (startDate) [R5] | 0..1 |
| ..healthCareUnitEndDate | dateTime | Slutdatum för vårdenhetens verksamhet. Ref. slutdatum (endDate) [R5] | 0..1 |
| ..healthCareProviderHsaId | String | Vårdgivarens HSA-id. Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..healthCareProviderName | String | Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5] | 1..1 |
| ..healthCareProviderPublicName | String | Publikt officiellt namn. Ref. alternativ namnvisning (displayOption), organisationsnamn (o), enhetsnamn (ou), objektnamn (cn), resp geografisk plats (l, localityName) [R5] | 1..1 |
| ..healthCareProviderOrgNo | String | Vårdgivarens organisationsnummer. Ref. organisationsnummer (orgNo) [R5] | 1..1 |
| ..healthCareProviderStartDate | dateTime | Startdatum för vårdgivarens verksamhet. Ref. startdatum (startDate) [R5] | 0..1 |
| ..healthCareProviderEndDate | dateTime | Slutdatum för vårdgivarens verksamhet. Ref. slutdatum (endDate) [R5] | 0..1 |
| ..feignedHealthCareUnitMember | Boolean | true: om enheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |
| ..feignedHealthCareUnit | Boolean | true: om vårdenheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |
| ..feignedHealthCareProvider | Boolean | true: om vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |
| ..archivedHealthCareUnitMember | Boolean | true: om enheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5] | 0..1 |
| ..archivedHealthCareUnit | Boolean | true: om vårdenheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5] | 0..1 |
| ..archivedHealthCareProvider | Boolean | true: om vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

*1) searchBase
För GetHealthCareUnit används följande sökningar/sökbaser:
- Sök efter kopplad enhet: i anropet angiven sökbas
- Sök efter vårdenhet: i anropet angiven sökbas
- Sök efter vårdgivare: i anropet angiven sökbas

##### Icke funktionella krav

###### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar. Svarstid ska kunna garanteras upp till angiven last.

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetHealthCareUnit | 10 anrop/s | 100 ms |

###### Logiska fel
Logiska fel hanteras enligt:
Om angiven sökbas inte finns i katalogen, returneras ett tomt svar.
Om sökt enhet inte kan hittas i katalogen, så returneras tomt svar.
Om sökt enhet inte är en vårdenhet eller kopplad till en vårdenhet, så returneras tomt svar.
Om enheten, vårdenheten eller vårdgivaren saknar obligatorisk uppgift så returneras tomt svar. Dvs om Namn, HSA-id, Organisationsnummer hos vårdgivaren eller korrekt utpekning av vårdgivare hos vårdenheten saknas så levereras tomt svar.
för kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron vi tillhandahåller.

#### Annan information om kontraktet
Information returneras endast om angiven enhet är kopplad till en vårdenhet, eller om enheten i sig själv är en vårdenhet.

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetHealthCareUnitInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetHealthCareUnitInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetHealthCareUnitResponder_2.0.xsd](files/schema/GetHealthCareUnitResponder_2.0.xsd) | Tjänstespecifikt schema |
| [infrastructure_directory_organization_5.0.xsd](files/schema/infrastructure_directory_organization_5.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (request):** [StructureDefinition/gethealthcareunit-request](StructureDefinition-gethealthcareunit-request.html)
* **Logisk modell (response):** [StructureDefinition/gethealthcareunit](StructureDefinition-gethealthcareunit.html)

---

### GetHealthCareUnitList
Söker fram och listar en angiven vårdgivares alla vårdenheter, definierade enligt PDL. Kan användas av tjänstekonsumenten för att t.ex. skapa en förvalslista i ett användargränssnitt.

#### Version
Version på detta kontrakt är 2.0.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareProviderHsaId | String | Vårdgivarens HSA-id. Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. searchBase används både för sökning av den kopplade enheten, vårdenheten och vårdgivaren. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| healthCareUnitList | HealthCareUnitListType |  | 0..1 |
| ..healthCareProviderHsaId | String | Vårdgivarens HSA-id. Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..healthCareProviderName | String | Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5] | 1..1 |
| ..healthCareProviderPublicName | String | Publikt officiellt namn. Ref. alternativ namnvisning (displayOption), organisationsnamn (o), enhetsnamn (ou), objektnamn (cn), resp geografisk plats (l, localityName) [R5] | 1..1 |
| ..healthCareProviderOrgNo | String | Vårdgivarens organisationsnummer. Ref. organisationsnummer (orgNo) [R5] | 1..1 |
| ..healthCareProviderStartDate | dateTime | Startdatum för vårdgivarens verksamhet. Ref. startdatum (startDate) [R5] | 0..1 |
| ..healthCareProviderEndDate | dateTime | Slutdatum för vårdgivarens verksamhet. Ref. slutdatum (endDate) [R5] | 0..1 |
| ..feignedHealthCareProvider | Boolean | true: om vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |
| ..archivedHealthCareProvider | Boolean | true: om vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5] | 0..1 |
| ..healthCareUnit | HealthCareUnitType | Ingående vårdenhet enligt PDL | 0..* |
| .. ..healthCareUnitHsaId | String | HSA-identitet ingående enhet. Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| .. ..healthCareUnitName | String | Namn ingående enhet. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5] | 1..1 |
| .. ..healthCareUnitPublicName | String | Publikt officiellt namn. Ref. alternativ namnvisning (displayOption), organisationsnamn (o), enhetsnamn (ou), objektnamn (cn), resp geografisk plats (l, localityName) [R5] | 1..1 |
| .. ..healthCareUnitStartDate | dateTime | Startdatum för vårdenhetens verksamhet. Ref. startdatum (startDate) [R5] | 0..1 |
| .. ..healthCareUnitEndDate | dateTime | Slutdatum för vårdenhetens verksamhet. Ref. slutdatum (endDate) [R5] | 0..1 |
| .. ..feignedHealthCareUnit | Boolean | true: om vårdenheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |
| .. ..archivedHealthCareUnit | Boolean | true: om vårdenheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

*1) searchBase
För GetHealthCareUnitList används följande sökningar/sökbaser:
- Sök efter vårdgivaren: i anropet angiven sökbas
- Sök efter vårdenheter: i anropet angiven sökbas

##### Icke funktionella krav

###### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar. Svarstid ska kunna garanteras upp till angiven last.

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetHealthCareUnitList | 1 anrop/s | 2000 ms |

###### Logiska fel
Logiska fel hanteras enligt:
Om angiven sökbas inte finns i katalogen, returneras ett tomt svar.
Om sökt vårdgivare inte kan hittas i katalogen, så returneras tomt svar.
Om sökt enhet inte är en vårdgivare, eller om vårdgivaren saknar någon obligatorisk uppgift (namn, HSA-id eller organisationsnummer), så returneras tomt svar.
Om en vårdgivare saknar någon obligatorisk uppgift (namn eller HSA-id) så returneras ingen information om den vårdenheten.
för kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron vi tillhandahåller.

#### Annan information om kontraktet
-

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetHealthCareUnitListInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetHealthCareUnitListInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetHealthCareUnitListResponder_2.0.xsd](files/schema/GetHealthCareUnitListResponder_2.0.xsd) | Tjänstespecifikt schema |
| [infrastructure_directory_organization_5.0.xsd](files/schema/infrastructure_directory_organization_5.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (request):** [StructureDefinition/gethealthcareunitlist-request](StructureDefinition-gethealthcareunitlist-request.html)
* **Logisk modell (response):** [StructureDefinition/gethealthcareunitlist](StructureDefinition-gethealthcareunitlist.html)

---

### GetHealthCareUnitMembers
Metoden söker fram alla kopplade enheter för den angivna vårdenheten. Kan användas av tjänstekonsumenten för att se vilka mottagningar och avdelningar som ingår i en klinik eller för att i ett användargränssnitt skapa en förvalslista med samtliga arbetsplatskoder kopplade till vårdenheten. Notera särskilt att alla enheter inte är kopplade till en vårdenhet och att samtliga arbetsplatskoder inte finns registrerade.

#### Version
Version på detta kontrakt är 2.1.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareUnitHsaId | String | HSA-id för vårdenhet enligt PDL. Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| healthCareUnitMembers | HealthCareUnitMembersType | Information om vårdenheten och dess kopplade enheter | 0..1 |
| ..healthCareUnitName | String | Vårdenhetens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5] | 1..1 |
| ..healthCareUnitPublicName | String | Publikt officiellt namn. Ref. alternativ namnvisning (displayOption), organisationsnamn (o), enhetsnamn (ou), objektnamn (cn), resp geografisk plats (l, localityName) [R5] | 1..1 |
| ..healthCareUnitHsaId | String | Vårdenhetens HSA-id. Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..healthCareUnitStartDate | dateTime | Startdatum för vårdenhetens verksamhet. Ref. startdatum (startDate) [R5] | 0..1 |
| ..healthCareUnitEndDate | dateTime | Slutdatum för vårdenhetens verksamhet. Ref. slutdatum (endDate) [R5] | 0..1 |
| ..healthCareUnitPrescriptionCode | String | Vårdenhetens arbetsplatskod(-er). Ref. arbetsplatskod (unitPrescriptionCode) [R5] | 0..* |
| ..telephoneNumber | String | Vårdenhetens publika direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5] | 0..* |
| ..postalAddress | AddressType | Vårdenhetens postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5] | 0..1 |
| .. ..addressLine | String | Adressrader | 1..* |
| ..structuredPostalAddress | structuredPostalAddressType | Vårdenhetens postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5] | 0..1 |
| .. ..addressee | String | Adressat | 1..* |
| .. ..street | String | Gata | 0..1 |
| .. ..premisesNumber | String | Adressplatsnummer | 0..1 |
| .. ..premisesLetter | String | Adressplatslittera | 0..1 |
| .. ..postCode | String | Postnummer | 1..1 |
| .. ..town | String | Postort | 1..1 |
| ..postalCode | String | Vårdenheten postnummer där verksamheten bedrivs. Ref. postnummer (postalCode) [R5] | 0..1 |
| ..feignedhealthCareUnit | Boolean | true: om vårdenheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |
| ..archivedHealthCareUnit | Boolean | true: om vårdenheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5] | 0..1 |
| ..healthCareProvider | HealthCareProviderType | Den vårdgivare som vårdenheten tillhör | 1..1 |
| .. ..healthCareProviderName | String | Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5] | 1..1 |
| .. ..healthCareProviderPublicName | String | Publikt officiellt namn. Ref. alternativ namnvisning (displayOption) [R5] | 1..1 |
| .. ..healthCareProviderHsaId | String | Vårdgivarens HSA-id. Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| .. ..healthCareProviderOrgNo | String | Vårdgivarens organisationsnummer | 1..1 |
| .. ..healthCareProviderStartDate | dateTime | Startdatum för Vårdgivarens verksamhet. Ref. startdatum (startDate) [R5] | 0..1 |
| .. ..healthCareProviderEndDate | dateTime | Slutdatum för Vårdgivarens verksamhet. Ref. slutdatum (endDate) [R5] | 0..1 |
| .. ..healthCareProviderPrescriptionCode | String | Vårdgivarens arbetsplatskod(-er). Ref. arbetsplatskod (unitPrescriptionCode) [R5] | 0..* |
| .. ..telephoneNumber | String | Vårdgivarens publika direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5] | 0..* |
| .. ..postalAddress | AddressType | Vårdgivarens postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5] | 0..1 |
| .. .. ..addressLine | String | Adressrader | 1..* |
| ..structuredPostalAddress (vårdgivare) | structuredPostalAddressType | Vårdgivarens postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5] | 0..1 |
| .. ..addressee | String | Adressat | 1..* |
| .. ..street | String | Gata | 0..1 |
| .. ..premisesNumber | String | Adressplatsnummer | 0..1 |
| .. ..premisesLetter | String | Adressplatslittera | 0..1 |
| .. ..postCode | String | Postnummer | 1..1 |
| .. ..town | String | Postort | 1..1 |
| .. ..postalCode | String | Vårdgivarens postnummer där verksamheten bedrivs. Ref. postnummer (postalCode) [R5] | 0..1 |
| .. ..feignedHealthCareProvider | Boolean | true: om Vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |
| .. ..archivedHealthCareProvider | Boolean | true: om Vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5] | 0..1 |
| ..healthCareUnitMember | HealthCareUnitMemberType | Information om en kopplad enhet | 0..* |
| .. ..healthCareUnitMemberName | String | Den kopplade enhetens namn. Ref. organisationsnamn (o), enhetsnamn (ou) resp. objektnamn (cn) [R5] | 1..1 |
| .. ..healthCareUnitMemberPublicName | String | Publikt officiellt namn. Ref. alternativ namnvisning (displayOption) [R5] | 1..1 |
| .. ..healthCareUnitMemberHsaId | String | Den kopplade enhetens HSA-id. Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| .. ..healthCareUnitMemberStartDate | dateTime | Startdatum för kopplade enhetens verksamhet. Ref. startdatum (startDate) [R5] | 0..1 |
| .. ..healthCareUnitMemberEndDate | dateTime | Slutdatum för kopplade enhetens verksamhet. Ref. slutdatum (endDate) [R5] | 0..1 |
| .. ..healthCareUnitMemberPrescriptionCode | String | Den kopplade enhetens arbetsplatskod(-er). Ref. arbetsplatskod (unitPrescriptionCode) [R5] | 0..* |
| .. ..healthCareUnitMemberTelephoneNumber | String | Den kopplade enhetens publika direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5] | 0..* |
| .. ..healthCareUnitMemberPostalAddress | AddressType | Den kopplade enhetens postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5] | 0..1 |
| .. .. ..addressLine | String | Adressrader | 1..* |
| .. ..healthCareUnitMemberStructuredPostalAddress | structuredPostalAddressType | Den kopplade enhetens postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5] | 0..1 |
| .. .. ..addressee | String | Adressat | 1..* |
| .. .. ..street | String | Gata | 0..1 |
| .. .. ..premisesNumber | String | Adressplatsnummer | 0..1 |
| .. .. ..premisesLetter | String | Adressplatslittera | 0..1 |
| .. .. ..postCode | String | Postnummer | 1..1 |
| .. .. ..town | String | Postort | 1..1 |
| .. ..healthCareUnitMemberPostalCode | String | Den kopplade enhetens postnummer för där verksamheten bedrivs. Ref. postnummer (postalCode) [R5] | 0..1 |
| .. ..feignedHealthCareUnitMember | Boolean | true: om enheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |
| .. ..archivedHealthCareUnitMember | Boolean | true: om enheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

*1) searchBase
För GetHealthCareUnitMembers används följande sökningar/sökbaser:
- Sök efter vårdenheten: i anropet angiven sökbas
- Sök efter kopplade enheter: här används sökbasen c=se

##### Icke funktionella krav

###### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar. Svarstid ska kunna garanteras upp till angiven last.

| Vårdenhet med kopplade enheter eller inte | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| Svarstid för vårdenhet utan kopplade enheter | 10 anrop/s | 100 ms |
| Svarstid för vårdenhet med kopplade enheter | 1 anrop/s | 1000 ms |

###### Logiska fel
Logiska fel hanteras enligt:
Om sökt vårdenhet inte kan hittas i katalogen, så returneras tomt svar.
Om sökt enhet inte är en vårdenhet, eller saknar någon obligatorisk uppgift (namn, HSA-id eller korrekt utpekning av vårdgivartillhörighet), så returneras tomt svar.
Om vårdgivaren saknar obligatorisk uppgift (Namn, HSA-id, Organisationsnummer) så returneras tomt svar.
Om en kopplad enhet saknar någon obligatorisk uppgift (namn eller HSA-id) så returneras ingen information om den enheten.
för kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron vi tillhandahåller.

#### Annan information om kontraktet
-

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetHealthCareUnitMembersInteraction_2.1_RIVTABP21.wsdl](files/wsdl/GetHealthCareUnitMembersInteraction_2.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetHealthCareUnitMembersResponder_2.1.xsd](files/schema/GetHealthCareUnitMembersResponder_2.1.xsd) | Tjänstespecifikt schema |
| [GetHealthCareUnitMembersResponder_2.1_ext.xsd](files/schema/GetHealthCareUnitMembersResponder_2.1_ext.xsd) | Tjänstespecifikt schema (extension) |
| [infrastructure_directory_organization_5.0.xsd](files/schema/infrastructure_directory_organization_5.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (request):** [StructureDefinition/gethealthcareunitmembers-request](StructureDefinition-gethealthcareunitmembers-request.html)
* **Logisk modell (response):** [StructureDefinition/gethealthcareunitmembers](StructureDefinition-gethealthcareunitmembers.html)

---

### GetUnit
GetUnit returnerar information om den angivna enheten (med enhet avses här alla typer av organisatoriska objekt, d.v.s. både organisation, enhet och funktion). Kan användas av tjänstekonsumenten för att presentera detaljerad information om en enhet i t.ex. en vårdsökning eller en kontaktlista. Notera särskilt att alla attribut inte är obligatoriska och att ytterst få enheter innehåller samtlig information enligt specifikationen nedan.

#### Version
Version på detta kontrakt är 5.0.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| unitHsaId | String | HSA-id för sökt organisatorisk enhet. Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Profile *2) | String | Anger hur mycket information om enheten som begärs. Följande värden finns definierade: basic (bara grundläggande information), extended (även vård- och omsorgsinformation), extended2 (nonPublicTelephoneNumber, måste kombineras), all (default, all tillgänglig information). | 0..* |
| Svar |  |  |  |
| Unit | unitType | Information om den angivna organisatoriska enheten | 0..1 |
| ..alternateName *b) | String | Alternativt namn på enheten. Ref. alternativt namn (ouShort) [R5] | 0..* |
| ..alternateText *b) | String | Beskrivande text till bild på enhet. Ref. [R5] | 0..1 |
| ..businessClassification *e) | BusinessClassificationType | Verksamhetskod | 0..* |
| .. ..businessClassificationName | String | Verksamhetskod(-er) i klartext. Ref. verksamhet (businessClassificationName) [R5] | 1..1 |
| .. ..businessClassificationCode | String | Verksamhetskod(-er) kod. Ref. verksamhetskod (businessClassificationCode) [R5] | 1..1 |
| ..businessType *e) | String | Klassificering av enhet (t.ex. sjukhus). Ref. enhetstyp (hsaBusinessType) [R5] | 0..* |
| ..careType *e) | String | Vårdform. Ref. vård- och omsorgsform (careType) [R5] | 0..* |
| ..countyName *b) | String | Namn på län. Ref. länsnamn (countyName) [R5] | 0..1 |
| ..countyCode *b) | String | Kod för län. Ref. länskod (countyCode) [R5] | 0..1 |
| ..description *e) | String | Allmän beskrivning för enheten. Ref. beskrivning (description) [R5] | 0..1 |
| ..directoryContact *b) | String | Mailadress till ansvarig för informationen om enheten. Ref. innehållsansvarigs e-postadress (hsaDirectoryContact) [R5] | 0..1 |
| ..displayOption *b) | String | Används för att beräkna enhetens publika namn (publicName). Ref. alternativ namnvisning (displayOption) [R5] | 0..1 |
| ..dropInHour *e) | TimeSpan | Tider för dropin-besök (utan tidbokning). Ref. tid för dropin-besök utan tidsbokning (dropInHours) [R5] | 0..* |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| .. ..fromDate | String | Tiden gäller från och med detta datum | 0..1 |
| .. ..toDate | String | Tider gäller till och med detta datum | 0..1 |
| ..mail *b) | String | Mailadress till enheten. Ref. e-postadress (mail) [R5] | 0..1 |
| ..facsimileTelephoneNumber *b) | Telefon | Faxnummer till enheten. Ref. fax (facsimileTelephoneNumber) [R5] | 0..* |
| ..geographicalCoordinatesRt90 *e) | GeoCoordRt90Type | Geografiska koordinater RT90. Ref. geografiska koordinater RT90 (geographicalCoordinates) [R5] | 0..1 |
| .. ..xCoordinate | String | X-koordinat. | 1..1 |
| .. ..yCoordinate | String | Y-koordinat. | 1..1 |
| ..geographicalCoordinatesSWEREF99 (används ej) | GeoCoordSWEREF99Type | Geografiska koordinater SWEREF99. Ref. geografiska koordinater SWEREF 99 TM (geographicalCoordinatesSweref99TM) [R5] | 0..1 |
| .. ..nCoordinate | String | N-koordinat. | 1..1 |
| .. ..eCoordinate | String | E-koordinat. | 1..1 |
| ..geographicalCoordinatesSWEREF99Latitude *e) | String | X-koordinat (N) SWEREF99. Ref. (hsaSweref99Latitude) [R5] | 0..1 |
| ..geographicalCoordinatesSWEREF99Longitude *e) | String | Y-koordinat (E) SWEREF99. Ref. (hsaSweref99Longitude) [R5] | 0..1 |
| ..destinationIndicator *e) | String | Anger vilka parter som får ta del av enhetens information. Ref. visas för (hsaDestinationIndicator) [R5] | 0..* |
| ..unitHsaId *b) | String | Enhetens HSA-id. Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..jpegPhoto *a) | String | Bild för enheten. Base-64-format. Ref. bild (jpegPhoto) [R5] | 0..1 |
| ..jpegLogotype *a) | String | Logotype för enheten. Base-64-format. Ref. logotyp (hsaJpegLogotype) [R5] | 0..1 |
| ..alternateTextLogotype *a) | String | Beskrivande text till logotype för enheten. Ref. [R5] | 0..1 |
| ..labeledUri *b) | String | Fullständig webbadress. Ref. webbadress (labeledURI) [R5] | 0..1 |
| ..location *b) | String | Namn på geografiskt område. Ref. geografisk plats (l, localityName) [R5] | 0..1 |
| ..webPage1177 *b) | String | Länk till Enhetens sida på 1177.se. Ref. 1177-kontaktkortslänk (hsaVpwWebPage) [R5] | 0..1 |
| ..management *e) | String | Ägarform i klartext. Ref. ägarform (management) [R5] | 0..* |
| ..municipalityName *b) | String | Namn på kommun. Ref. kommunnamn (municipalityName) [R5] | 0..1 |
| ..municipalityCode *b) | String | Kod för kommun. Ref. kommunkod (municipalityCode) [R5] | 0..1 |
| ..nonPublicTelephoneNumber *f) | Telefon | Tjänstetelefonnummer. Ref. tjänstetelefon (hsaTelephoneNumber) [R5] | 0..* |
| ..unitName *b) | String | Namnet på enheten. Ref. organisationsnamn (o), enhetsnamn (ou) resp. objektnamn (cn) [R5] | 1..1 |
| ..patientInformation *e) | String | Informationstext till patienter. Ref. [R5] | 0..1 |
| ..postalAddress *b) | Address | Postadress i ostrukturerat format. Ref. [R5] | 0..1 |
| .. ..addressLine | String | Adressrad. | 1..* |
| ..structuredPostalAddress *b) | structuredPostalAddressType | Postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5] | 0..1 |
| .. ..addressee | String | Adressat | 1..* |
| .. ..street | String | Gata | 0..1 |
| .. ..premisesNumber | String | Adressplatsnummer | 0..1 |
| .. ..premisesLetter | String | Adressplatslittera | 0..1 |
| .. ..postCode | String | Postnummer | 1..1 |
| .. ..town | String | Postort | 1..1 |
| ..postalCode *b) | String | Postnummer där verksamheten bedrivs. Ref. [R5] | 0..1 |
| ..publicName *b) | String | Publikt officiellt namn. Ref. alternativ namnvisning (displayOption), organisationsnamn (o), enhetsnamn (ou), objektnamn (cn), resp geografisk plats (l, localityName) [R5] | 1..1 |
| ..relatedUnitHsaId *e) | String | HSA-identitet på en relaterad enhet. Ref. HSA-id (hsaIdentity) [R5] | 0..* |
| ..route *e) | String | Vägbeskrivning. Ref. färdväg (route) [R5] | 0..1 |
| ..indoorRouteDescription *e) | String | Vägbeskrivning inomhus. Ref. inre vägbeskrivning (indoorRouteDescription) [R5] | 0..1 |
| ..schoolType *e) | String | Kod för typ av skolform. Ref. skolform (hsaSchoolType) [R5] | 0..* |
| ..street *e) | String | Besöksadress i ostrukturerat format. Ref. besöksadress (street) [R5] | 0..1 |
| ..structuredVisitingAddress *e) | structuredVisitingAddressType | Besöksadress i strukturerat format. Ref. Strukturerad besöksadress (hsaVisitingAddress) [R5] | 0..1 |
| .. ..street | String | Gata | 1..1 |
| .. ..premisesNumber | String | Adressplatsnummer | 0..1 |
| .. ..premisesLetter | String | Adressplatslittera | 0..1 |
| .. ..town | String | Ortnamn | 0..1 |
| ..surgeryHour *e) | TimeSpan | Öppettider. Ref. öppettider (surgeryHours) [R5] | 0..* |
| .. ..fromDay | String | Från dag. | 1..1 |
| .. ..fromTime | Time | Från tid. | 1..1 |
| .. ..toDay | String | Till dag. | 1..1 |
| .. ..toTime | Time | Till tid. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| .. ..fromDate | String | Från datum. | 0..1 |
| .. ..toDate | String | Till datum. | 0..1 |
| ..switchboardNumber *b) | Telefon | Telefonnummer till växel. Ref. växeltelefon (hsaSwitchboardNumber) [R5] | 0..1 |
| ..telephoneHour *b) | TimeSpan | Telefontider. Ref. telefontid (telephoneHours) [R5] | 0..* |
| .. ..fromDay | String | Från dag. | 1..1 |
| .. ..fromTime | Time | Från tid. | 1..1 |
| .. ..toDay | String | Till dag. | 1..1 |
| .. ..toTime | Time | Till tid. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| .. ..fromDate | String | Från datum. | 0..1 |
| .. ..toDate | String | Till datum. | 0..1 |
| ..telephoneNumber *b) | Telefon | Publikt direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5] | 0..* |
| ..textTelephoneNumber *b) | String | Adress till texttelefon. Ref. texttelefon (hsaTextTelephoneNumber) [R5] | 0..* |
| ..unitExtraInformation *e) | String | Kompletterande information om enheten. Ref. mer om (hsaVpwInformation1) [R5] | 0..1 |
| ..unitFunction *a) | UnitFunctionType | Information från direkta funktionsobjekt med reserverat funktionsnamn. | 0..* |
| .. ..name | String | Funktionens namn. Ref. objektnamn (cn) [R5], kodverk för Reserverade funktionsnamn. | 1..1 |
| .. ..telephoneHour | TimeSpan | Telefontider för funktionen. Ref. telefontid (telephoneHours) [R5] | 0..* |
| .. .. ..fromDay | String | Från dag. | 1..1 |
| .. .. ..fromTime | Time | Från tid. | 1..1 |
| .. .. ..toDay | String | Till dag. | 1..1 |
| .. .. ..toTime | Time | Till tid. | 1..1 |
| .. .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| .. .. ..fromDate | String | Från datum. | 0..1 |
| .. .. ..toDate | String | Till datum. | 0..1 |
| .. ..telephoneNumber | Telefon | Publikt direkttelefonnummer för funktionen. Ref. direkttelefon (telephoneNumber) [R5] | 0..* |
| ..unitTemporaryInformation *e) | DateSpan | Tillfällig information om enheten. Ref. tillfällig information (hsaVpwInformation2) [R5] | 0..1 |
| .. ..fromDate | String | Från datum. | 0..1 |
| .. ..toDate | String | Till datum. | 0..1 |
| .. ..temporaryInformation | String | Tillfällig information | 1..1 |
| ..visitingHour *e) | TimeSpan | Besökstider för anhöriga. Ref. besökstider för anhöriga (visitingHours) [R5] | 0..* |
| .. ..fromDay | String | Från dag. | 1..1 |
| .. ..fromTime | Time | Från tid. | 1..1 |
| .. ..toDay | String | Till dag. | 1..1 |
| .. ..toTime | Time | Till tid. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| .. ..fromDate | String | Från datum. | 0..1 |
| .. ..toDate | String | Till datum. | 0..1 |
| ..videoPhone *b) | String | Adress för kommunikation via bildtelefon. Ref. bildtelefon (hsaVideoPhone) [R5] | 0..1 |
| ..visitingRuleAge *e) | AgeSpan | Åldersintervall på patienter som tas emot. Ref. åldersregler för vårdkontakt (hsaVisitingRuleAge) [R5] | 0..* |
| .. ..fromAge | String | Från ålder. 00 för nyfödd. | 1..1 |
| .. ..toAge | String | Till ålder. 99 för ingen övre åldersgräns. | 1..1 |
| .. ..comment | String | Kommentar till åldersintervallet | 0..1 |
| ..referralRules *b) | String | Beskrivning av remisskrav. Ref. remisskrav (hsaVisitingRuleReferral) [R5] | 0..1 |
| ..visitingRules *e) | String | Besöksregler. Ref. besöksregler för anhöriga (hsaVisitingRules) [R5] | 0..1 |
| ..unitStartDate *b) | dateTime | Startdatum för enhetens verksamhet. Ref. startdatum (startDate) [R5] | 0..1 |
| ..unitEndDate *b) | dateTime | Slutdatum för enhetens verksamhet. Ref. slutdatum (endDate) [R5] | 0..1 |
| ..feignedUnit *b) | Boolean | true: om enheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |
| ..financingOrganization *b) | String | Organisationsnummer för finansierande landsting/kommuner. Ref. (financingOrganization) [R5] | 0..* |
| ..administrativeCareLevel *e) | String | Kod för nivå av specialisering i hälso- och sjukvård. Ref. (hsaAdministrativeCareLevel) [R5] | 0..* |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

*1) searchBase
För GetUnit används följande sökningar/sökbaser:
- Sök efter enheten: i anropet angiven sökbas

*2) profile
För att begränsa mängden information som returneras från GetUnit kan profile-parametern användas. Följande profiler finns definierade:
- **basic**: bara grundläggande information returneras, dvs de attribut som markerats med *b) ovan.
- **extended**: både grundläggande information och information som är relaterad till vård och omsorg returneras, dvs alla attribut som markerats med *b) eller *e) ovan returneras.
- **extended2**: även nonPublicTelephoneNumber returneras, attribut markerat med *f), måste kombineras med ytterligare profilevärde.
- **all**: som också är default (dvs om ingen profil-parameter anges, tolkas det som "all"), all tillgänglig information returneras förutom nonPublicTelephoneNumber, dvs både de attribut som markerats med *b), *e) och *a) returneras.

##### Icke funktionella krav

###### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar. Svarstid ska kunna garanteras upp till angiven last.

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetUnit | 10 anrop/s | 200 ms |

###### Logiska fel
Logiska fel hanteras enligt:
Om angiven sökbas inte finns i katalogen, returneras ett tomt svar.
Om sökt enhet inte kan hittas i katalogen, så returneras tomt svar.
Om enheten saknar obligatorisk uppgift (Namn och HSA-id) så returneras tomt svar.
För komplexa returvärden som inte följer specificerad syntax m a p sammansättningen, returneras inte det aktuella värdet. Detta gäller för:
- Verksamhetskod som utgår från separata attribut i HSA (kod och klartext) som behöver kunna matchas ihop.
- Län och Kommun som utgår från separata attribut i HSA (kod och klartext för Län samt kod och klartext för Kommun) som alla behöver kunna matchas ihop.
- Tider (dropInHour, surgeryHour, telephoneHour och visitingHour) ska innehålla 4 eller upp till 7 delar separerade med "#".
- Koordinater (geographicalCoordinatesRt90 och geographicalCoordinatesSWEREF99) som ska innehåll två delar separerade med ",".
- unitTemporaryInformation som ska innehålla 3 delar separerade med ";".
- visitingRuleAge som ska innehålla 2 eller 3 delar separerade med ";".
för kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron vi tillhandahåller.

#### Annan information om kontraktet
-

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetUnitInteraction_5.0_RIVTABP21.wsdl](files/wsdl/GetUnitInteraction_5.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetUnitResponder_5.0.xsd](files/schema/GetUnitResponder_5.0.xsd) | Tjänstespecifikt schema |
| [infrastructure_directory_organization_5.0.xsd](files/schema/infrastructure_directory_organization_5.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (request):** [StructureDefinition/getunit-request](StructureDefinition-getunit-request.html)
* **Logisk modell (response):** [StructureDefinition/getunit](StructureDefinition-getunit.html)

---

### GetHealthCareProvider
Metoden söker ut och returnerar information om en vårdgivare. Kan användas av tjänstekonsumenten för att hämta information som HSA-id, organisationsnummer, namn, eller eventuella start- och slutdatum för en vårdgivare. Notera att det kan förekomma att en och samma vårdgivare (utgående från organisationsnummer) kan finnas registrerad flera gånger med olika HSA-id.

#### Version
Version på detta kontrakt är 1.0.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareProviderHsaId | String | HSA-id för en vårdgivare enligt PDL. Ref. HSA-id (hsaIdentity) [R5] | 0..1 *1) |
| healthCareProviderOrgNo | String | Organisationsnummer för en vårdgivare | 0..1 *1) |
| searchBase *2) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| healthCareProvider | HealthCareProviderType |  | 0..* |
| ..healthCareProviderHsaId | String | Vårdgivarens HSA-id. Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..healthCareProviderName | String | Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5] | 1..1 |
| ..healthCareProviderOrgNo | String | Vårdgivarens organisationsnummer. Ref. organisationsnummer (orgNo) [R5] | 1..1 |
| ..healthCareProviderStartDate | dateTime | Startdatum för vårdgivarens verksamhet. Ref. startdatum (startDate) [R5] | 0..1 |
| ..healthCareProviderEndDate | dateTime | Slutdatum för vårdgivarens verksamhet. Ref. slutdatum (endDate) [R5] | 0..1 |
| ..feignedHealthCareProvider | Boolean | true: om vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |
| ..archivedHealthCareProvider | Boolean | true: om vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

*1) healthCareProviderHsaId och healthCareProviderOrgNo
Exakt ett av fälten ska anges.

*2) searchBase
För GetHealthCareProvider används följande sökningar/sökbaser:
- Sök efter vårdgivare: i anropet angiven sökbas

##### Icke funktionella krav

###### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar. Svarstid ska kunna garanteras upp till angiven last.

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetHealthCareProvider | 10 anrop/s | 100 ms |

###### Logiska fel
Logiska fel hanteras enligt:
Om angiven sökbas inte finns i katalogen, returneras ett tomt svar.
Om sökt vårdgivare inte kan hittas i katalogen, så returneras tomt svar.
Om sökt vårdgivare inte är en vårdgivare, så returneras tomt svar.
Om fler än en av sökparametrarna healthCareProviderHsaId och healthCareProviderOrgNo har angetts, så är anropet felaktigt och ett soap-fault returneras.
Om vårdgivaren saknar någon obligatorisk uppgift så returneras tomt svar. Dvs om Namn, HSA-id, eller organisationsnummer saknas eller inte följer specificerad syntax så returneras tomt svar.
För kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron vi tillhandahåller.

#### Annan information om kontraktet
-

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetHealthCareProviderInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetHealthCareProviderInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetHealthCareProviderResponder_1.0.xsd](files/schema/GetHealthCareProviderResponder_1.0.xsd) | Tjänstespecifikt schema |
| [infrastructure_directory_organization_5.0.xsd](files/schema/infrastructure_directory_organization_5.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (request):** [StructureDefinition/gethealthcareprovider-request](StructureDefinition-gethealthcareprovider-request.html)
* **Logisk modell (response):** [StructureDefinition/gethealthcareprovider](StructureDefinition-gethealthcareprovider.html)
