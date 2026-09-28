# 7 Tjänstekontrakt - strategicresourcemanagement: organizational: organization v2.0.0-rc1

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

# 7 Tjänstekontrakt

Källa: **Tjänstekontraktsbeskrivning strategicresourcemanagement: organizational: organization**, commit b349285d18c2 (2017-02-27, efter taggen 2.0_RC1), [TKB_strategicresourcemanagement_organizational_organization.docx](TKB_strategicresourcemanagement_organizational_organization.docx).

> **Utgången domän.** Domänen kom aldrig längre än 2.0_RC1. I september 2017 flyttades tjänstekontrakten till infrastructure.directory.organization, som har en egen IG, och domänens repo är sedan dess tomt. IG:n dokumenterar den sista versionen med innehåll.

Motsvarar TKB kapitel 6 **Tjänstekontrakt** (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### GetHealthCareUnit

Metoden söker ut vilken vårdenhet den angivna enheten eller funktionen är kopplad till. Kan användas av tjänstekonsumenten för att koppla ihop en enhet eller funktion i ett vårdsystem med vårdenhet i enlighet med PDL. Notera särskilt att alla enheter inte är kopplade till en vårdenhet. Om enheten i sig själv är utpekad som vårdenhet markeras detta med en flagga i svaret.

#### 7.1.1 Version

Version på detta kontrakt är .

#### 7.1.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

**De inklippta Exceldokumenten återges i [bilagan](8-bilaga-attributtabeller.md): [attributtabell A](8-bilaga-attributtabeller.md#attributtabell-a) och [attributtabellen för GetHealthCareUnit](8-bilaga-attributtabeller.md#attributtabell-gethealthcareunit).**

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| healthCareUnitMemberHsaId | String | HSA-id för en enhet eller funktion som är kopplad till en vårdenhet enligt PDL. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |   |   |   |
| healthCareUnit | HealthCareUnitType |   | 0..1 |
| ..healthCareUnitMemberHsaId | String | Enhetens (funktionens) HSA-id | 0..1 |
| ..healthCareUnitMemberName | String | Enhetens (funktionens) namn | 0..1 |
| ..healthCareUnitMemberStartDate | dateTime | Startdatum för enhetens (funktionens) verksamhet | 0..1 |
| ..healthCareUnitMemberEndDate | dateTime | Slutdatum för enhetens (funktionens) verksamhet | 0..1 |
| ..healthCareUnitHsaId | String | Vårdenhetens HSA-id | 1..1 |
| ..unitIsHealthCareUnit | Boolean | True, om enheten (funktionen) själv är en vårdenhet / Om enheten (funktionen) inte är vårdenhet kommer inget värde att returneras. | 0..1 |
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
|   |   |   |   |
|   |   |   |   |

#### 7.1.3 Tjänstekontraktsspecifika krav och regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

*1) searchBase

För GetHealthCareUnit används följande sökningar/sökbaser:

* Sök efter kopplad enhet: i anropet angiven sökbas
* Sök efter vårdenhet: i anropet angiven sökbas
* Sök efter vårdgivare: i anropet angiven sökbas

##### 7.1.3.1 Icke funktionella krav

###### 7.1.3.1.1 SLA-krav

Svarstider är specifika för respektive tjänstekontrakt.

Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| | | |
| :--- | :--- | :--- |
| GetHealthCareUnit | 10 anrop/s | 100 ms |

###### 7.1.3.1.2 Logiska fel

#### 7.1.4 Annan information om kontraktet

Information returneras endast om angiven enhet är kopplad till en vårdenhet, om den angivna enheten inte är det, t ex om den i sig själv är en vårdenhet, returneras ingen vårdenhetsinformation.

#### 7.1.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| healthCareUnitMemberHsaId | string |   | 1..1 |
| searchBase | DNType |   | 0..1 |
| includeFeignedObject | boolean |   | 0..1 |
| **Svar** |   |   |   |
| healthCareUnit | HealthCareUnitType |   | 0..1 |
| ../unitIsHealthCareUnit | boolean |   | 0..1 |
| ../healthCareUnitMemberHsaId | string |   | 0..1 |
| ../healthCareUnitMemberName | string |   | 0..1 |
| ../healthCareUnitMemberStartDate | dateTime |   | 0..1 |
| ../healthCareUnitMemberEndDate | dateTime |   | 0..1 |
| ../healthCareUnitHsaId | string |   | 1..1 |
| ../healthCareUnitName | string |   | 1..1 |
| ../healthCareUnitStartDate | dateTime |   | 0..1 |
| ../healthCareUnitEndDate | dateTime |   | 0..1 |
| ../healthCareProviderHsaId | string |   | 1..1 |
| ../healthCareProviderName | string |   | 1..1 |
| ../healthCareProviderOrgNo | string |   | 1..1 |
| ../healthCareProviderStartDate | dateTime |   | 0..1 |
| ../healthCareProviderEndDate | dateTime |   | 0..1 |
| ../feignedHealthCareUnitMember | boolean |   | 0..1 |
| ../feignedHealthCareUnit | boolean |   | 0..1 |
| ../feignedHealthCareProvider | boolean |   | 0..1 |
| ../archivedHealthCareUnitMember | boolean |   | 0..1 |
| ../archivedHealthCareUnit | boolean |   | 0..1 |
| ../archivedHealthCareProvider | boolean |   | 0..1 |

#### 7.1.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitResponder:2:GetHealthCareUnit`

#### 7.1.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetHealthCareUnitInteraction_2.0_RIVTABP21.wsdl](GetHealthCareUnitInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetHealthCareUnitResponder_2.0.xsd](GetHealthCareUnitResponder_2.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_organizational_organization_2.0.xsd](strategicresourcemanagement_organizational_organization_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [itintegration_monitoring_1.0.xsd](itintegration_monitoring_1.0.xsd) | Övervakning (delat) |

#### 7.1.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/gethealthcareunit-request](StructureDefinition-gethealthcareunit-request.md)
* **Logisk modell (response):** [StructureDefinition/gethealthcareunit](StructureDefinition-gethealthcareunit.md)

### GetHealthCareUnitList

Metoden söker fram och listar en angiven vårdgivares alla vårdenheter, definierade enligt PDL. Kan användas av tjänstekonsumenten för att t.ex. skapa en förvalslista i ett användargränssnitt.

#### 7.2.1 Version

Version på detta kontrakt är .

#### 7.2.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

**De inklippta Exceldokumenten återges i [bilagan](8-bilaga-attributtabeller.md): [attributtabell A](8-bilaga-attributtabeller.md#attributtabell-a) och [attributtabellen för GetHealthCareUnitList](8-bilaga-attributtabeller.md#attributtabell-gethealthcareunitlist).**

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| healthCareProviderHsaId | String | Vårdgivarens HSA-id. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. / / searchBase används både för sökning av den kopplade enheten, vårdenheten och vårdgivaren. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |   |   |   |
| healthCareUnitList | HealthCareUnitListType |   | 0..1 |
| ..healthCareProviderHsaId | String | Vårdgivarens HSA-id | 1..1 |
| ..healthCareProviderName | String | Vårdgivarens namn | 1..1 |
|   |   |   |   |
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
|   |   |   |   |
|   |   |   |   |

#### 7.2.3 Tjänstekontraktsspecifika krav och regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

*1) searchBase

För GetHealthCareUnitList används följande sökningar/sökbaser:

* Sök efter vårdgivaren: i anropet angiven sökbas
* Sök efter vårdenheter: i anropet angiven sökbas

##### 7.2.3.1 Icke funktionella krav

###### 7.2.3.1.1 SLA-krav

Svarstider är specifika för respektive tjänstekontrakt.

Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| | | |
| :--- | :--- | :--- |
| GetHealthCareUnitList | 1 anrop/s | 2000 ms |

###### 7.2.3.1.2 Logiska fel

#### 7.2.4 Annan information om kontraktet

-

#### 7.2.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| healthCareProviderHsaId | string |   | 1..1 |
| searchBase | DNType |   | 0..1 |
| includeFeignedObject | boolean |   | 0..1 |
| **Svar** |   |   |   |
| healthCareUnitList | HealthCareUnitListType |   | 0..1 |
| ../healthCareProviderHsaId | string |   | 1..1 |
| ../healthCareProviderName | string |   | 1..1 |
| ../healthCareProviderOrgNo | string |   | 1..1 |
| ../healthCareProviderStartDate | dateTime |   | 0..1 |
| ../healthCareProviderEndDate | dateTime |   | 0..1 |
| ../healthCareUnit | HealthCareUnitType |   | 0..* |
| ../../healthCareUnitHsaId | string |   | 1..1 |
| ../../healthCareUnitName | string |   | 1..1 |
| ../../healthCareUnitStartDate | dateTime |   | 0..1 |
| ../../healthCareUnitEndDate | dateTime |   | 0..1 |
| ../../feignedHealthCareUnit | boolean |   | 0..1 |
| ../../archivedHealthCareUnit | boolean |   | 0..1 |
| ../feignedHealthCareProvider | boolean |   | 0..1 |
| ../archivedHealthCareProvider | boolean |   | 0..1 |

#### 7.2.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitListResponder:2:GetHealthCareUnitList`

#### 7.2.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetHealthCareUnitListInteraction_2.0_RIVTABP21.wsdl](GetHealthCareUnitListInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetHealthCareUnitListResponder_2.0.xsd](GetHealthCareUnitListResponder_2.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_organizational_organization_2.0.xsd](strategicresourcemanagement_organizational_organization_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [itintegration_monitoring_1.0.xsd](itintegration_monitoring_1.0.xsd) | Övervakning (delat) |

#### 7.2.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/gethealthcareunitlist-request](StructureDefinition-gethealthcareunitlist-request.md)
* **Logisk modell (response):** [StructureDefinition/gethealthcareunitlist](StructureDefinition-gethealthcareunitlist.md)

### GetHealthCareUnitMembers

Metoden söker fram alla kopplade enheter för den angivna vårdenheten. Kan användas av tjänstekonsumenten för att se vilka mottagningar och avdelningar som ingår i en klinik eller för att i ett användargränssnitt skapa en förvalslista med samtliga arbetsplatskoder kopplade till vårdenheten. Notera särskilt att alla enheter inte är kopplade till en vårdenhet och att samtliga arbetsplatskoder inte finns registrerade.

#### 7.3.1 Version

Version på detta kontrakt är .

#### 7.3.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

**De inklippta Exceldokumenten återges i [bilagan](8-bilaga-attributtabeller.md): [attributtabell A](8-bilaga-attributtabeller.md#attributtabell-a) och [attributtabellen för GetHealthCareUnitMembers](8-bilaga-attributtabeller.md#attributtabell-gethealthcareunitmembers).**

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| healthCareUnitHsaId | String | HSA-id för vårdenhet enligt PDL. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |   |   |   |
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
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |
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
|   |   |   |   |
|   |   |   |   |

#### 7.3.3 Tjänstekontraktsspecifika krav och regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

*1) searchBase

För GetHealthCareUnitMembers används följande sökningar/sökbaser:

* Sök efter vårdenheten: i anropet angiven sökbas
* Sök efter kopplade enheter: här används sökbasen c=se

##### 7.3.3.1 Icke funktionella krav

###### 7.3.3.1.1 SLA-krav

Svarstider är specifika för respektive tjänstekontrakt.

Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| | | |
| :--- | :--- | :--- |
| Svarstid för vårdenhet utan kopplade enheter | 10 anrop/s | 100 ms |
| Svarstid för vårdenhet med kopplade enheter | 1 anrop/s | 1000 ms |

###### 7.3.3.1.2 Logiska fel

#### 7.3.4 Annan information om kontraktet

-

#### 7.3.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| healthCareUnitHsaId | string |   | 1..1 |
| searchBase | DNType |   | 0..1 |
| includeFeignedObject | boolean |   | 0..1 |
| **Svar** |   |   |   |
| healthCareUnitMembers | HealthCareUnitMembersType |   | 0..1 |
| ../healthCareUnitName | string |   | 1..1 |
| ../healthCareUnitHsaId | string |   | 1..1 |
| ../healthCareUnitStartDate | dateTime |   | 0..1 |
| ../healthCareUnitEndDate | dateTime |   | 0..1 |
| ../healthCareUnitPrescriptionCode | string |   | 0..* |
| ../telephoneNumber | TelephoneNumberType |   | 0..* |
| ../postalAddress | AddressType |   | 0..1 |
| ../../addressLine | string |   | 1..* |
| ../postalCode | string |   | 0..1 |
| ../feignedHealthCareUnit | boolean |   | 0..1 |
| ../archivedHealthCareUnit | boolean |   | 0..1 |
| ../healthCareProvider | HealthCareProviderType |   | 1..1 |
| ../../healthCareProviderName | string |   | 1..1 |
| ../../healthCareProviderHsaId | string |   | 1..1 |
| ../../healthCareProviderOrgNo | string |   | 1..1 |
| ../../healthCareProviderStartDate | dateTime |   | 0..1 |
| ../../healthCareProviderEndDate | dateTime |   | 0..1 |
| ../../healthCareProviderPrescriptionCode | string |   | 0..* |
| ../../telephoneNumber | TelephoneNumberType |   | 0..* |
| ../../postalAddress | AddressType |   | 0..1 |
| ../../../addressLine | string |   | 1..* |
| ../../postalCode | string |   | 0..1 |
| ../../feignedHealthCareProvider | boolean |   | 0..1 |
| ../../archivedHealthCareProvider | boolean |   | 0..1 |
| ../healthCareUnitMember | HealthCareUnitMemberType |   | 0..* |
| ../../healthCareUnitMemberName | string |   | 1..1 |
| ../../healthCareUnitMemberHsaId | string |   | 1..1 |
| ../../healthCareUnitMemberStartDate | dateTime |   | 0..1 |
| ../../healthCareUnitMemberEndDate | dateTime |   | 0..1 |
| ../../healthCareUnitMemberPrescriptionCode | string |   | 0..* |
| ../../healthCareUnitMemberTelephoneNumber | TelephoneNumberType |   | 0..* |
| ../../healthCareUnitMemberpostalAddress | AddressType |   | 0..1 |
| ../../../addressLine | string |   | 1..* |
| ../../healthCareUnitMemberpostalCode | string |   | 0..1 |
| ../../feignedHealthCareUnitMember | boolean |   | 0..1 |
| ../../archivedHealthCareUnitMember | boolean |   | 0..1 |

#### 7.3.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitMembersResponder:2:GetHealthCareUnitMembers`

#### 7.3.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetHealthCareUnitMembersInteraction_2.0_RIVTABP21.wsdl](GetHealthCareUnitMembersInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetHealthCareUnitMembersResponder_2.0.xsd](GetHealthCareUnitMembersResponder_2.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_organizational_organization_2.0.xsd](strategicresourcemanagement_organizational_organization_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [itintegration_monitoring_1.0.xsd](itintegration_monitoring_1.0.xsd) | Övervakning (delat) |

#### 7.3.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/gethealthcareunitmembers-request](StructureDefinition-gethealthcareunitmembers-request.md)
* **Logisk modell (response):** [StructureDefinition/gethealthcareunitmembers](StructureDefinition-gethealthcareunitmembers.md)

### GetUnit

GetUnit returnerar information om den angivna enheten (med enhet avses här alla typer av organisatoriska objekt, d.v.s. både organisation, enhet och funktion). Kan användas av tjänstekonsumenten för att presentera detaljerad information om en enhet i t.ex. en vårdsökning eller en kontaktlista. Notera särskilt att alla attribut inte är obligatoriska och att ytterst få enheter innehåller samtlig information enligt nedan specifikation.

#### 7.4.1 Version

Version på detta kontrakt är .

#### 7.4.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

**De inklippta Exceldokumenten återges i [bilagan](8-bilaga-attributtabeller.md): [attributtabell A](8-bilaga-attributtabeller.md#attributtabell-a) och [attributtabellen för GetUnit](8-bilaga-attributtabeller.md#attributtabell-getunit).**

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| unitHsaId | String | HSA-id för sökt organisatorisk enhet. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |   |   |   |
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
| ..labeledUri | String | Fullständig webbadress (inklusive http:// eller https://) | 0..1 |
| ..location | String | Namn på geografiskt område där enheten i huvudsak är placerad. | 0..1 |
| ..webPage1177 | String | Länk till Enhetens sida på 1177.se (om enheten är publik och finns på 1177.se) | 0..1 |
| ..management | String | Ägarform i klartext. | 0..n |
| ..municipality | String | Namn på kommun. | 0..1 |
| ..municipalityCode | String | Kod för kommun. | 0..1 |
|   |   |   |   |
| ..unitName | String | Namnet på enheten | 1..1 |
| ..patientInformation | String | Informationstext till patienter. | 0..1 |
| ..postalAddress | Address | Postadress. | 0..1 |
| .. ..addressLine | String | Adressrad. | 1..n |
| ..postalCode | String | Postnummer där verksamheten bedrivs | 0..1 |
| ..priceInformation | String | Prisinformation. | 0..1 |
| ..publicName | String | Publikt officiellt namn. / Det publika namnet beräknas i första hand utifrån enhetens DN tillsammans med värdet i attributet displayOption. / Om displayOption saknas beräknas det publika namnet enligt: / enhetens namn`<blanktecken>`location | 1..1 |
| ..relatedUnitHsaId | String | HSA-identitet på en enhet som på något sätt hör ihop med aktuell enhet. | 0..n |
| ..route | String | Vägbeskrivning. | 0..1 |
|   |   |   |   |
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
| ..unitFunction | UnitFunctionType | Information från direkt underliggande funktionsobjekt med reservera funktionsnamn Avbokning Rådgivning | 0..n |
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
|   |   |   |   |
|   |   |   |   |

#### 7.4.3 Tjänstekontraktsspecifika krav och regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

*1) searchBase

För GetUnit används följande sökningar/sökbaser:

* Sök efter enheten: i anropet angiven sökbas

##### 7.4.3.1 Icke funktionella krav

###### 7.4.3.1.1 SLA-krav

Svarstider är specifika för respektive tjänstekontrakt.

Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| | | |
| :--- | :--- | :--- |
| GetUnit | 10 anrop/s | 200 ms |

###### 7.4.3.1.2 Logiska fel

#### 7.4.4 Annan information om kontraktet

-

#### 7.4.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| unitHsaId | string |   | 1..1 |
| searchBase | DNType |   | 0..1 |
| includeFeignedObject | boolean |   | 0..1 |
| **Svar** |   |   |   |
| unit | unitType |   | 0..1 |
| ../alternateName | string |   | 0..* |
| ../alternateText | string |   | 0..1 |
| ../businessClassification | BusinessClassificationType |   | 0..* |
| ../../businessClassificationName | string |   | 0..1 |
| ../../businessClassificationCode | string |   | 0..1 |
| ../businessType | string |   | 0..* |
| ../careType | string |   | 0..* |
| ../countyName | string |   | 0..1 |
| ../countyCode | string |   | 0..1 |
| ../description | string |   | 0..1 |
| ../directoryContact | string |   | 0..1 |
| ../displayOption | string |   | 0..1 |
| ../dropInHour | TimeSpanType |   | 0..* |
| ../../fromDay | string |   | 1..1 |
| ../../fromTime | time |   | 1..1 |
| ../../toDay | string |   | 1..1 |
| ../../toTime | time |   | 1..1 |
| ../../comment | string |   | 0..1 |
| ../mail | string |   | 0..1 |
| ../facsimileTelephoneNumber | TelephoneNumberType |   | 0..* |
| ../geographicalCoordinatesRt90 | GeoCoordRt90Type |   | 0..1 |
| ../../xCoordinate | string |   | 1..1 |
| ../../yCoordinate | string |   | 1..1 |
| ../geographicalCoordinatesSWEREF99 | GeoCoordSWEREF99Type |   | 0..1 |
| ../../nCoordinate | string |   | 1..1 |
| ../../eCoordinate | string |   | 1..1 |
| ../healthCareArea | string |   | 0..1 |
| ../destinationIndicator | string |   | 0..* |
| ../unitHsaId | string |   | 1..1 |
| ../jpegPhoto | string |   | 0..1 |
| ../jpegLogotype | string |   | 0..1 |
| ../labeledUri | string |   | 0..1 |
| ../location | string |   | 0..1 |
| ../webPage1177 | string |   | 0..1 |
| ../management | string |   | 0..* |
| ../municipalityName | string |   | 0..1 |
| ../municipalityCode | string |   | 0..1 |
| ../unitName | string |   | 1..1 |
| ../patientInformation | string |   | 0..1 |
| ../postalAddress | AddressType |   | 0..1 |
| ../../addressLine | string |   | 1..* |
| ../postalCode | string |   | 0..1 |
| ../priceInformation | string |   | 0..1 |
| ../publicName | string |   | 1..1 |
| ../relatedUnitHsaId | string |   | 0..* |
| ../route | string |   | 0..1 |
| ../smsTelephoneNumber | TelephoneNumberType |   | 0..1 |
| ../street | string |   | 0..1 |
| ../surgeryHour | TimeSpanType |   | 0..* |
| ../../fromDay | string |   | 1..1 |
| ../../fromTime | time |   | 1..1 |
| ../../toDay | string |   | 1..1 |
| ../../toTime | time |   | 1..1 |
| ../../comment | string |   | 0..1 |
| ../switchboardNumber | TelephoneNumberType |   | 0..1 |
| ../telephoneHour | TimeSpanType |   | 0..* |
| ../../fromDay | string |   | 1..1 |
| ../../fromTime | time |   | 1..1 |
| ../../toDay | string |   | 1..1 |
| ../../toTime | time |   | 1..1 |
| ../../comment | string |   | 0..1 |
| ../telephoneNumber | TelephoneNumberType |   | 0..* |
| ../textTelephoneNumber | TelephoneNumberType |   | 0..* |
| ../unitExtraInformation | string |   | 0..1 |
| ../unitFunction | UnitFunctionType |   | 0..* |
| ../../name | string |   | 1..1 |
| ../../telephoneHour | TimeSpanType |   | 0..* |
| ../../../fromDay | string |   | 1..1 |
| ../../../fromTime | time |   | 1..1 |
| ../../../toDay | string |   | 1..1 |
| ../../../toTime | time |   | 1..1 |
| ../../../comment | string |   | 0..1 |
| ../../telephoneNumber | TelephoneNumberType |   | 0..* |
| ../unitTemporaryInformation | DateSpanType |   | 0..1 |
| ../../fromDate | string |   | 1..1 |
| ../../toDate | string |   | 1..1 |
| ../../temporaryInformation | string |   | 1..1 |
| ../visitingHour | TimeSpanType |   | 0..* |
| ../../fromDay | string |   | 1..1 |
| ../../fromTime | time |   | 1..1 |
| ../../toDay | string |   | 1..1 |
| ../../toTime | time |   | 1..1 |
| ../../comment | string |   | 0..1 |
| ../visitingRuleAge | AgeSpanType |   | 0..1 |
| ../../fromAge | string |   | 1..1 |
| ../../toAge | string |   | 1..1 |
| ../../comment | string |   | 0..1 |
| ../referralRules | string |   | 0..1 |
| ../visitingRules | string |   | 0..1 |
| ../unitStartDate | dateTime |   | 0..1 |
| ../unitEndDate | dateTime |   | 0..1 |
| ../feignedUnit | boolean |   | 0..1 |

#### 7.4.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:organizational:organization:GetUnitResponder:2:GetUnit`

#### 7.4.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetUnitInteraction_2.0_RIVTABP21.wsdl](GetUnitInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetUnitResponder_2.0.xsd](GetUnitResponder_2.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_organizational_organization_2.0.xsd](strategicresourcemanagement_organizational_organization_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [itintegration_monitoring_1.0.xsd](itintegration_monitoring_1.0.xsd) | Övervakning (delat) |

#### 7.4.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getunit-request](StructureDefinition-getunit-request.md)
* **Logisk modell (response):** [StructureDefinition/getunit](StructureDefinition-getunit.md)

### GetHealthCareUnitIncludingManager

Metoden söker ut vilken vårdenhet den angivna enheten eller funktionen är kopplad till. Kan användas av tjänstekonsumenten för att koppla ihop en enhet eller funktion i ett vårdsystem med vårdenhet i enlighet med PDL. Notera särskilt att alla enheter inte är kopplade till en vårdenhet. Om enheten i sig själv är utpekad som vårdenhet markeras detta med en flagga i svaret. Metoden är identisk med GetHealthCareUnit men innehåller även attribut för utpekad verksamhetschef i söksvaret.

#### 7.5.1 Version

Version på detta kontrakt är .

#### 7.5.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

**De inklippta Exceldokumenten återges i [bilagan](8-bilaga-attributtabeller.md): [attributtabell A](8-bilaga-attributtabeller.md#attributtabell-a) och [attributtabellen för GetHealthCareUnitIncludingManager](8-bilaga-attributtabeller.md#attributtabell-gethealthcareunitincludingmanager).**

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| healthCareUnitMemberHsaId | String | HSA-id för en enhet (funktion) som är kopplad till en vårdenhet enligt PDL. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |   |   |   |
| healthCareUnit | HealthCareUnitType |   | 0..1 |
| ..healthCareUnitMemberHsaId | String | Enhetens (funktionens) HSA-id | 0..1 |
| ..healthCareUnitMemberName | String | Enhetens (funktionens) namn | 0..1 |
| ..healthCareUnitMemberStartDate | dateTime | Startdatum för enhetens (funktionens) verksamhet | 0..1 |
| ..healthCareUnitMemberEndDate | dateTime | Slutdatum för enhetens (funktionens) verksamhet | 0..1 |
| ..healthCareUnitHsaId | String | Vårdenhetens HSA-id | 1..1 |
| ..unitIsHealthCareUnit | Boolean | True, om enheten själv är en vårdenhet / Om enhet inte är vårdenhet kommer inget värde att returneras. | 0..1 |
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
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |

#### 7.5.3 Tjänstekontraktsspecifika krav och regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

*1) searchBase

För GetHealthCareUnitIncludingManager används följande sökningar/sökbaser:

* Sök efter kopplad enhet: i anropet angiven sökbas
* Sök efter vårdenhet: i anropet angiven sökbas
* Sök efter vårdgivare: i anropet angiven sökbas
* Sök efter verksamhetschef: i anropet angiven sökbas

##### 7.5.3.1 Icke funktionella krav

###### 7.5.3.1.1 SLA-krav

Svarstider är specifika för respektive tjänstekontrakt.

Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| | | |
| :--- | :--- | :--- |
| GetHealthCareUnit | 10 anrop/s | 100 ms |

###### 7.5.3.1.2 Logiska fel

#### 7.5.4 Annan information om kontraktet

Information returneras endast om angiven enhet är kopplad till en vårdenhet, om den angivna enheten inte är det, t ex om den i sig själv är en vårdenhet, returneras ingen vårdenhetsinformation.

#### 7.5.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| healthCareUnitMemberHsaId | string |   | 1..1 |
| searchBase | DNType |   | 0..1 |
| includeFeignedObject | boolean |   | 0..1 |
| **Svar** |   |   |   |
| healthCareUnit | HealthCareUnitIncludingManagerType |   | 0..1 |
| ../healthCareUnitMemberHsaId | string |   | 0..1 |
| ../healthCareUnitMemberName | string |   | 0..1 |
| ../healthCareUnitMemberStartDate | dateTime |   | 0..1 |
| ../healthCareUnitMemberEndDate | dateTime |   | 0..1 |
| ../healthCareUnitHsaId | string |   | 1..1 |
| ../unitIsHealthCareUnit | boolean |   | 0..1 |
| ../healthCareUnitName | string |   | 1..1 |
| ../healthCareUnitManagerHsaId | string |   | 0..1 |
| ../healthCareUnitStartDate | dateTime |   | 0..1 |
| ../healthCareUnitEndDate | dateTime |   | 0..1 |
| ../healthCareProviderHsaId | string |   | 1..1 |
| ../healthCareProviderName | string |   | 1..1 |
| ../healthCareProviderOrgNo | string |   | 1..1 |
| ../healthCareProviderStartDate | dateTime |   | 0..1 |
| ../healthCareProviderEndDate | dateTime |   | 0..1 |
| ../feignedHealthCareUnitMember | boolean |   | 0..1 |
| ../feignedHealthCareUnit | boolean |   | 0..1 |
| ../feignedHealthCareProvider | boolean |   | 0..1 |
| ../feignedHealthCareUnitManager | boolean |   | 0..1 |
| ../archivedHealthCareUnitMember | boolean |   | 0..1 |
| ../archivedHealthCareUnit | boolean |   | 0..1 |
| ../archivedHealthCareProvider | boolean |   | 0..1 |

#### 7.5.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitIncludingManagerResponder:2:GetHealthCareUnitIncludingManager`

#### 7.5.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetHealthCareUnitIncludingManagerInteraction_2.0_RIVTABP21.wsdl](GetHealthCareUnitIncludingManagerInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetHealthCareUnitIncludingManagerResponder_2.0.xsd](GetHealthCareUnitIncludingManagerResponder_2.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_organizational_organization_2.0.xsd](strategicresourcemanagement_organizational_organization_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [itintegration_monitoring_1.0.xsd](itintegration_monitoring_1.0.xsd) | Övervakning (delat) |

#### 7.5.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/gethealthcareunitincludingmanager-request](StructureDefinition-gethealthcareunitincludingmanager-request.md)
* **Logisk modell (response):** [StructureDefinition/gethealthcareunitincludingmanager](StructureDefinition-gethealthcareunitincludingmanager.md)

