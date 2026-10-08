# 7 Tjänstekontrakt - masterdata: citizen: citizen v2.0.0

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

# 7 Tjänstekontrakt

Källa: **Personuppgifter – Tjänstekontraktsbeskrivning**, version 2.0 (2016-02-24, revision RC3 2016-04-22), [TKB_masterdata_citizen_citizen.docx](TKB_masterdata_citizen_citizen.docx).

Motsvarar TKB kapitel 6 **Tjänstekontrakt** (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### LookupResidentsForProfile

Tjänst för att hämta uppgifter för 1..* personidentiteter.

Mängden data i svaret är beroende av den profil som efterfrågas. Se kap 8 för mer information.

#### 7.1.1 Version

2.0

#### 7.1.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| personId | PersonalIdentity | Array med personidentiteter som efterfrågas. Maxantal 500 | 1..* |
| profile | LookupProfile | Profil för returnerat data. | 1..1 |
| Svar |   |   |   |
| LookupResidentsForProfile | LookupResidentsResponse | LookupResidentsResponse innehållande folkbokföringsposter för efterfrågade och funna personidentiteter | 1..1 |

#### 7.1.3 Övriga regler

Tjänsten skall åtkomstkontrollera om anropande system/aktör har behörighet.

#### 7.1.4 Exempel

##### 7.1.4.1 Exempel på anrop

Se [LookupResidentsForProfileRequest.xml](LookupResidentsForProfileRequest.xml).

##### 7.1.4.2 Exempel på svar

Se [LookupResidentsForProfileResponse.xml](LookupResidentsForProfileResponse.xml)

#### 7.1.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| personId | PersonalIdentityType | Personidentitet | 1..* |
| ../id | PersonalIdentityNumber |   | 1..1 |
| ../type | string |   | 1..1 |
| profile | LookupProfileType |   | 1..1 |
| **Svar** |   |   |   |
| lookupResidentsResponseType | LookupResidentsResponseType | Returtyp för operationen lookupResidentsForProfile | 1..1 |
| ../populationRegistrationRecords | PopulationRegistrationRecordType | Folkbokföringspost | 0..* |
| ../../protectedPersonIndicator | boolean |   | 1..1 |
| ../../testIndicator | boolean |   | 1..1 |
| ../../syncronizationTime | dateTime |   | 0..1 |
| ../../notificationCase | NotificationCaseType | Ärendeuppgifter | 0..1 |
| ../../../recordId | RecordId |   | 0..1 |
| ../../../notificationType | String40 |   | 0..1 |
| ../../../modificationTime | dateTime |   | 0..1 |
| ../../../totalRecord | boolean |   | 0..1 |
| ../../../notificationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../personalRecord | PersonalRecordType | Grupp för personpost | 1..1 |
| ../../../personalIdentity | PersonalIdentityType | Personidentitet | 0..1 |
| ../../../../id | PersonalIdentityNumber |   | 1..1 |
| ../../../../type | string |   | 1..1 |
| ../../../referredPersonalIdentity | PersonalIdentityType | Personidentitet | 0..* |
| ../../../../id | PersonalIdentityNumber |   | 1..1 |
| ../../../../type | string |   | 1..1 |
| ../../../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../../../deregistrationReasonCode | DeregistrationReasonCodeType |   | 0..1 |
| ../../../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../name | NameType | Namn | 0..1 |
| ../../../../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../../../../givenName | NamePartType | Grupp för del av namn där delen kan vara styrkt eller ej | 0..1 |
| ../../../../../name | String80 |   | 0..1 |
| ../../../../../attested | boolean |   | 0..1 |
| ../../../../middleName | NamePartType | Grupp för del av namn där delen kan vara styrkt eller ej | 0..1 |
| ../../../../../name | String80 |   | 0..1 |
| ../../../../../attested | boolean |   | 0..1 |
| ../../../../surname | NamePartType | Grupp för del av namn där delen kan vara styrkt eller ej | 0..1 |
| ../../../../../name | String80 |   | 0..1 |
| ../../../../../attested | boolean |   | 0..1 |
| ../../../../notificationName | String40 |   | 0..1 |
| ../../../populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..1 |
| ../../../../populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../countyCode | String2 |   | 0..1 |
| ../../../../municipalityCode | String2 |   | 0..1 |
| ../../../../parishCode | String2 |   | 0..1 |
| ../../../../propertyDesignation | String40 |   | 0..1 |
| ../../../../fictitiousPropertyNumber | FictitiousPropertyNumber |   | 0..1 |
| ../../../../populationRegistrationType | PopulationRegistrationTypeType |   | 0..1 |
| ../../../addressInformation | AddressInformationType | Grupp för adressuppgifter | 0..1 |
| ../../../../residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../../careOf | String40 |   | 0..1 |
| ../../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../../city | String40 |   | 0..1 |
| ../../../../nationalKeys | NationalKeysType | Riksnycklar | 0..1 |
| ../../../../../propertyId | PropertyId |   | 0..1 |
| ../../../../../addressPlaceId | AddressPlaceId |   | 0..1 |
| ../../../../../apartmentId | ApartmentId |   | 0..1 |
| ../../../../district | DistrictType | Grupp för Distriktskod | 0..1 |
| ../../../../../districtCode | DistrictCode |   | 0..1 |
| ../../../../specialPostalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../../careOf | String40 |   | 0..1 |
| ../../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../../city | String40 |   | 0..1 |
| ../../../../addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |
| ../../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../../postalAddress3 | String40 |   | 0..1 |
| ../../../../../country | String40 |   | 0..1 |
| ../../../../../addressAbroadDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../../votingDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../../value | PartialDateValue |   | 1..1 |
| ../../../maritalStatus | MaritalStatusType | Civistånd | 0..1 |
| ../../../../maritalStatusCode | MaritalStatusCodeType |   | 0..1 |
| ../../../../maritalStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../birth | BirthType | Uppgifter om födelse | 0..1 |
| ../../../../placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| ../../../../../birthCountyCode | String2 |   | 0..1 |
| ../../../../../birthParish | String40 |   | 0..1 |
| ../../../../birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |
| ../../../../../placeOfBirthAbroad | PlaceOfBirthAbroadType | Födelseort utland | 0..1 |
| ../../../../../../placeOfBirthAbroad | String80 |   | 0..1 |
| ../../../../../../attested | boolean |   | 0..1 |
| ../../../../../countryOfBirth | String40 |   | 0..1 |
| ../../../immigration | ImmigrationType | Grupp för invandringsuppgifter | 0..1 |
| ../../../../immigrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../rightOfResidence | boolean |   | 0..1 |
| ../../../../immigrationIdentity | ImmigrationIdentityType | Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |
| ../../../../../personalIdentityNumber | PersonalIdentityNumber |   | 1..1 |
| ../../../../../country | CountryCode |   | 1..1 |
| ../../../relationships | RelationshipType | Grupp för relation | 0..* |
| ../../../../relationshipId | RelationshipIdType | Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes. | 1..1 |
| ../../../../../personalIdentity | PersonalIdentityType | Personidentitet | 0..1 |
| ../../../../../../id | PersonalIdentityNumber |   | 1..1 |
| ../../../../../../type | string |   | 1..1 |
| ../../../../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../relationshipType | RelationshipTypeType |   | 1..1 |
| ../../../../relationshipFromDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../relationshipToDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../name | NameType | Namn | 0..1 |
| ../../../../../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../../../../../givenName | NamePartType | Grupp för del av namn där delen kan vara styrkt eller ej | 0..1 |
| ../../../../../../name | String80 |   | 0..1 |
| ../../../../../../attested | boolean |   | 0..1 |
| ../../../../../middleName | NamePartType | Grupp för del av namn där delen kan vara styrkt eller ej | 0..1 |
| ../../../../../../name | String80 |   | 0..1 |
| ../../../../../../attested | boolean |   | 0..1 |
| ../../../../../surname | NamePartType | Grupp för del av namn där delen kan vara styrkt eller ej | 0..1 |
| ../../../../../../name | String80 |   | 0..1 |
| ../../../../../../attested | boolean |   | 0..1 |
| ../../../../../notificationName | String40 |   | 0..1 |
| ../../../../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../../../../deregistrationReasonCode | DeregistrationReasonCodeType |   | 0..1 |
| ../../../../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../status | RelationshipStatusType |   | 0..1 |
| ../../../citizenship | CitizenshipType | Grupp för medborgarskap | 0..* |
| ../../../../citizenshipCountryCode | CitizenshipCountryCodeType | Grupp för medborgarskapslandkod | 0..1 |
| ../../../../../countryCode | CountryCode |   | 0..1 |
| ../../../../../attested | boolean |   | 0..1 |
| ../../../../citizenshipDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../status | CitizenshipStatusType |   | 0..1 |
| ../../historicalRecords | HistoricalRecordsType | Grupp för historik | 0..1 |
| ../../../populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..* |
| ../../../../populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../countyCode | String2 |   | 0..1 |
| ../../../../municipalityCode | String2 |   | 0..1 |
| ../../../../parishCode | String2 |   | 0..1 |
| ../../../../propertyDesignation | String40 |   | 0..1 |
| ../../../../fictitiousPropertyNumber | FictitiousPropertyNumber |   | 0..1 |
| ../../../../populationRegistrationType | PopulationRegistrationTypeType |   | 0..1 |
| ../../../historicalAddress | HistoricalAddressType | Grupp för historik adress | 0..1 |
| ../../../../residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../../careOf | String40 |   | 0..1 |
| ../../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../../city | String40 |   | 0..1 |

#### 7.1.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:masterdata:citizen:citizen:LookupResidentsForProfileResponder:2:LookupResidentsForProfile`

#### 7.1.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [LookupResidentsForProfileInteraction_2.0_RIVTABP21.wsdl](LookupResidentsForProfileInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [LookupResidentsForProfileResponder_2.0.xsd](LookupResidentsForProfileResponder_2.0.xsd) | Tjänsteschema |
| [masterdata_citizen_citizen_2.0.xsd](masterdata_citizen_citizen_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [LookupResidentsForProfileRequest.xml](LookupResidentsForProfileRequest.xml) | Exempel på begäran |
| [LookupResidentsForProfileResponse.xml](LookupResidentsForProfileResponse.xml) | Exempel på svar |

#### 7.1.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/lookupresidentsforprofile-request](StructureDefinition-lookupresidentsforprofile-request.md)
* **Logisk modell (response):** [StructureDefinition/lookupresidentsforprofile](StructureDefinition-lookupresidentsforprofile.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-citizen-citizenshipstatus-cs](CodeSystem-masterdata-citizen-citizen-citizenshipstatus-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-citizen-citizenshipstatus-vs](ValueSet-masterdata-citizen-citizen-citizenshipstatus-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-citizen-datetypeformat-cs](CodeSystem-masterdata-citizen-citizen-datetypeformat-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-citizen-datetypeformat-vs](ValueSet-masterdata-citizen-citizen-datetypeformat-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-citizen-deregistrationreasoncode-cs](CodeSystem-masterdata-citizen-citizen-deregistrationreasoncode-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-citizen-deregistrationreasoncode-vs](ValueSet-masterdata-citizen-citizen-deregistrationreasoncode-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-citizen-lookupprofile-cs](CodeSystem-masterdata-citizen-citizen-lookupprofile-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-citizen-lookupprofile-vs](ValueSet-masterdata-citizen-citizen-lookupprofile-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-citizen-maritalstatuscode-cs](CodeSystem-masterdata-citizen-citizen-maritalstatuscode-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-citizen-maritalstatuscode-vs](ValueSet-masterdata-citizen-citizen-maritalstatuscode-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-citizen-populationregistrationtype-cs](CodeSystem-masterdata-citizen-citizen-populationregistrationtype-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-citizen-populationregistrationtype-vs](ValueSet-masterdata-citizen-citizen-populationregistrationtype-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-citizen-relationshipstatus-cs](CodeSystem-masterdata-citizen-citizen-relationshipstatus-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-citizen-relationshipstatus-vs](ValueSet-masterdata-citizen-citizen-relationshipstatus-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-citizen-relationshiptype-cs](CodeSystem-masterdata-citizen-citizen-relationshiptype-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-citizen-relationshiptype-vs](ValueSet-masterdata-citizen-citizen-relationshiptype-vs.md)

