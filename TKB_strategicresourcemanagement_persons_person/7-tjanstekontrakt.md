# 7 Tjänstekontrakt - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

# 7 Tjänstekontrakt

Källa: **Personuppgiftstjänsten – Tjänstekontraktsbeskrivning**, version 5.1 (2024-11-28), [TKB_strategicresourcemanagement_persons_person.docx](TKB_strategicresourcemanagement_persons_person.docx).

Motsvarar TKB kapitel 6 **Tjänstekontrakt** (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### GetPersonsForProfile

Tjänst för att hämta uppgifter för 1..* personidentiteter.

Mängden data i svaret är dels beroende av den profil som efterfrågas, dels om personen har sekretessmarkering och/eller Skyddat folkbokföring eller ej. Se kap 8 för mer information.

#### 7.1.1 Version

5.0

#### 7.1.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| personId | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Array med personidentiteter som efterfrågas. Maxantal 500 | 1..* |
| profile | urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType | Profil för urval av returnerat data. | 1..1 |
| ignoreReferredIdentity | xs:Boolean | Om satt till true, ska producenten ignorera att följa och returnera eventuellt hänvisad huvudidentitet. Producenten ska returnera endast personposter på det sökta id:et | 1..1 |
| Svar |   |   |   |
| requestedPersonRecord | urn:riv:strategicresourcemanagement:persons:person:5:RequestedPersonRecordType | 1..* RequestedPersonRecord innehållande eventuella personposter för efterfrågade personidentiteter | 1..* |

#### 7.1.3 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| | | |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producentansvar | En producent skall alltid i svaret svara med requestedPersonalIdentity samt PersonRecord. / Vilket innebär att om konsumenten skickar in 3st personidentiteter men det endast finns 2st personposter som motsvarar anropet så skall likväl 3 svar erhållas, varav 1 i så fall med en tom PersonRecord. |
| #2 | Producentansvar | En producent ska alltid returnera huvudidentitetens personuppgifter om flaggan ignoreReferredIdentity är satt till False. Dvs en sökning på en reservidentitet skall returnera huvudidentitetens personuppgifter -om det finns en koppling mellan reservidentiteten och en huvudidentitet. |
| #3 | Producentansvar | En producent ska enbart returnera enligt profil 1 (se kap 8) om protectedPersonIndicator eller protectedPopulationRecord är satt till true. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #4 | Konsument | Om testIndicator är satt till ”true” och anrop sker till produktionsdata (PROD) ska en konsument normalt kasta svaret. Alternativt måste konsumenten ha förmåga att hantera testdata. |

##### 7.1.3.1 Icke funktionella krav

Se kapitel 4.2

###### 7.1.3.1.1 SLA-krav

Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

-

#### 7.1.4 Annan information om kontraktet

-

#### 7.1.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| personId | IIType | En universellt unik identifierare. | 1..* |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| profile | LookupProfileType |   | 1..1 |
| ignoreReferredIdentity | boolean |   | 1..1 |
| **Svar** |   |   |   |
| requestedPersonRecord | RequestedPersonRecordType |   | 1..* |
| ../requestedPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |
| ../personRecord | PersonRecordType | Grupp för personpost | 0..1 |
| ../../personalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../identityLevel | string |   | 0..1 |
| ../../identityLevelDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../gender | CodedValue |   | 0..1 |
| ../../protectedPersonIndicator | boolean |   | 1..1 |
| ../../testIndicator | boolean |   | 1..1 |
| ../../primaryIdentity | boolean |   | 1..1 |
| ../../version | Timestamp |   | 0..1 |
| ../../name | NameType | Namn | 0..1 |
| ../../../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../../../givenName | String80 |   | 0..1 |
| ../../../middleName | String80 |   | 0..1 |
| ../../../surname | String80 |   | 0..1 |
| ../../../notificationName | String40 |   | 0..1 |
| ../../linkedIdentity | LinkedIdentityType | Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR | 0..* |
| ../../../referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../assuranceLevel | CodedValue |   | 1..1 |
| ../../../primaryIdentity | boolean |   | 1..1 |
| ../../referredPersonalIdentities | ReferredPersonalIdentityType | Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter). | 0..* |
| ../../../referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../referredPersonalIdentityStatus | string |   | 0..1 |
| ../../birth | BirthType | Uppgifter om födelse | 0..1 |
| ../../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| ../../../../birthCountyCode | String2 |   | 0..1 |
| ../../../../birthParish | String40 |   | 0..1 |
| ../../../birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |
| ../../../../placeOfBirthAbroad | String80 |   | 0..1 |
| ../../../../countryOfBirth | String40 |   | 0..1 |
| ../../populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..1 |
| ../../../populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../countyCode | String2 |   | 0..1 |
| ../../../municipalityCode | String2 |   | 0..1 |
| ../../../parishCode | String2 |   | 0..1 |
| ../../../propertyDesignation | String40 |   | 0..1 |
| ../../../fictitiousPropertyNumber | FictitiousPropertyNumber |   | 0..1 |
| ../../../populationRegistrationType | CodedValue |   | 0..1 |
| ../../../localRegistrationTime | dateTime |   | 0..1 |
| ../../../localRegistrationEndTime | dateTime |   | 0..1 |
| ../../populationRegistrationRecord | PopulationRegistrationRecordType | Folkbokföringspost | 0..1 |
| ../../../syncronizationTime | dateTime |   | 0..1 |
| ../../../notificationCase | NotificationCaseType | Ärendeuppgifter | 0..1 |
| ../../../../recordId | RecordId |   | 0..1 |
| ../../../../notificationType | String40 |   | 0..1 |
| ../../../../modificationTime | dateTime |   | 0..1 |
| ../../../../totalRecord | boolean |   | 0..1 |
| ../../../../notificationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../historicalRecords | HistoricalRecordsType | Grupp för historik | 0..1 |
| ../../../../populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..* |
| ../../../../../populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../../countyCode | String2 |   | 0..1 |
| ../../../../../municipalityCode | String2 |   | 0..1 |
| ../../../../../parishCode | String2 |   | 0..1 |
| ../../../../../propertyDesignation | String40 |   | 0..1 |
| ../../../../../fictitiousPropertyNumber | FictitiousPropertyNumber |   | 0..1 |
| ../../../../../populationRegistrationType | CodedValue |   | 0..1 |
| ../../../../../localRegistrationTime | dateTime |   | 0..1 |
| ../../../../../localRegistrationEndTime | dateTime |   | 0..1 |
| ../../../../historicalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../../careOf | String40 |   | 0..1 |
| ../../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../../city | String40 |   | 0..1 |
| ../../addressInformation | AddressInformationType | Grupp för adressuppgifter | 0..1 |
| ../../../residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../nationalKeys | NationalKeysType | Riksnycklar | 0..1 |
| ../../../../propertyId | PropertyId |   | 0..1 |
| ../../../../addressPlaceId | AddressPlaceId |   | 0..1 |
| ../../../../apartmentId | ApartmentId |   | 0..1 |
| ../../../district | DistrictType | Grupp för Distriktskod | 0..1 |
| ../../../../districtCode | DistrictCode |   | 0..1 |
| ../../../specialPostalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalAddress3 | String40 |   | 0..1 |
| ../../../../countryCode | String40 |   | 0..1 |
| ../../../../addressAbroadDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../votingDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../givenAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../UUID | UUIDType | UUID för fastighet, aderess och lägenhet | 0..1 |
| ../../../../propertyId | string |   | 0..1 |
| ../../../../addressPlaceId | string |   | 0..1 |
| ../../../../apartmentId | string |   | 0..1 |
| ../../contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../contactType | CodedValue |   | 1..1 |
| ../../../use | CodedValue |   | 0..1 |
| ../../../value | string |   | 0..1 |
| ../../../rank | int |   | 0..1 |
| ../../../comment | string |   | 0..1 |
| ../../../period | DatePeriodType |   | 0..1 |
| ../../../../start | date |   | 0..1 |
| ../../../../end | date |   | 0..1 |
| ../../../digitalNotification | boolean |   | 0..1 |
| ../../contactPerson | ContactPersonType |   | 0..* |
| ../../../contactRelationshipType | CodedValue |   | 1..1 |
| ../../../priorityOrder | int |   | 0..1 |
| ../../../givenName | String80 |   | 0..1 |
| ../../../surName | String80 |   | 0..1 |
| ../../../middleName | String80 |   | 0..1 |
| ../../../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../../contactType | CodedValue |   | 1..1 |
| ../../../../use | CodedValue |   | 0..1 |
| ../../../../value | string |   | 0..1 |
| ../../../../rank | int |   | 0..1 |
| ../../../../comment | string |   | 0..1 |
| ../../../../period | DatePeriodType |   | 0..1 |
| ../../../../../start | date |   | 0..1 |
| ../../../../../end | date |   | 0..1 |
| ../../../../digitalNotification | boolean |   | 0..1 |
| ../../confirmedIdentity | ConfirmedIdentityType | Klass för hur reservidentitetsuppgifter är styrkta. | 0..* |
| ../../../typeOfIdentification | CodedValue |   | 0..1 |
| ../../../identificationNumber | string |   | 0..1 |
| ../../../issuersOfId | string |   | 0..1 |
| ../../../validDatePeriod | DatePeriodType |   | 0..1 |
| ../../../../start | date |   | 0..1 |
| ../../../../end | date |   | 0..1 |
| ../../../attachmentId | string |   | 0..* |
| ../../../countryCode | CountryCode |   | 0..1 |
| ../../administrativeInformation | AdministrativeInformationType | Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID). | 0..1 |
| ../../../categoryOfPerson | CodedValue |   | 0..1 |
| ../../../accountCode | CodedValue |   | 0..1 |
| ../../../comment | string |   | 0..1 |
| ../../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../../deregistrationReasonCode | CodedValue |   | 0..1 |
| ../../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../maritalStatus | MaritalStatusType | Civistånd | 0..1 |
| ../../../maritalStatusCode | CodedValue |   | 0..1 |
| ../../../maritalStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../immigration | ImmigrationType | Grupp för invandringsuppgifter | 0..1 |
| ../../../immigrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../rightOfResidence | boolean |   | 0..1 |
| ../../../immigrationIdentity | ImmigrationIdentityType | Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |
| ../../../../personalIdentityNumber | PersonalIdentityNumber |   | 1..1 |
| ../../../../country | CountryCode |   | 1..1 |
| ../../citizenship | CitizenshipType | Grupp för medborgarskap | 0..* |
| ../../../citizenshipCountryCode | CountryCode |   | 0..1 |
| ../../../citizenshipDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../status | CodedValue |   | 0..1 |
| ../../relationship | RelationshipType | Grupp för relation | 0..* |
| ../../../relationshipId | RelationshipIdType | Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes. | 1..1 |
| ../../../../personalIdentity | IIType | En universellt unik identifierare. | 0..1 |
| ../../../../../root | string |   | 1..1 |
| ../../../../../extension | string |   | 0..1 |
| ../../../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../relationshipType | CodedValue |   | 1..1 |
| ../../../relationshipFromDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../relationshipToDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../name | NameType | Namn | 0..1 |
| ../../../../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../../../../givenName | String80 |   | 0..1 |
| ../../../../middleName | String80 |   | 0..1 |
| ../../../../surname | String80 |   | 0..1 |
| ../../../../notificationName | String40 |   | 0..1 |
| ../../../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../../../deregistrationReasonCode | CodedValue |   | 0..1 |
| ../../../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../status | CodedValue |   | 0..1 |
| ../../coOrdinationNumberData | CoOrdinationNumberDataType | Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige. | 0..1 |
| ../../../allocationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../preliminaryTransferDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../renewalDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../deceasedDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../personalIdentityStatus | PersonalIdentityStatusType | Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer. | 0..1 |
| ../../../identityStatus | string |   | 0..1 |
| ../../../identityStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../identityStatusCause | string |   | 0..1 |
| ../../updatePersonActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../root | string |   | 1..1 |
| ../../../../../extension | string |   | 0..1 |
| ../../../updateTime | Timestamp |   | 0..1 |
| ../../updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../root | string |   | 1..1 |
| ../../../../../extension | string |   | 0..1 |
| ../../../updateTime | Timestamp |   | 0..1 |
| ../../attachment | MultimediaType | Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL. | 0..* |
| ../../../id | string |   | 0..1 |
| ../../../mediaType | CodedValue |   | 1..1 |
| ../../../value | base64Binary |   | 0..1 |
| ../../../reference | anyURI |   | 0..1 |
| ../../optoutPaperNotification | boolean |   | 0..1 |
| ../../protectedPopulationRecord | boolean |   | 0..1 |

#### 7.1.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileResponder:5:GetPersonsForProfile`

#### 7.1.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetPersonsForProfileInteraction_5.0_RIVTABP21.wsdl](GetPersonsForProfileInteraction_5.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetPersonsForProfileResponder_5.0.xsd](GetPersonsForProfileResponder_5.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [GetPersonsForProfileRequest.xml](GetPersonsForProfileRequest.xml) | Exempel på begäran |
| [GetPersonsForProfileResponse.xml](GetPersonsForProfileResponse.xml) | Exempel på svar |
| [SjD_TK_GetPersonsForProfile_5.0.docx](SjD_TK_GetPersonsForProfile_5.0.docx) | Självdeklaration (tjänstekonsument), version 5.0 |

#### 7.1.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getpersonsforprofile-request](StructureDefinition-getpersonsforprofile-request.md)
* **Logisk modell (response):** [StructureDefinition/getpersonsforprofile](StructureDefinition-getpersonsforprofile.md)
* **Kodsystem:** [CodeSystem/SPP-datetypeformat-cs](CodeSystem-SPP-datetypeformat-cs.md)
* **ValueSet:** [ValueSet/SPP-datetypeformat-vs](ValueSet-SPP-datetypeformat-vs.md)
* **Kodsystem:** [CodeSystem/SPP-lookupprofile-cs](CodeSystem-SPP-lookupprofile-cs.md)
* **ValueSet:** [ValueSet/SPP-lookupprofile-vs](ValueSet-SPP-lookupprofile-vs.md)

### GetPersonsForProfileUnrestricted

Tjänst för att hämta uppgifter för 1..* personidentiteter.

Mängden data i svaret är beroende av den profil som efterfrågas. Denna tjänst är en utökning av GetPersonForProfile och levererar all personinformation, oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring.

För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.

#### 7.2.1 Version

5.0

#### 7.2.2 Fältregler

Se GetPersonForProfile.

#### 7.2.3 Övriga regler

Se GetPersonForProfile.

#### 7.2.4 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| personId | IIType | En universellt unik identifierare. | 1..* |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| profile | LookupProfileType |   | 1..1 |
| ignoreReferredIdentity | boolean |   | 1..1 |
| **Svar** |   |   |   |
| requestedPersonRecord | RequestedPersonRecordType |   | 1..* |
| ../requestedPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |
| ../personRecord | PersonRecordType | Grupp för personpost | 0..1 |
| ../../personalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../identityLevel | string |   | 0..1 |
| ../../identityLevelDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../gender | CodedValue |   | 0..1 |
| ../../protectedPersonIndicator | boolean |   | 1..1 |
| ../../testIndicator | boolean |   | 1..1 |
| ../../primaryIdentity | boolean |   | 1..1 |
| ../../version | Timestamp |   | 0..1 |
| ../../name | NameType | Namn | 0..1 |
| ../../../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../../../givenName | String80 |   | 0..1 |
| ../../../middleName | String80 |   | 0..1 |
| ../../../surname | String80 |   | 0..1 |
| ../../../notificationName | String40 |   | 0..1 |
| ../../linkedIdentity | LinkedIdentityType | Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR | 0..* |
| ../../../referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../assuranceLevel | CodedValue |   | 1..1 |
| ../../../primaryIdentity | boolean |   | 1..1 |
| ../../referredPersonalIdentities | ReferredPersonalIdentityType | Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter). | 0..* |
| ../../../referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../referredPersonalIdentityStatus | string |   | 0..1 |
| ../../birth | BirthType | Uppgifter om födelse | 0..1 |
| ../../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| ../../../../birthCountyCode | String2 |   | 0..1 |
| ../../../../birthParish | String40 |   | 0..1 |
| ../../../birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |
| ../../../../placeOfBirthAbroad | String80 |   | 0..1 |
| ../../../../countryOfBirth | String40 |   | 0..1 |
| ../../populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..1 |
| ../../../populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../countyCode | String2 |   | 0..1 |
| ../../../municipalityCode | String2 |   | 0..1 |
| ../../../parishCode | String2 |   | 0..1 |
| ../../../propertyDesignation | String40 |   | 0..1 |
| ../../../fictitiousPropertyNumber | FictitiousPropertyNumber |   | 0..1 |
| ../../../populationRegistrationType | CodedValue |   | 0..1 |
| ../../../localRegistrationTime | dateTime |   | 0..1 |
| ../../../localRegistrationEndTime | dateTime |   | 0..1 |
| ../../populationRegistrationRecord | PopulationRegistrationRecordType | Folkbokföringspost | 0..1 |
| ../../../syncronizationTime | dateTime |   | 0..1 |
| ../../../notificationCase | NotificationCaseType | Ärendeuppgifter | 0..1 |
| ../../../../recordId | RecordId |   | 0..1 |
| ../../../../notificationType | String40 |   | 0..1 |
| ../../../../modificationTime | dateTime |   | 0..1 |
| ../../../../totalRecord | boolean |   | 0..1 |
| ../../../../notificationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../historicalRecords | HistoricalRecordsType | Grupp för historik | 0..1 |
| ../../../../populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..* |
| ../../../../../populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../../countyCode | String2 |   | 0..1 |
| ../../../../../municipalityCode | String2 |   | 0..1 |
| ../../../../../parishCode | String2 |   | 0..1 |
| ../../../../../propertyDesignation | String40 |   | 0..1 |
| ../../../../../fictitiousPropertyNumber | FictitiousPropertyNumber |   | 0..1 |
| ../../../../../populationRegistrationType | CodedValue |   | 0..1 |
| ../../../../../localRegistrationTime | dateTime |   | 0..1 |
| ../../../../../localRegistrationEndTime | dateTime |   | 0..1 |
| ../../../../historicalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../../careOf | String40 |   | 0..1 |
| ../../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../../city | String40 |   | 0..1 |
| ../../addressInformation | AddressInformationType | Grupp för adressuppgifter | 0..1 |
| ../../../residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../nationalKeys | NationalKeysType | Riksnycklar | 0..1 |
| ../../../../propertyId | PropertyId |   | 0..1 |
| ../../../../addressPlaceId | AddressPlaceId |   | 0..1 |
| ../../../../apartmentId | ApartmentId |   | 0..1 |
| ../../../district | DistrictType | Grupp för Distriktskod | 0..1 |
| ../../../../districtCode | DistrictCode |   | 0..1 |
| ../../../specialPostalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalAddress3 | String40 |   | 0..1 |
| ../../../../countryCode | String40 |   | 0..1 |
| ../../../../addressAbroadDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../votingDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../givenAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../UUID | UUIDType | UUID för fastighet, aderess och lägenhet | 0..1 |
| ../../../../propertyId | string |   | 0..1 |
| ../../../../addressPlaceId | string |   | 0..1 |
| ../../../../apartmentId | string |   | 0..1 |
| ../../contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../contactType | CodedValue |   | 1..1 |
| ../../../use | CodedValue |   | 0..1 |
| ../../../value | string |   | 0..1 |
| ../../../rank | int |   | 0..1 |
| ../../../comment | string |   | 0..1 |
| ../../../period | DatePeriodType |   | 0..1 |
| ../../../../start | date |   | 0..1 |
| ../../../../end | date |   | 0..1 |
| ../../../digitalNotification | boolean |   | 0..1 |
| ../../contactPerson | ContactPersonType |   | 0..* |
| ../../../contactRelationshipType | CodedValue |   | 1..1 |
| ../../../priorityOrder | int |   | 0..1 |
| ../../../givenName | String80 |   | 0..1 |
| ../../../surName | String80 |   | 0..1 |
| ../../../middleName | String80 |   | 0..1 |
| ../../../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../../contactType | CodedValue |   | 1..1 |
| ../../../../use | CodedValue |   | 0..1 |
| ../../../../value | string |   | 0..1 |
| ../../../../rank | int |   | 0..1 |
| ../../../../comment | string |   | 0..1 |
| ../../../../period | DatePeriodType |   | 0..1 |
| ../../../../../start | date |   | 0..1 |
| ../../../../../end | date |   | 0..1 |
| ../../../../digitalNotification | boolean |   | 0..1 |
| ../../confirmedIdentity | ConfirmedIdentityType | Klass för hur reservidentitetsuppgifter är styrkta. | 0..* |
| ../../../typeOfIdentification | CodedValue |   | 0..1 |
| ../../../identificationNumber | string |   | 0..1 |
| ../../../issuersOfId | string |   | 0..1 |
| ../../../validDatePeriod | DatePeriodType |   | 0..1 |
| ../../../../start | date |   | 0..1 |
| ../../../../end | date |   | 0..1 |
| ../../../attachmentId | string |   | 0..* |
| ../../../countryCode | CountryCode |   | 0..1 |
| ../../administrativeInformation | AdministrativeInformationType | Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID). | 0..1 |
| ../../../categoryOfPerson | CodedValue |   | 0..1 |
| ../../../accountCode | CodedValue |   | 0..1 |
| ../../../comment | string |   | 0..1 |
| ../../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../../deregistrationReasonCode | CodedValue |   | 0..1 |
| ../../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../maritalStatus | MaritalStatusType | Civistånd | 0..1 |
| ../../../maritalStatusCode | CodedValue |   | 0..1 |
| ../../../maritalStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../immigration | ImmigrationType | Grupp för invandringsuppgifter | 0..1 |
| ../../../immigrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../rightOfResidence | boolean |   | 0..1 |
| ../../../immigrationIdentity | ImmigrationIdentityType | Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |
| ../../../../personalIdentityNumber | PersonalIdentityNumber |   | 1..1 |
| ../../../../country | CountryCode |   | 1..1 |
| ../../citizenship | CitizenshipType | Grupp för medborgarskap | 0..* |
| ../../../citizenshipCountryCode | CountryCode |   | 0..1 |
| ../../../citizenshipDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../status | CodedValue |   | 0..1 |
| ../../relationship | RelationshipType | Grupp för relation | 0..* |
| ../../../relationshipId | RelationshipIdType | Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes. | 1..1 |
| ../../../../personalIdentity | IIType | En universellt unik identifierare. | 0..1 |
| ../../../../../root | string |   | 1..1 |
| ../../../../../extension | string |   | 0..1 |
| ../../../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../relationshipType | CodedValue |   | 1..1 |
| ../../../relationshipFromDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../relationshipToDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../name | NameType | Namn | 0..1 |
| ../../../../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../../../../givenName | String80 |   | 0..1 |
| ../../../../middleName | String80 |   | 0..1 |
| ../../../../surname | String80 |   | 0..1 |
| ../../../../notificationName | String40 |   | 0..1 |
| ../../../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../../../deregistrationReasonCode | CodedValue |   | 0..1 |
| ../../../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../status | CodedValue |   | 0..1 |
| ../../coOrdinationNumberData | CoOrdinationNumberDataType | Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige. | 0..1 |
| ../../../allocationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../preliminaryTransferDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../renewalDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../deceasedDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../personalIdentityStatus | PersonalIdentityStatusType | Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer. | 0..1 |
| ../../../identityStatus | string |   | 0..1 |
| ../../../identityStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../identityStatusCause | string |   | 0..1 |
| ../../updatePersonActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../root | string |   | 1..1 |
| ../../../../../extension | string |   | 0..1 |
| ../../../updateTime | Timestamp |   | 0..1 |
| ../../updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../root | string |   | 1..1 |
| ../../../../../extension | string |   | 0..1 |
| ../../../updateTime | Timestamp |   | 0..1 |
| ../../attachment | MultimediaType | Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL. | 0..* |
| ../../../id | string |   | 0..1 |
| ../../../mediaType | CodedValue |   | 1..1 |
| ../../../value | base64Binary |   | 0..1 |
| ../../../reference | anyURI |   | 0..1 |
| ../../optoutPaperNotification | boolean |   | 0..1 |
| ../../protectedPopulationRecord | boolean |   | 0..1 |

#### 7.2.5 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileUnrestrictedResponder:5:GetPersonsForProfileUnrestricted`

#### 7.2.6 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetPersonsForProfileUnrestrictedInteraction_5.0_RIVTABP21.wsdl](GetPersonsForProfileUnrestrictedInteraction_5.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetPersonsForProfileUnrestrictedResponder_5.0.xsd](GetPersonsForProfileUnrestrictedResponder_5.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_GetPersonsForProfileUnrestricted_5.0.docx](SjD_TK_GetPersonsForProfileUnrestricted_5.0.docx) | Självdeklaration (tjänstekonsument), version 5.0 |

#### 7.2.7 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getpersonsforprofileunrestricted-request](StructureDefinition-getpersonsforprofileunrestricted-request.md)
* **Logisk modell (response):** [StructureDefinition/getpersonsforprofileunrestricted](StructureDefinition-getpersonsforprofileunrestricted.md)
* **Kodsystem:** [CodeSystem/SPP-datetypeformat-cs](CodeSystem-SPP-datetypeformat-cs.md)
* **ValueSet:** [ValueSet/SPP-datetypeformat-vs](ValueSet-SPP-datetypeformat-vs.md)
* **Kodsystem:** [CodeSystem/SPP-lookupprofile-cs](CodeSystem-SPP-lookupprofile-cs.md)
* **ValueSet:** [ValueSet/SPP-lookupprofile-vs](ValueSet-SPP-lookupprofile-vs.md)

### SearchPersonsForProfile

Tjänst för att söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax.

Mängden data i svaret är dels beroende av den profil som efterfrågas, dels angivna sökkriterier. Se kap 8 för mer information om profiler, bl.a om vad som gäller då personidentiteten har sekretessmarkering. Antalet personidentiteter som kan returneras synkront är begränsat till max 500st. Om resultatet överstiger 500 poster ska producenten avbryta sökningen och generera ett Soapfault med angivandet av lämplig feltext.

OBS! Tillskillnad från GetPersonsForProfile till vilken man kan ange ignoreReferredIdentity så returnerar denna tjänst endast svar på den specifika identitet som man söker på.

Tjänsten returnerar dock även information på eventuellt kopplade identiteter, samt information om vilken kopplad identitet som utgör huvudidentiteten.

#### 7.3.1 Version

5.0

#### 7.3.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| query | xs:String | Fråga för persondata angivet med syntax enligt element queryLanguage (se Tillämpningsanvisning för frågespråk [R7]) | 1..1 |
| queryLanguage | xs:String | Anger syntax för element query | 1..1 |
| profile | urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType | Profil för returnerat data (se kap 8) | 1..1 |
| Svar |   |   |   |
| personRecord | urn:riv:strategicresourcemanagement:persons:person:5:PersonRecordType | LookupResidentsResponse innehållande folkbokföringsposter för efterfrågat sökdata | 0..* |

#### 7.3.3 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| | | |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producent | En producent ska enbart returnera enligt profil 1 (se kap 8) om protectedPersonIndicator eller protectedPopulationRecord är satt till true. |
|   |   |   |
| Allmänna regler | Allmänna regler | Allmänna regler |

##### 7.3.3.1 Icke funktionella krav

Se kapitel 4.2

###### 7.3.3.1.1 SLA-krav

Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

-

#### 7.3.4 Annan information om kontraktet

För mer information om vad som är implementerat kring möjliga Query’s (queryLanguage), se Tillämpningsanvisning frågespråk [R7]

#### 7.3.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| query | string |   | 1..1 |
| queryLanguage | string |   | 1..1 |
| profile | LookupProfileType |   | 1..1 |
| **Svar** |   |   |   |
| personRecord | PersonRecordType | Grupp för personpost | 0..* |
| ../personalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |
| ../identityLevel | string |   | 0..1 |
| ../identityLevelDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |   | 1..1 |
| ../../value | PartialDateValue |   | 1..1 |
| ../gender | CodedValue |   | 0..1 |
| ../protectedPersonIndicator | boolean |   | 1..1 |
| ../testIndicator | boolean |   | 1..1 |
| ../primaryIdentity | boolean |   | 1..1 |
| ../version | Timestamp |   | 0..1 |
| ../name | NameType | Namn | 0..1 |
| ../../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../../givenName | String80 |   | 0..1 |
| ../../middleName | String80 |   | 0..1 |
| ../../surname | String80 |   | 0..1 |
| ../../notificationName | String40 |   | 0..1 |
| ../linkedIdentity | LinkedIdentityType | Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR | 0..* |
| ../../referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../assuranceLevel | CodedValue |   | 1..1 |
| ../../primaryIdentity | boolean |   | 1..1 |
| ../referredPersonalIdentities | ReferredPersonalIdentityType | Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter). | 0..* |
| ../../referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../referredPersonalIdentityStatus | string |   | 0..1 |
| ../birth | BirthType | Uppgifter om födelse | 0..1 |
| ../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| ../../../birthCountyCode | String2 |   | 0..1 |
| ../../../birthParish | String40 |   | 0..1 |
| ../../birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |
| ../../../placeOfBirthAbroad | String80 |   | 0..1 |
| ../../../countryOfBirth | String40 |   | 0..1 |
| ../populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..1 |
| ../../populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../countyCode | String2 |   | 0..1 |
| ../../municipalityCode | String2 |   | 0..1 |
| ../../parishCode | String2 |   | 0..1 |
| ../../propertyDesignation | String40 |   | 0..1 |
| ../../fictitiousPropertyNumber | FictitiousPropertyNumber |   | 0..1 |
| ../../populationRegistrationType | CodedValue |   | 0..1 |
| ../../localRegistrationTime | dateTime |   | 0..1 |
| ../../localRegistrationEndTime | dateTime |   | 0..1 |
| ../populationRegistrationRecord | PopulationRegistrationRecordType | Folkbokföringspost | 0..1 |
| ../../syncronizationTime | dateTime |   | 0..1 |
| ../../notificationCase | NotificationCaseType | Ärendeuppgifter | 0..1 |
| ../../../recordId | RecordId |   | 0..1 |
| ../../../notificationType | String40 |   | 0..1 |
| ../../../modificationTime | dateTime |   | 0..1 |
| ../../../totalRecord | boolean |   | 0..1 |
| ../../../notificationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
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
| ../../../../populationRegistrationType | CodedValue |   | 0..1 |
| ../../../../localRegistrationTime | dateTime |   | 0..1 |
| ../../../../localRegistrationEndTime | dateTime |   | 0..1 |
| ../../../historicalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../addressInformation | AddressInformationType | Grupp för adressuppgifter | 0..1 |
| ../../residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../careOf | String40 |   | 0..1 |
| ../../../postalAddress1 | String40 |   | 0..1 |
| ../../../postalAddress2 | String40 |   | 0..1 |
| ../../../postalCode | PostalCode |   | 0..1 |
| ../../../city | String40 |   | 0..1 |
| ../../nationalKeys | NationalKeysType | Riksnycklar | 0..1 |
| ../../../propertyId | PropertyId |   | 0..1 |
| ../../../addressPlaceId | AddressPlaceId |   | 0..1 |
| ../../../apartmentId | ApartmentId |   | 0..1 |
| ../../district | DistrictType | Grupp för Distriktskod | 0..1 |
| ../../../districtCode | DistrictCode |   | 0..1 |
| ../../specialPostalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../careOf | String40 |   | 0..1 |
| ../../../postalAddress1 | String40 |   | 0..1 |
| ../../../postalAddress2 | String40 |   | 0..1 |
| ../../../postalCode | PostalCode |   | 0..1 |
| ../../../city | String40 |   | 0..1 |
| ../../addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |
| ../../../postalAddress1 | String40 |   | 0..1 |
| ../../../postalAddress2 | String40 |   | 0..1 |
| ../../../postalAddress3 | String40 |   | 0..1 |
| ../../../countryCode | String40 |   | 0..1 |
| ../../../addressAbroadDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../votingDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../givenAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../careOf | String40 |   | 0..1 |
| ../../../postalAddress1 | String40 |   | 0..1 |
| ../../../postalAddress2 | String40 |   | 0..1 |
| ../../../postalCode | PostalCode |   | 0..1 |
| ../../../city | String40 |   | 0..1 |
| ../../UUID | UUIDType | UUID för fastighet, aderess och lägenhet | 0..1 |
| ../../../propertyId | string |   | 0..1 |
| ../../../addressPlaceId | string |   | 0..1 |
| ../../../apartmentId | string |   | 0..1 |
| ../contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../contactType | CodedValue |   | 1..1 |
| ../../use | CodedValue |   | 0..1 |
| ../../value | string |   | 0..1 |
| ../../rank | int |   | 0..1 |
| ../../comment | string |   | 0..1 |
| ../../period | DatePeriodType |   | 0..1 |
| ../../../start | date |   | 0..1 |
| ../../../end | date |   | 0..1 |
| ../../digitalNotification | boolean |   | 0..1 |
| ../contactPerson | ContactPersonType |   | 0..* |
| ../../contactRelationshipType | CodedValue |   | 1..1 |
| ../../priorityOrder | int |   | 0..1 |
| ../../givenName | String80 |   | 0..1 |
| ../../surName | String80 |   | 0..1 |
| ../../middleName | String80 |   | 0..1 |
| ../../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../careOf | String40 |   | 0..1 |
| ../../../postalAddress1 | String40 |   | 0..1 |
| ../../../postalAddress2 | String40 |   | 0..1 |
| ../../../postalCode | PostalCode |   | 0..1 |
| ../../../city | String40 |   | 0..1 |
| ../../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../contactType | CodedValue |   | 1..1 |
| ../../../use | CodedValue |   | 0..1 |
| ../../../value | string |   | 0..1 |
| ../../../rank | int |   | 0..1 |
| ../../../comment | string |   | 0..1 |
| ../../../period | DatePeriodType |   | 0..1 |
| ../../../../start | date |   | 0..1 |
| ../../../../end | date |   | 0..1 |
| ../../../digitalNotification | boolean |   | 0..1 |
| ../confirmedIdentity | ConfirmedIdentityType | Klass för hur reservidentitetsuppgifter är styrkta. | 0..* |
| ../../typeOfIdentification | CodedValue |   | 0..1 |
| ../../identificationNumber | string |   | 0..1 |
| ../../issuersOfId | string |   | 0..1 |
| ../../validDatePeriod | DatePeriodType |   | 0..1 |
| ../../../start | date |   | 0..1 |
| ../../../end | date |   | 0..1 |
| ../../attachmentId | string |   | 0..* |
| ../../countryCode | CountryCode |   | 0..1 |
| ../administrativeInformation | AdministrativeInformationType | Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID). | 0..1 |
| ../../categoryOfPerson | CodedValue |   | 0..1 |
| ../../accountCode | CodedValue |   | 0..1 |
| ../../comment | string |   | 0..1 |
| ../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../deregistrationReasonCode | CodedValue |   | 0..1 |
| ../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../maritalStatus | MaritalStatusType | Civistånd | 0..1 |
| ../../maritalStatusCode | CodedValue |   | 0..1 |
| ../../maritalStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../immigration | ImmigrationType | Grupp för invandringsuppgifter | 0..1 |
| ../../immigrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../rightOfResidence | boolean |   | 0..1 |
| ../../immigrationIdentity | ImmigrationIdentityType | Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |
| ../../../personalIdentityNumber | PersonalIdentityNumber |   | 1..1 |
| ../../../country | CountryCode |   | 1..1 |
| ../citizenship | CitizenshipType | Grupp för medborgarskap | 0..* |
| ../../citizenshipCountryCode | CountryCode |   | 0..1 |
| ../../citizenshipDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../status | CodedValue |   | 0..1 |
| ../relationship | RelationshipType | Grupp för relation | 0..* |
| ../../relationshipId | RelationshipIdType | Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes. | 1..1 |
| ../../../personalIdentity | IIType | En universellt unik identifierare. | 0..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../relationshipType | CodedValue |   | 1..1 |
| ../../relationshipFromDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../relationshipToDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../name | NameType | Namn | 0..1 |
| ../../../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../../../givenName | String80 |   | 0..1 |
| ../../../middleName | String80 |   | 0..1 |
| ../../../surname | String80 |   | 0..1 |
| ../../../notificationName | String40 |   | 0..1 |
| ../../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../../deregistrationReasonCode | CodedValue |   | 0..1 |
| ../../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../status | CodedValue |   | 0..1 |
| ../coOrdinationNumberData | CoOrdinationNumberDataType | Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige. | 0..1 |
| ../../allocationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../preliminaryTransferDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../renewalDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../deceasedDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../personalIdentityStatus | PersonalIdentityStatusType | Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer. | 0..1 |
| ../../identityStatus | string |   | 0..1 |
| ../../identityStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../identityStatusCause | string |   | 0..1 |
| ../updatePersonActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../updateTime | Timestamp |   | 0..1 |
| ../updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../updateTime | Timestamp |   | 0..1 |
| ../attachment | MultimediaType | Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL. | 0..* |
| ../../id | string |   | 0..1 |
| ../../mediaType | CodedValue |   | 1..1 |
| ../../value | base64Binary |   | 0..1 |
| ../../reference | anyURI |   | 0..1 |
| ../optoutPaperNotification | boolean |   | 0..1 |
| ../protectedPopulationRecord | boolean |   | 0..1 |

#### 7.3.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileResponder:5:SearchPersonsForProfile`

#### 7.3.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [SearchPersonsForProfileInteraction_5.0_RIVTABP21.wsdl](SearchPersonsForProfileInteraction_5.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [SearchPersonsForProfileResponder_5.0.xsd](SearchPersonsForProfileResponder_5.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SearchPersonsForProfileRequest.xml](SearchPersonsForProfileRequest.xml) | Exempel på begäran |
| [SearchPersonsForProfileResponse.xml](SearchPersonsForProfileResponse.xml) | Exempel på svar |
| [SjD_TK_SearchPersonsForProfile_5.0.docx](SjD_TK_SearchPersonsForProfile_5.0.docx) | Självdeklaration (tjänstekonsument), version 5.0 |

#### 7.3.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/searchpersonsforprofile-request](StructureDefinition-searchpersonsforprofile-request.md)
* **Logisk modell (response):** [StructureDefinition/searchpersonsforprofile](StructureDefinition-searchpersonsforprofile.md)
* **Kodsystem:** [CodeSystem/SPP-datetypeformat-cs](CodeSystem-SPP-datetypeformat-cs.md)
* **ValueSet:** [ValueSet/SPP-datetypeformat-vs](ValueSet-SPP-datetypeformat-vs.md)
* **Kodsystem:** [CodeSystem/SPP-lookupprofile-cs](CodeSystem-SPP-lookupprofile-cs.md)
* **ValueSet:** [ValueSet/SPP-lookupprofile-vs](ValueSet-SPP-lookupprofile-vs.md)

### SearchPersonsForProfileUnrestricted

Tjänst för att söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax.

Mängden data i svaret är dels beroende av den profil som efterfrågas, dels angivna sökkriterier. Se kap 8 för mer information om profiler. Denna tjänst är en utökning av SearchPersonsForProfile och returnerar samtliga efterfrågade personuppgifter oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring.

För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.

Antalet personidentiteter som kan returneras synkront är begränsat till max 500st. Om resultatet överstiger 500 poster ska producenten avbryta sökningen och generera ett Soapfault med angivandet av lämplig feltext.

OBS! Tillskillnad från GetPersonsForProfile till vilken man kan ange ignoreReferredIdentity så returnerar denna tjänst endast svar på den specifika identitet som man söker på.

Tjänsten returnerar dock även information på eventuellt kopplade identiteter, samt information om vilken kopplad identitet som utgör huvudidentiteten.

#### 7.4.1 Version

5.0

#### 7.4.2 Fältregler

Se SearchPersonsForProfile.

#### 7.4.3 Övriga regler

N/A

#### 7.4.4 Annan information om kontraktet

För mer information om vad som är implementerat kring möjliga Query’s (queryLanguage), se Tillämpningsanvisning frågespråk [R7]

#### 7.4.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| query | string |   | 1..1 |
| queryLanguage | string |   | 1..1 |
| profile | LookupProfileType |   | 1..1 |
| **Svar** |   |   |   |
| personRecord | PersonRecordType | Grupp för personpost | 0..* |
| ../personalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |
| ../identityLevel | string |   | 0..1 |
| ../identityLevelDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |   | 1..1 |
| ../../value | PartialDateValue |   | 1..1 |
| ../gender | CodedValue |   | 0..1 |
| ../protectedPersonIndicator | boolean |   | 1..1 |
| ../testIndicator | boolean |   | 1..1 |
| ../primaryIdentity | boolean |   | 1..1 |
| ../version | Timestamp |   | 0..1 |
| ../name | NameType | Namn | 0..1 |
| ../../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../../givenName | String80 |   | 0..1 |
| ../../middleName | String80 |   | 0..1 |
| ../../surname | String80 |   | 0..1 |
| ../../notificationName | String40 |   | 0..1 |
| ../linkedIdentity | LinkedIdentityType | Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR | 0..* |
| ../../referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../assuranceLevel | CodedValue |   | 1..1 |
| ../../primaryIdentity | boolean |   | 1..1 |
| ../referredPersonalIdentities | ReferredPersonalIdentityType | Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter). | 0..* |
| ../../referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../referredPersonalIdentityStatus | string |   | 0..1 |
| ../birth | BirthType | Uppgifter om födelse | 0..1 |
| ../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| ../../../birthCountyCode | String2 |   | 0..1 |
| ../../../birthParish | String40 |   | 0..1 |
| ../../birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |
| ../../../placeOfBirthAbroad | String80 |   | 0..1 |
| ../../../countryOfBirth | String40 |   | 0..1 |
| ../populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..1 |
| ../../populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../countyCode | String2 |   | 0..1 |
| ../../municipalityCode | String2 |   | 0..1 |
| ../../parishCode | String2 |   | 0..1 |
| ../../propertyDesignation | String40 |   | 0..1 |
| ../../fictitiousPropertyNumber | FictitiousPropertyNumber |   | 0..1 |
| ../../populationRegistrationType | CodedValue |   | 0..1 |
| ../../localRegistrationTime | dateTime |   | 0..1 |
| ../../localRegistrationEndTime | dateTime |   | 0..1 |
| ../populationRegistrationRecord | PopulationRegistrationRecordType | Folkbokföringspost | 0..1 |
| ../../syncronizationTime | dateTime |   | 0..1 |
| ../../notificationCase | NotificationCaseType | Ärendeuppgifter | 0..1 |
| ../../../recordId | RecordId |   | 0..1 |
| ../../../notificationType | String40 |   | 0..1 |
| ../../../modificationTime | dateTime |   | 0..1 |
| ../../../totalRecord | boolean |   | 0..1 |
| ../../../notificationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
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
| ../../../../populationRegistrationType | CodedValue |   | 0..1 |
| ../../../../localRegistrationTime | dateTime |   | 0..1 |
| ../../../../localRegistrationEndTime | dateTime |   | 0..1 |
| ../../../historicalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../addressInformation | AddressInformationType | Grupp för adressuppgifter | 0..1 |
| ../../residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../careOf | String40 |   | 0..1 |
| ../../../postalAddress1 | String40 |   | 0..1 |
| ../../../postalAddress2 | String40 |   | 0..1 |
| ../../../postalCode | PostalCode |   | 0..1 |
| ../../../city | String40 |   | 0..1 |
| ../../nationalKeys | NationalKeysType | Riksnycklar | 0..1 |
| ../../../propertyId | PropertyId |   | 0..1 |
| ../../../addressPlaceId | AddressPlaceId |   | 0..1 |
| ../../../apartmentId | ApartmentId |   | 0..1 |
| ../../district | DistrictType | Grupp för Distriktskod | 0..1 |
| ../../../districtCode | DistrictCode |   | 0..1 |
| ../../specialPostalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../careOf | String40 |   | 0..1 |
| ../../../postalAddress1 | String40 |   | 0..1 |
| ../../../postalAddress2 | String40 |   | 0..1 |
| ../../../postalCode | PostalCode |   | 0..1 |
| ../../../city | String40 |   | 0..1 |
| ../../addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |
| ../../../postalAddress1 | String40 |   | 0..1 |
| ../../../postalAddress2 | String40 |   | 0..1 |
| ../../../postalAddress3 | String40 |   | 0..1 |
| ../../../countryCode | String40 |   | 0..1 |
| ../../../addressAbroadDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../votingDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../givenAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../careOf | String40 |   | 0..1 |
| ../../../postalAddress1 | String40 |   | 0..1 |
| ../../../postalAddress2 | String40 |   | 0..1 |
| ../../../postalCode | PostalCode |   | 0..1 |
| ../../../city | String40 |   | 0..1 |
| ../../UUID | UUIDType | UUID för fastighet, aderess och lägenhet | 0..1 |
| ../../../propertyId | string |   | 0..1 |
| ../../../addressPlaceId | string |   | 0..1 |
| ../../../apartmentId | string |   | 0..1 |
| ../contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../contactType | CodedValue |   | 1..1 |
| ../../use | CodedValue |   | 0..1 |
| ../../value | string |   | 0..1 |
| ../../rank | int |   | 0..1 |
| ../../comment | string |   | 0..1 |
| ../../period | DatePeriodType |   | 0..1 |
| ../../../start | date |   | 0..1 |
| ../../../end | date |   | 0..1 |
| ../../digitalNotification | boolean |   | 0..1 |
| ../contactPerson | ContactPersonType |   | 0..* |
| ../../contactRelationshipType | CodedValue |   | 1..1 |
| ../../priorityOrder | int |   | 0..1 |
| ../../givenName | String80 |   | 0..1 |
| ../../surName | String80 |   | 0..1 |
| ../../middleName | String80 |   | 0..1 |
| ../../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../careOf | String40 |   | 0..1 |
| ../../../postalAddress1 | String40 |   | 0..1 |
| ../../../postalAddress2 | String40 |   | 0..1 |
| ../../../postalCode | PostalCode |   | 0..1 |
| ../../../city | String40 |   | 0..1 |
| ../../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../contactType | CodedValue |   | 1..1 |
| ../../../use | CodedValue |   | 0..1 |
| ../../../value | string |   | 0..1 |
| ../../../rank | int |   | 0..1 |
| ../../../comment | string |   | 0..1 |
| ../../../period | DatePeriodType |   | 0..1 |
| ../../../../start | date |   | 0..1 |
| ../../../../end | date |   | 0..1 |
| ../../../digitalNotification | boolean |   | 0..1 |
| ../confirmedIdentity | ConfirmedIdentityType | Klass för hur reservidentitetsuppgifter är styrkta. | 0..* |
| ../../typeOfIdentification | CodedValue |   | 0..1 |
| ../../identificationNumber | string |   | 0..1 |
| ../../issuersOfId | string |   | 0..1 |
| ../../validDatePeriod | DatePeriodType |   | 0..1 |
| ../../../start | date |   | 0..1 |
| ../../../end | date |   | 0..1 |
| ../../attachmentId | string |   | 0..* |
| ../../countryCode | CountryCode |   | 0..1 |
| ../administrativeInformation | AdministrativeInformationType | Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID). | 0..1 |
| ../../categoryOfPerson | CodedValue |   | 0..1 |
| ../../accountCode | CodedValue |   | 0..1 |
| ../../comment | string |   | 0..1 |
| ../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../deregistrationReasonCode | CodedValue |   | 0..1 |
| ../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../maritalStatus | MaritalStatusType | Civistånd | 0..1 |
| ../../maritalStatusCode | CodedValue |   | 0..1 |
| ../../maritalStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../immigration | ImmigrationType | Grupp för invandringsuppgifter | 0..1 |
| ../../immigrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../rightOfResidence | boolean |   | 0..1 |
| ../../immigrationIdentity | ImmigrationIdentityType | Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |
| ../../../personalIdentityNumber | PersonalIdentityNumber |   | 1..1 |
| ../../../country | CountryCode |   | 1..1 |
| ../citizenship | CitizenshipType | Grupp för medborgarskap | 0..* |
| ../../citizenshipCountryCode | CountryCode |   | 0..1 |
| ../../citizenshipDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../status | CodedValue |   | 0..1 |
| ../relationship | RelationshipType | Grupp för relation | 0..* |
| ../../relationshipId | RelationshipIdType | Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes. | 1..1 |
| ../../../personalIdentity | IIType | En universellt unik identifierare. | 0..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../relationshipType | CodedValue |   | 1..1 |
| ../../relationshipFromDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../relationshipToDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../name | NameType | Namn | 0..1 |
| ../../../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../../../givenName | String80 |   | 0..1 |
| ../../../middleName | String80 |   | 0..1 |
| ../../../surname | String80 |   | 0..1 |
| ../../../notificationName | String40 |   | 0..1 |
| ../../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../../deregistrationReasonCode | CodedValue |   | 0..1 |
| ../../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../status | CodedValue |   | 0..1 |
| ../coOrdinationNumberData | CoOrdinationNumberDataType | Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige. | 0..1 |
| ../../allocationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../preliminaryTransferDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../renewalDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../deceasedDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../personalIdentityStatus | PersonalIdentityStatusType | Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer. | 0..1 |
| ../../identityStatus | string |   | 0..1 |
| ../../identityStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../identityStatusCause | string |   | 0..1 |
| ../updatePersonActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../updateTime | Timestamp |   | 0..1 |
| ../updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../updateTime | Timestamp |   | 0..1 |
| ../attachment | MultimediaType | Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL. | 0..* |
| ../../id | string |   | 0..1 |
| ../../mediaType | CodedValue |   | 1..1 |
| ../../value | base64Binary |   | 0..1 |
| ../../reference | anyURI |   | 0..1 |
| ../optoutPaperNotification | boolean |   | 0..1 |
| ../protectedPopulationRecord | boolean |   | 0..1 |

#### 7.4.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileUnrestrictedResponder:5:SearchPersonsForProfileUnrestricted`

#### 7.4.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [SearchPersonsForProfileUnrestrictedInteraction_5.0_RIVTABP21.wsdl](SearchPersonsForProfileUnrestrictedInteraction_5.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [SearchPersonsForProfileUnrestrictedResponder_5.0.xsd](SearchPersonsForProfileUnrestrictedResponder_5.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_SearchPersonsForProfileUnrestricted_5.0.docx](SjD_TK_SearchPersonsForProfileUnrestricted_5.0.docx) | Självdeklaration (tjänstekonsument), version 5.0 |

#### 7.4.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/searchpersonsforprofileunrestricted-request](StructureDefinition-searchpersonsforprofileunrestricted-request.md)
* **Logisk modell (response):** [StructureDefinition/searchpersonsforprofileunrestricted](StructureDefinition-searchpersonsforprofileunrestricted.md)
* **Kodsystem:** [CodeSystem/SPP-datetypeformat-cs](CodeSystem-SPP-datetypeformat-cs.md)
* **ValueSet:** [ValueSet/SPP-datetypeformat-vs](ValueSet-SPP-datetypeformat-vs.md)
* **Kodsystem:** [CodeSystem/SPP-lookupprofile-cs](CodeSystem-SPP-lookupprofile-cs.md)
* **ValueSet:** [ValueSet/SPP-lookupprofile-vs](ValueSet-SPP-lookupprofile-vs.md)

### SearchPersonsForProfileByOrder

Tjänst för att asynkront söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax. Denna tjänst tillskillnad från SearchPersonsForProfile returnerar endast ett orderId som sedan ska användas tillsammans med tjänsten GetFilesForOrderId för att få tillgång till resultatet av sökningen. Se sekvensschemat i kapitel 3.1.10.

Ett typiskt användningsfallet för denna tjänst är när man önskar få ut ett större antal personuppgifter baserat på sökparametrarna. T.ex för en screeningverksamhet (ex screening av bröstcancer) att kunna ta ut en population personer baserat på ålder, kön och län för att kalla dem till undersökning.

OBS! Tillskillnad från GetPersonsForProfile till vilken man kan ange ignoreReferredIdentity så returnerar denna tjänst endast svar på den specifika identitet som man söker på.

Tjänsten returnerar dock även information på eventuellt kopplade identiteter, samt information om vilken kopplad identitet som utgör huvudidentiteten.

#### 7.5.1 Version

5.0 Notering: Se punkt 2.1.3

#### 7.5.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| query | xs:String | Fråga för persondata angivet med syntax enligt element queryLanguage (se Tillämpningsanvisning frågespråk [R7]) | 1..1 |
| queryLanguage | xs:String | Anger syntax för element query | 1..1 |
| profile | urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType | Profil för returnerat data (se kap 8). | 1..1 |
| Svar |   |   |   |
| orderId | urn:riv:strategicresourcemanagement:persons:person:5:OrderId | OrderId Det unika order id som genererats för denna sökning. | 0..1 |

#### 7.5.3 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| | | |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producent | En producent ska enbart returnera enligt profil 1 (se kap 8) om protectedPersonIndicator eller protectedPopulationRecord är satt till true. |
| #2 | Producent | Om antalet sökträffar hos producenten överskrider maxgränsen för antalet sökträffar som denna kan returnera så skall producenten returnera ett SOAP klientfel som inkluderar feltexten ”Förfrågans maxgräns överskriden”. |
| Allmänna regler | Allmänna regler | Allmänna regler |

##### 7.5.3.1 Icke funktionella krav

Se 4.2

###### 7.5.3.1.1 SLA-krav

Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

Se 4.2

#### 7.5.4 Annan information om kontraktet

För mer information om vad som är implementerat kring möjliga Query’s (queryLanguage), se Tillämpningsanvisning frågespråk [R7]

#### 7.5.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| query | string |   | 1..1 |
| queryLanguage | string |   | 1..1 |
| profile | LookupProfileType |   | 1..1 |
| **Svar** |   |   |   |
| orderId | OrderId |   | 0..1 |

#### 7.5.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderResponder:5:SearchPersonsForProfileByOrder`

#### 7.5.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [SearchPersonsForProfileByOrderInteraction_5.0_RIVTABP21.wsdl](SearchPersonsForProfileByOrderInteraction_5.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [SearchPersonsForProfileByOrderResponder_5.0.xsd](SearchPersonsForProfileByOrderResponder_5.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SearchPersonsForProfileByOrderRequest.xml](SearchPersonsForProfileByOrderRequest.xml) | Exempel på begäran |
| [SearchPersonsForProfileByOrderResponse.xml](SearchPersonsForProfileByOrderResponse.xml) | Exempel på svar |
| [SjD_TK_SearchPersonsForProfileByOrder_5.0.docx](SjD_TK_SearchPersonsForProfileByOrder_5.0.docx) | Självdeklaration (tjänstekonsument), version 5.0 |

#### 7.5.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/searchpersonsforprofilebyorder-request](StructureDefinition-searchpersonsforprofilebyorder-request.md)
* **Logisk modell (response):** [StructureDefinition/searchpersonsforprofilebyorder](StructureDefinition-searchpersonsforprofilebyorder.md)
* **Kodsystem:** [CodeSystem/SPP-lookupprofile-cs](CodeSystem-SPP-lookupprofile-cs.md)
* **ValueSet:** [ValueSet/SPP-lookupprofile-vs](ValueSet-SPP-lookupprofile-vs.md)

### SearchPersonsForProfileByOrderUnrestricted

Tjänst för att asynkront söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax.

Denna tjänst tillskillnad från SearchPersonsForProfile returnerar endast ett orderId som sedan ska användas tillsammans med tjänsten GetFilesForOrderId för att få tillgång till resultatet av sökningen. Se sekvensschemat i kapitel 3.1.9. Denna tjänst är en utökning av SearchPersonsForProfileByOrder och returnerar samtliga efterfrågade personuppgifter oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring.

För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.

Ett typiskt användningsfallet för denna tjänst är när man önskar få ut ett större antal personuppgifter baserat på sökparametrarna. T.ex för en screeningverksamhet (ex screening av bröstcancer) att kunna ta ut en population personer baserat på ålder, kön och län för att kalla dem till undersökning.

OBS! Tillskillnad från GetPersonsForProfile till vilken man kan ange ignoreReferredIdentity så returnerar denna tjänst endast svar på den specifika identitet som man söker på.

Tjänsten returnerar dock även information på eventuellt kopplade identiteter, samt information om vilken kopplad identitet som utgör huvudidentiteten.

#### 7.6.1 Version

5.0 Notering: Se punkt 2.1.3

#### 7.6.2 Fältregler

Se SearchPersonsForProfileByOrder

#### 7.6.3 Övriga regler

Se SearchPersonsForProfileByOrder

#### 7.6.4 Annan information om kontraktet

För mer information om vad som är implementerat kring möjliga Query’s (queryLanguage), se Tillämpningsanvisning frågespråk [R7]

#### 7.6.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| query | string |   | 1..1 |
| queryLanguage | string |   | 1..1 |
| profile | LookupProfileType |   | 1..1 |
| **Svar** |   |   |   |
| orderId | OrderId |   | 0..1 |

#### 7.6.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderUnrestrictedResponder:5:SearchPersonsForProfileByOrderUnrestricted`

#### 7.6.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [SearchPersonsForProfileByOrderUnrestrictedInteraction_5.0_RIVTABP21.wsdl](SearchPersonsForProfileByOrderUnrestrictedInteraction_5.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [SearchPersonsForProfileByOrderUnrestrictedResponder_5.0.xsd](SearchPersonsForProfileByOrderUnrestrictedResponder_5.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_SearchPersonsForProfileByOrderUnrestricted_5.0.docx](SjD_TK_SearchPersonsForProfileByOrderUnrestricted_5.0.docx) | Självdeklaration (tjänstekonsument), version 5.0 |

#### 7.6.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/searchpersonsforprofilebyorderunrestricted-request](StructureDefinition-searchpersonsforprofilebyorderunrestricted-request.md)
* **Logisk modell (response):** [StructureDefinition/searchpersonsforprofilebyorderunrestricted](StructureDefinition-searchpersonsforprofilebyorderunrestricted.md)
* **Kodsystem:** [CodeSystem/SPP-lookupprofile-cs](CodeSystem-SPP-lookupprofile-cs.md)
* **ValueSet:** [ValueSet/SPP-lookupprofile-vs](ValueSet-SPP-lookupprofile-vs.md)

### GetFilesForOrderId

Tjänst för få en adress (URL) utifrån ett givet OrderId, där man kan hämta begärda data. Till exempel personposter utifrån en tidigare begärd sökning med tjänsten SearchPersonsForProfileByOrder eller förändrade personposter.

Producenten ska säkerställa att anropande tjänstekonsument har rättighet till det efterfrågade order id't.

#### 7.7.1 Version

3.0

#### 7.7.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| orderId | urn:riv:strategicresourcemanagement:persons:person:5:OrderId | Order Id för vilka filer man vill lista. | 1..1 |
| Svar |   |   |   |
| multimedia | urn:riv:strategicresourcemanagement:persons:person:5:MultimediaType | GetFilesResponse innehållande 0..* Multimedia element med data för, eller referenser till (URL-referenser), tillgängliga filer. | 0..* |

#### 7.7.3 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| | | |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producent | Om antalet sökträffar hos producenten överskrider maxgränsen för antalet sökträffar som denna kan returnera så skall producenten returnera ett SOAP klientfel som inkluderar feltexten ”Förfrågans maxgräns överskriden”. |
| Allmänna regler | Allmänna regler | Allmänna regler |

##### 7.7.3.1 Icke funktionella krav

Se 4.2

###### 7.7.3.1.1 SLA-krav

Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

Se 4.2

#### 7.7.4 Annan information om kontraktet

URL’n som erhålls i responset skall följa format på URL enligt ARK_0038. Se även AKR_0038 för tillämpning.

#### 7.7.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| orderId | OrderId |   | 1..1 |
| **Svar** |   |   |   |
| multimedia | MultimediaType | Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL. | 0..* |
| ../id | string |   | 0..1 |
| ../mediaType | CodedValue |   | 1..1 |
| ../value | base64Binary |   | 0..1 |
| ../reference | anyURI |   | 0..1 |

#### 7.7.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:GetFilesForOrderIdResponder:4:GetFilesForOrderId`

#### 7.7.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetFilesForOrderIdInteraction_4.0_RIVTABP21.wsdl](GetFilesForOrderIdInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetFilesForOrderIdResponder_4.0.xsd](GetFilesForOrderIdResponder_4.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [GetFilesForOrderIdRequest.xml](GetFilesForOrderIdRequest.xml) | Exempel på begäran |
| [GetFilesForOrderIdResponse.xml](GetFilesForOrderIdResponse.xml) | Exempel på svar |
| [SjD_TK_GetFilesForOrderId_4.0.docx](SjD_TK_GetFilesForOrderId_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.7.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getfilesfororderid-request](StructureDefinition-getfilesfororderid-request.md)
* **Logisk modell (response):** [StructureDefinition/getfilesfororderid](StructureDefinition-getfilesfororderid.md)

### GetPersonContactInformation

Tjänst för att hämta information om kontaktinformation, exempelvis mailadress eller mobilnummer till personen. Kontaktinformationen kan ha skapats antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller av t.ex en vårdaktör via vårdaktörens tjänst. Kontaktuppgifterna består dels av vilka kontaktvägar (telefon, mail etc) som personen själv i fråga kan nås på, dels av kontaktpersoner och kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård.

Kontaktinformation (mail, mobilnummer etc) kan även anges som en ”digital aviseringsväg” vilket innebär att personen samtycker till att en verksamhet kan skicka ett meddelande till personen. Dvs om en person har angett en mailadress som kontaktinformation och även sätter denna som möjlig för ”digital avisering”, så kan en verksamhet via mail exempelvis skicka information om att personen har ny information att läsa i inkorgen på 1177.

#### 7.8.1 Version

4.0

#### 7.8.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| personId | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Id på personen vars kontaktuppgifter efterfrågas | 1..1 |
| Svar |   |   |   |
| contactInformationRecord | urn:riv:strategicresourcemanagement:persons:person:5:ContactInformationRecordType | PersonContactInformationRecordResponse innehållande den efterfrågade personidentitetens kontaktinformation och/eller kontaktpersoner | 0..1 |

#### 7.8.3 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| | | |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producent | Om en person har sekretessmarkering eller Skyddad folkbokföring (protectetPersonIndicator resp protectedPopulationRecord) så ska ej kontaktuppgifter returneras i svaret. |
| Allmänna regler | Allmänna regler | Allmänna regler |

##### 7.8.3.1 Icke funktionella krav

Se 4.2

###### 7.8.3.1.1 SLA-krav

Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

Se 4.2

#### 7.8.4 Annan information om kontraktet

N/A

#### 7.8.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| personId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| **Svar** |   |   |   |
| contactInformationRecord | ContactInformationRecordType | Uppgifter om personens kontaktuppgifter och kontaktpersoner | 0..1 |
| ../version | Timestamp |   | 1..1 |
| ../personId | IIType | En universellt unik identifierare. | 1..1 |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |
| ../contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../contactType | CodedValue |   | 1..1 |
| ../../use | CodedValue |   | 0..1 |
| ../../value | string |   | 0..1 |
| ../../rank | int |   | 0..1 |
| ../../comment | string |   | 0..1 |
| ../../period | DatePeriodType |   | 0..1 |
| ../../../start | date |   | 0..1 |
| ../../../end | date |   | 0..1 |
| ../../digitalNotification | boolean |   | 0..1 |
| ../contactPerson | ContactPersonType |   | 0..* |
| ../../contactRelationshipType | CodedValue |   | 1..1 |
| ../../priorityOrder | int |   | 0..1 |
| ../../givenName | String80 |   | 0..1 |
| ../../surName | String80 |   | 0..1 |
| ../../middleName | String80 |   | 0..1 |
| ../../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../careOf | String40 |   | 0..1 |
| ../../../postalAddress1 | String40 |   | 0..1 |
| ../../../postalAddress2 | String40 |   | 0..1 |
| ../../../postalCode | PostalCode |   | 0..1 |
| ../../../city | String40 |   | 0..1 |
| ../../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../contactType | CodedValue |   | 1..1 |
| ../../../use | CodedValue |   | 0..1 |
| ../../../value | string |   | 0..1 |
| ../../../rank | int |   | 0..1 |
| ../../../comment | string |   | 0..1 |
| ../../../period | DatePeriodType |   | 0..1 |
| ../../../../start | date |   | 0..1 |
| ../../../../end | date |   | 0..1 |
| ../../../digitalNotification | boolean |   | 0..1 |
| ../protectedPersonIndicator | boolean |   | 1..1 |
| ../protectedPopulationRecord | boolean |   | 0..1 |
| ../optoutPaperNotification | boolean |   | 0..1 |
| ../updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../updateTime | Timestamp |   | 0..1 |

#### 7.8.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationResponder:4:GetPersonContactInformation`

#### 7.8.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetPersonContactInformationInteraction_4.0_RIVTABP21.wsdl](GetPersonContactInformationInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetPersonContactInformationResponder_4.0.xsd](GetPersonContactInformationResponder_4.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [GetPersonContactInformationRequest.xml](GetPersonContactInformationRequest.xml) | Exempel på begäran |
| [GetPersonContactInformationResponse.xml](GetPersonContactInformationResponse.xml) | Exempel på svar |
| [SjD_TK_GetPersonContactInformation_4.0.docx](SjD_TK_GetPersonContactInformation_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.8.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getpersoncontactinformation-request](StructureDefinition-getpersoncontactinformation-request.md)
* **Logisk modell (response):** [StructureDefinition/getpersoncontactinformation](StructureDefinition-getpersoncontactinformation.md)

### GetPersonContactInformationUnrestricted

Tjänst för att hämta information om kontaktinformation, exempelvis mailadress eller mobilnummer till personen.

Denna tjänst är en utökning av GetPersonContactInformation och levererar all personinformation, oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring. För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.

Kontaktinformationen kan ha skapats antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller av t.ex en vårdaktör via vårdaktörens tjänst. Kontaktuppgifterna består dels av vilka kontaktvägar (telefon, mail etc) som personen själv i fråga kan nås på, dels av kontaktpersoner och kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård.

Kontaktinformation (mail, mobilnummer etc) kan även anges som en ”digital aviseringsväg” vilket innebär att personen samtycker till att en verksamhet kan skicka ett meddelande till personen. Dvs om en person har angett en mailadress som kontaktinformation och även sätter denna som möjlig för ”digital avisering”, så kan en verksamhet via mail exempelvis skicka information om att personen har ny information att läsa i inkorgen på 1177.

#### 7.9.1 Version

4.0

#### 7.9.2 Fältregler

Se GetPersonContactInformation.

#### 7.9.3 Övriga regler

Se GetPersonContactInformation.

##### 7.9.3.1 Icke funktionella krav

Se GetPersonContactInformation.

###### 7.9.3.1.1 SLA-krav

Se GetPersonContactInformation.

#### 7.9.4 Annan information om kontraktet

Se GetPersonContactInformation.

#### 7.9.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| personId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| **Svar** |   |   |   |
| contactInformationRecord | ContactInformationRecordType | Uppgifter om personens kontaktuppgifter och kontaktpersoner | 0..1 |
| ../version | Timestamp |   | 1..1 |
| ../personId | IIType | En universellt unik identifierare. | 1..1 |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |
| ../contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../contactType | CodedValue |   | 1..1 |
| ../../use | CodedValue |   | 0..1 |
| ../../value | string |   | 0..1 |
| ../../rank | int |   | 0..1 |
| ../../comment | string |   | 0..1 |
| ../../period | DatePeriodType |   | 0..1 |
| ../../../start | date |   | 0..1 |
| ../../../end | date |   | 0..1 |
| ../../digitalNotification | boolean |   | 0..1 |
| ../contactPerson | ContactPersonType |   | 0..* |
| ../../contactRelationshipType | CodedValue |   | 1..1 |
| ../../priorityOrder | int |   | 0..1 |
| ../../givenName | String80 |   | 0..1 |
| ../../surName | String80 |   | 0..1 |
| ../../middleName | String80 |   | 0..1 |
| ../../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../careOf | String40 |   | 0..1 |
| ../../../postalAddress1 | String40 |   | 0..1 |
| ../../../postalAddress2 | String40 |   | 0..1 |
| ../../../postalCode | PostalCode |   | 0..1 |
| ../../../city | String40 |   | 0..1 |
| ../../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../contactType | CodedValue |   | 1..1 |
| ../../../use | CodedValue |   | 0..1 |
| ../../../value | string |   | 0..1 |
| ../../../rank | int |   | 0..1 |
| ../../../comment | string |   | 0..1 |
| ../../../period | DatePeriodType |   | 0..1 |
| ../../../../start | date |   | 0..1 |
| ../../../../end | date |   | 0..1 |
| ../../../digitalNotification | boolean |   | 0..1 |
| ../protectedPersonIndicator | boolean |   | 1..1 |
| ../protectedPopulationRecord | boolean |   | 0..1 |
| ../optoutPaperNotification | boolean |   | 0..1 |
| ../updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../updateTime | Timestamp |   | 0..1 |

#### 7.9.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationUnrestrictedResponder:4:GetPersonContactInformationUnrestricted`

#### 7.9.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetPersonContactInformationUnrestrictedInteraction_4.0_RIVTABP21.wsdl](GetPersonContactInformationUnrestrictedInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetPersonContactInformationUnrestrictedResponder_4.0.xsd](GetPersonContactInformationUnrestrictedResponder_4.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_GetPersonContactInformationUnrestricted_4.0.docx](SjD_TK_GetPersonContactInformationUnrestricted_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.9.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getpersoncontactinformationunrestricted-request](StructureDefinition-getpersoncontactinformationunrestricted-request.md)
* **Logisk modell (response):** [StructureDefinition/getpersoncontactinformationunrestricted](StructureDefinition-getpersoncontactinformationunrestricted.md)

### UpdatePersonContactInformation

Tjänst för att skapa/uppdatera kontaktinformation. Antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller där en vårdaktör uppger personen kontaktuppgifter via vårdaktörens journalsystem/eTjänst. Kontaktuppgifterna består dels av vilka kontaktvägar som personen själv i fråga kan nås på (exempelvis telefon, email), dels av kontaktpersoner samt kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård. En konsument av denna tjänst kan således dels vara en tjänst såsom Journalen, dels ett vårdsystem.

Kontaktinformation kan även anges som en ”digital aviseringsväg” vilket innebär att personen samtycker till att en verksamhet kan skicka ett meddelande till personen. Dvs om en person har angett en mailadress som kontaktinformation och även sätter denna som möjlig för ”digital avisering”, så kan en verksamhet via mail exempelvis skicka information om att personen har ny information att läsa i inkorgen på 1177.

#### 7.10.1 Version

4.0

#### 7.10.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| actor | urn:riv:strategicresourcemanagement:persons:person:5:ActorType | Den som utför uppdateringen. | 1..1 |
| personId | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Id på personen vars kontaktuppgifter ska uppdateras | 1..1 |
| versionToUpdate | urn:riv:strategicresourcemanagement:persons:person:5:Timestamp | Den version av personposten som skall uppdateras. Se även Övriga regler. / Tjänstekonsumenten får värdet genom en föregående hämtning av detta attribut (version i datatypen ContactInformationRecordType). | 0..1 |
| contactInformation | urn:riv:strategicresourcemanagement:persons:person:5:ContactInformationType | Personens kontaktuppgifter | 0..* |
| contactPerson | urn:riv:strategicresourcemanagement:persons:person:5:ContactPersonType | Uppgifter om personens kontaktpersoner | 0..* |
| optoutPaperNotification* | Xs:Boolean | Sätts till true om personen ej önskar pappersavisering | 0..1 |
| Svar |   |   |   |
| updatePersonContactInformationResult | urn:riv:strategicresourcemanagement:persons:person:5:UpdatePersonContactInformationResultType | UpdatePersonContactInformationResult med status för om tjänsten utfördes, samt eventuellt resultat av uppdateringen. Se datatyp resultType för gällande felkoder | 1..1 |

#### 7.10.3 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| | | |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #3 | Uppdatering kontaktuppgifter | optoutPaperNotification får endast sättas till true om det finns minst en kontaktuppgift som har digitalNotification satt till true |
| #4 | Uppdatering kontaktuppgifter | Då en förändring av personens kontaktuppgifter sker, dvs personens kontaktuppgifter uppdateras så ska versionToUpdate bifogas för att säkerställa transaktionsintegriteten, att posten inte har uppdaterats under pågående transaktion. |
| #5 | Uppdatering kontaktuppgifter | Attributet updateTime i actor ska normalt ej anges, detta ska producenten ange. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #1 | Uppdatering kontaktuppgifter | För personer med sekretessmarkering eller Skyddad folkbokföring (protectetPersonIndicator resp protectedPopulationRecord) så ska man ej kunna ange kontaktuppgifter. |
| #2 | Uppdatering kontaktuppgifter | En update ska alltid föregås av en läsning. Detta för att i anropet till tjänsten få med sig befintlig information på personen. De attribut som skickas in utan data blir därmed raderade/tomma. / Läsningen kan antingen ske via GetPersonContactInformation eller GetPerson och med minst profil 3. |

##### 7.10.3.1 Icke funktionella krav

Se 4.2

###### 7.10.3.1.1 SLA-krav

Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

Se 4.2

#### 7.10.4 Annan information om kontraktet

För kodverk, se [R3].

#### 7.10.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| actor | ActorType | Datatyp som identifierar en aktör. | 1..1 |
| ../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |
| ../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../updateTime | Timestamp |   | 0..1 |
| personId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| versionToUpdate | Timestamp |   | 0..1 |
| contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../contactType | CodedValue |   | 1..1 |
| ../use | CodedValue |   | 0..1 |
| ../value | string |   | 0..1 |
| ../rank | int |   | 0..1 |
| ../comment | string |   | 0..1 |
| ../period | DatePeriodType |   | 0..1 |
| ../../start | date |   | 0..1 |
| ../../end | date |   | 0..1 |
| ../digitalNotification | boolean |   | 0..1 |
| contactPerson | ContactPersonType |   | 0..* |
| ../contactRelationshipType | CodedValue |   | 1..1 |
| ../priorityOrder | int |   | 0..1 |
| ../givenName | String80 |   | 0..1 |
| ../surName | String80 |   | 0..1 |
| ../middleName | String80 |   | 0..1 |
| ../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../careOf | String40 |   | 0..1 |
| ../../postalAddress1 | String40 |   | 0..1 |
| ../../postalAddress2 | String40 |   | 0..1 |
| ../../postalCode | PostalCode |   | 0..1 |
| ../../city | String40 |   | 0..1 |
| ../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../contactType | CodedValue |   | 1..1 |
| ../../use | CodedValue |   | 0..1 |
| ../../value | string |   | 0..1 |
| ../../rank | int |   | 0..1 |
| ../../comment | string |   | 0..1 |
| ../../period | DatePeriodType |   | 0..1 |
| ../../../start | date |   | 0..1 |
| ../../../end | date |   | 0..1 |
| ../../digitalNotification | boolean |   | 0..1 |
| optoutPaperNotification | boolean |   | 0..1 |
| **Svar** |   |   |   |
| updatePersonContactInformationResult | UpdatePersonContactInformationResultType |   | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |   | 1..1 |
| ../../resultText | string |   | 0..1 |
| ../contactInformationRecord | ContactInformationRecordType | Uppgifter om personens kontaktuppgifter och kontaktpersoner | 0..1 |
| ../../version | Timestamp |   | 1..1 |
| ../../personId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../contactType | CodedValue |   | 1..1 |
| ../../../use | CodedValue |   | 0..1 |
| ../../../value | string |   | 0..1 |
| ../../../rank | int |   | 0..1 |
| ../../../comment | string |   | 0..1 |
| ../../../period | DatePeriodType |   | 0..1 |
| ../../../../start | date |   | 0..1 |
| ../../../../end | date |   | 0..1 |
| ../../../digitalNotification | boolean |   | 0..1 |
| ../../contactPerson | ContactPersonType |   | 0..* |
| ../../../contactRelationshipType | CodedValue |   | 1..1 |
| ../../../priorityOrder | int |   | 0..1 |
| ../../../givenName | String80 |   | 0..1 |
| ../../../surName | String80 |   | 0..1 |
| ../../../middleName | String80 |   | 0..1 |
| ../../../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../../contactType | CodedValue |   | 1..1 |
| ../../../../use | CodedValue |   | 0..1 |
| ../../../../value | string |   | 0..1 |
| ../../../../rank | int |   | 0..1 |
| ../../../../comment | string |   | 0..1 |
| ../../../../period | DatePeriodType |   | 0..1 |
| ../../../../../start | date |   | 0..1 |
| ../../../../../end | date |   | 0..1 |
| ../../../../digitalNotification | boolean |   | 0..1 |
| ../../protectedPersonIndicator | boolean |   | 1..1 |
| ../../protectedPopulationRecord | boolean |   | 0..1 |
| ../../optoutPaperNotification | boolean |   | 0..1 |
| ../../updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../root | string |   | 1..1 |
| ../../../../../extension | string |   | 0..1 |
| ../../../updateTime | Timestamp |   | 0..1 |

#### 7.10.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationResponder:4:UpdatePersonContactInformation`

#### 7.10.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [UpdatePersonContactInformationInteraction_4.0_RIVTABP21.wsdl](UpdatePersonContactInformationInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [UpdatePersonContactInformationResponder_4.0.xsd](UpdatePersonContactInformationResponder_4.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [UpdatePersonContactInformationRequest.xml](UpdatePersonContactInformationRequest.xml) | Exempel på begäran |
| [UpdatePersonContactInformationResponse.xml](UpdatePersonContactInformationResponse.xml) | Exempel på svar |
| [SjD_TK_UpdatePersonContactInformation_4.0.docx](SjD_TK_UpdatePersonContactInformation_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.10.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/updatepersoncontactinformation-request](StructureDefinition-updatepersoncontactinformation-request.md)
* **Logisk modell (response):** [StructureDefinition/updatepersoncontactinformation](StructureDefinition-updatepersoncontactinformation.md)
* **Kodsystem:** [CodeSystem/SPP-resultcode-cs](CodeSystem-SPP-resultcode-cs.md)
* **ValueSet:** [ValueSet/SPP-resultcode-vs](ValueSet-SPP-resultcode-vs.md)

### UpdatePersonContactInformationUnrestricted

Tjänst för att skapa/uppdatera kontaktinformation. Antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller där en vårdaktör uppger personen kontaktuppgifter via vårdaktörens journalsystem/eTjänst.

Denna tjänst är en utökning av UpdatePersonContactInformation och hanterar all personinformation, oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring. För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.

Kontaktuppgifterna består dels av vilka kontaktvägar som personen själv i fråga kan nås på (exempelvis telefon, email), dels av kontaktpersoner samt kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård. En konsument av denna tjänst kan således dels vara en tjänst såsom Journalen, dels ett vårdsystem.

Kontaktinformation kan även anges som en ”digital aviseringsväg” vilket innebär att personen samtycker till att en verksamhet kan skicka ett meddelande till personen. Dvs om en person har angett en mailadress som kontaktinformation och även sätter denna som möjlig för ”digital avisering”, så kan en verksamhet via mail exempelvis skicka information om att personen har ny information att läsa i inkorgen på 1177.

#### 7.11.1 Version

4.0

#### 7.11.2 Fältregler

Se UpdatePersonContactInformation

#### 7.11.3 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| | | |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #3 | Uppdatering kontaktuppgifter | optoutPaperNotification får endast sättas till true om det finns minst en kontaktuppgift som har digitalNotification satt till true |
| #4 | Uppdatering kontaktuppgifter | Då en förändring av personens kontaktuppgifter sker, dvs personens kontaktuppgifter uppdateras så ska versionToUpdate bifogas för att säkerställa transaktionsintegriteten, att posten inte har uppdaterats under pågående transaktion. |
| #5 | Uppdatering av kontaktuppgifter | Attributet updateTime i actor ska normalt ej anges, detta ska producenten ange. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #2 | Uppdatering kontaktuppgifter | En update ska alltid föregås av en läsning. Detta för att i anropet till tjänsten få med sig befintlig information på personen. De attribut som skickas in utan data blir därmed raderade/tomma. / Läsningen kan antingen ske via GetPersonContactInformation eller GetPerson och med minst profil 3. |

##### 7.11.3.1 Icke funktionella krav

Se 4.2

###### 7.11.3.1.1 SLA-krav

Se UpdatePersonContactInformation

#### 7.11.4 Annan information om kontraktet

För kodverk, se [R3].

#### 7.11.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| actor | ActorType | Datatyp som identifierar en aktör. | 1..1 |
| ../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |
| ../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../updateTime | Timestamp |   | 0..1 |
| personId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| versionToUpdate | Timestamp |   | 0..1 |
| contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../contactType | CodedValue |   | 1..1 |
| ../use | CodedValue |   | 0..1 |
| ../value | string |   | 0..1 |
| ../rank | int |   | 0..1 |
| ../comment | string |   | 0..1 |
| ../period | DatePeriodType |   | 0..1 |
| ../../start | date |   | 0..1 |
| ../../end | date |   | 0..1 |
| ../digitalNotification | boolean |   | 0..1 |
| contactPerson | ContactPersonType |   | 0..* |
| ../contactRelationshipType | CodedValue |   | 1..1 |
| ../priorityOrder | int |   | 0..1 |
| ../givenName | String80 |   | 0..1 |
| ../surName | String80 |   | 0..1 |
| ../middleName | String80 |   | 0..1 |
| ../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../careOf | String40 |   | 0..1 |
| ../../postalAddress1 | String40 |   | 0..1 |
| ../../postalAddress2 | String40 |   | 0..1 |
| ../../postalCode | PostalCode |   | 0..1 |
| ../../city | String40 |   | 0..1 |
| ../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../contactType | CodedValue |   | 1..1 |
| ../../use | CodedValue |   | 0..1 |
| ../../value | string |   | 0..1 |
| ../../rank | int |   | 0..1 |
| ../../comment | string |   | 0..1 |
| ../../period | DatePeriodType |   | 0..1 |
| ../../../start | date |   | 0..1 |
| ../../../end | date |   | 0..1 |
| ../../digitalNotification | boolean |   | 0..1 |
| optoutPaperNotification | boolean |   | 0..1 |
| **Svar** |   |   |   |
| UpdatePersonContactInformationUnrestrictedResult | UpdatePersonContactInformationResultType |   | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |   | 1..1 |
| ../../resultText | string |   | 0..1 |
| ../contactInformationRecord | ContactInformationRecordType | Uppgifter om personens kontaktuppgifter och kontaktpersoner | 0..1 |
| ../../version | Timestamp |   | 1..1 |
| ../../personId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../contactType | CodedValue |   | 1..1 |
| ../../../use | CodedValue |   | 0..1 |
| ../../../value | string |   | 0..1 |
| ../../../rank | int |   | 0..1 |
| ../../../comment | string |   | 0..1 |
| ../../../period | DatePeriodType |   | 0..1 |
| ../../../../start | date |   | 0..1 |
| ../../../../end | date |   | 0..1 |
| ../../../digitalNotification | boolean |   | 0..1 |
| ../../contactPerson | ContactPersonType |   | 0..* |
| ../../../contactRelationshipType | CodedValue |   | 1..1 |
| ../../../priorityOrder | int |   | 0..1 |
| ../../../givenName | String80 |   | 0..1 |
| ../../../surName | String80 |   | 0..1 |
| ../../../middleName | String80 |   | 0..1 |
| ../../../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../../contactType | CodedValue |   | 1..1 |
| ../../../../use | CodedValue |   | 0..1 |
| ../../../../value | string |   | 0..1 |
| ../../../../rank | int |   | 0..1 |
| ../../../../comment | string |   | 0..1 |
| ../../../../period | DatePeriodType |   | 0..1 |
| ../../../../../start | date |   | 0..1 |
| ../../../../../end | date |   | 0..1 |
| ../../../../digitalNotification | boolean |   | 0..1 |
| ../../protectedPersonIndicator | boolean |   | 1..1 |
| ../../protectedPopulationRecord | boolean |   | 0..1 |
| ../../optoutPaperNotification | boolean |   | 0..1 |
| ../../updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../root | string |   | 1..1 |
| ../../../../../extension | string |   | 0..1 |
| ../../../updateTime | Timestamp |   | 0..1 |

#### 7.11.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationUnrestrictedResponder:4:UpdatePersonContactInformationUnrestricted`

#### 7.11.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [UpdatePersonContactInformationUnrestrictedInteraction_4.0_RIVTABP21.wsdl](UpdatePersonContactInformationUnrestrictedInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [UpdatePersonContactInformationUnrestrictedResponder_4.0.xsd](UpdatePersonContactInformationUnrestrictedResponder_4.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_UpdatePersonContactInformationUnrestricted_4.0.docx](SjD_TK_UpdatePersonContactInformationUnrestricted_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.11.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/updatepersoncontactinformationunrestricted-request](StructureDefinition-updatepersoncontactinformationunrestricted-request.md)
* **Logisk modell (response):** [StructureDefinition/updatepersoncontactinformationunrestricted](StructureDefinition-updatepersoncontactinformationunrestricted.md)
* **Kodsystem:** [CodeSystem/SPP-resultcode-cs](CodeSystem-SPP-resultcode-cs.md)
* **ValueSet:** [ValueSet/SPP-resultcode-vs](ValueSet-SPP-resultcode-vs.md)

### UpdatePerson

Tjänst för att ta ut en ny reservidentitet (NRID), uppdatera en befintlig reservidentitet, eller lägga till en lokal reservidentitet (LRID). Om tjänsten anropas utan identitet så erhålls en ny identitet (NRID) i svaret baserad på de uppgifter som har angivets på personen, ex födelsedatum, kön.

#### 7.12.1 Version

5

#### 7.12.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| Actor | urn:riv:strategicresourcemanagement:persons:person:5:ActorType | Den som utför uppdateringen. Aktörens identitet ska även kompletteras med en organisatorisk identitet som kan peka ut PUA-ansvarig organisation. Se datatyp ActorType. | 1..1 |
| personId | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Personens identitet | 0..1 |
| gender | urn:riv:strategicresourcemanagement:persons:person:5:CodedValue | Kön (se kodverk, [R3]) | 0..1 |
| versionToUpdate | urn:riv:strategicresourcemanagement:persons:person:5:Timestamp | Håller reda på senast gällande version. Skall bifogas i de fall man genom en föregående läsning har erhållit detta attribut | 0..1 |
| Name | urn:riv:strategicresourcemanagement:persons:person:5:NameType | Personens alla namn | 0..1 |
| Birth | urn:riv:strategicresourcemanagement:persons:person:5:BirthType | Personens födelsedata | 0..1 |
| relationship | urn:riv:strategicresourcemanagement:persons:person:5:RelationshipType | Personens relationer | 0..* |
| givenAddress | urn:riv:strategicresourcemanagement:persons:person:5:ResidentialAddressType | Personen adress | 0..1 |
| deregistration | urn:riv:strategicresourcemanagement:persons:person:5:DeregistrationType | Avregistreringsorsak | 0..1 |
| administrativeInformation | urn:riv:strategicresourcemanagement:persons:person:5:AdministrativeInformationType | Administrativa uppgifter som normalt knyts till personer med reservidentitet | 0..1 |
| confirmedIdentity | urn:riv:strategicresourcemanagement:persons:person:5:ConfirmedIdentityType | Anger på vilket sätt en (reserv)identitet har styrkts | 0..* |
| addressAbroad | urn:riv:strategicresourcemanagement:persons:person:5:AddressAbroadType | Uppgiven utlandsadress | 0..1 |
| Svar |   |   |   |
| updatePersonResult | urn:riv:strategicresourcemanagement:persons:person:5:UpdatePersonResultType | UpdatePersonResult med status för om tjänsten utfördes, samt eventuellt uppdaterad/skapad personpost. För felkoder, se datatyp resultType | 1..1 |

#### 7.12.3 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| | | |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #2 | Uppdatering av kontaktuppgifter | Attributet updateTime i actor ska normalt ej anges, detta ska producenten ange. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #1 | Uppdatering kontaktuppgifter | En update (uppdatering av befintlig post) ska alltid föregås av en läsning via GetPersonsForProfile och då med minst profil 4. Detta för att i anropet till UpdatePerson få med sig befintlig information på personen. De attribut som skickas in utan data blir raderade. |

##### 7.12.3.1 Icke funktionella krav

Se 4.2

###### 7.12.3.1.1 SLA-krav

Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

Se 4.2

#### 7.12.4 Annan information om kontraktet

Kontraktet används enbart för att skapa eller uppdatera information för en person med reservidentitet. En reservidentitet byggs upp kring information om personen (se ref [R3]). Om man vill skapa en ”anonym” reservidentitet, kan man göra detta genom 2 anrop till tjänsten. Vid anrop 1 så anges enbart namn på personen, då skapas en reservidentitet som ej innehåller uppgifter om kön & födelsedata. Därefter kan man i anrop 2 tillföra dessa uppgifter, se Flöde 5a.

#### 7.12.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| actor | ActorType | Datatyp som identifierar en aktör. | 1..1 |
| ../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |
| ../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../updateTime | Timestamp |   | 0..1 |
| personId | IIType | En universellt unik identifierare. | 0..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| gender | CodedValue |   | 0..1 |
| versionToUpdate | Timestamp |   | 0..1 |
| name | NameType | Namn | 0..1 |
| ../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../givenName | String80 |   | 0..1 |
| ../middleName | String80 |   | 0..1 |
| ../surname | String80 |   | 0..1 |
| ../notificationName | String40 |   | 0..1 |
| birth | BirthType | Uppgifter om födelse | 0..1 |
| ../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |   | 1..1 |
| ../../value | PartialDateValue |   | 1..1 |
| ../placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| ../../birthCountyCode | String2 |   | 0..1 |
| ../../birthParish | String40 |   | 0..1 |
| ../birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |
| ../../placeOfBirthAbroad | String80 |   | 0..1 |
| ../../countryOfBirth | String40 |   | 0..1 |
| relationship | RelationshipType | Grupp för relation | 0..* |
| ../relationshipId | RelationshipIdType | Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes. | 1..1 |
| ../../personalIdentity | IIType | En universellt unik identifierare. | 0..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../relationshipType | CodedValue |   | 1..1 |
| ../relationshipFromDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |   | 1..1 |
| ../../value | PartialDateValue |   | 1..1 |
| ../relationshipToDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |   | 1..1 |
| ../../value | PartialDateValue |   | 1..1 |
| ../name | NameType | Namn | 0..1 |
| ../../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../../givenName | String80 |   | 0..1 |
| ../../middleName | String80 |   | 0..1 |
| ../../surname | String80 |   | 0..1 |
| ../../notificationName | String40 |   | 0..1 |
| ../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../deregistrationReasonCode | CodedValue |   | 0..1 |
| ../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../status | CodedValue |   | 0..1 |
| givenAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../careOf | String40 |   | 0..1 |
| ../postalAddress1 | String40 |   | 0..1 |
| ../postalAddress2 | String40 |   | 0..1 |
| ../postalCode | PostalCode |   | 0..1 |
| ../city | String40 |   | 0..1 |
| deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../deregistrationReasonCode | CodedValue |   | 0..1 |
| ../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |   | 1..1 |
| ../../value | PartialDateValue |   | 1..1 |
| ../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |   | 1..1 |
| ../../value | PartialDateValue |   | 1..1 |
| administrativeInformation | AdministrativeInformationType | Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID). | 0..1 |
| ../categoryOfPerson | CodedValue |   | 0..1 |
| ../accountCode | CodedValue |   | 0..1 |
| ../comment | string |   | 0..1 |
| confirmedIdentity | ConfirmedIdentityType | Klass för hur reservidentitetsuppgifter är styrkta. | 0..* |
| ../typeOfIdentification | CodedValue |   | 0..1 |
| ../identificationNumber | string |   | 0..1 |
| ../issuersOfId | string |   | 0..1 |
| ../validDatePeriod | DatePeriodType |   | 0..1 |
| ../../start | date |   | 0..1 |
| ../../end | date |   | 0..1 |
| ../attachmentId | string |   | 0..* |
| ../countryCode | CountryCode |   | 0..1 |
| addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |
| ../postalAddress1 | String40 |   | 0..1 |
| ../postalAddress2 | String40 |   | 0..1 |
| ../postalAddress3 | String40 |   | 0..1 |
| ../countryCode | String40 |   | 0..1 |
| ../addressAbroadDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |   | 1..1 |
| ../../value | PartialDateValue |   | 1..1 |
| ../votingDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |   | 1..1 |
| ../../value | PartialDateValue |   | 1..1 |
| **Svar** |   |   |   |
| updatePersonResult | UpdatePersonResultType |   | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |   | 1..1 |
| ../../resultText | string |   | 0..1 |
| ../personRecord | PersonRecordType | Grupp för personpost | 0..1 |
| ../../personalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../identityLevel | string |   | 0..1 |
| ../../identityLevelDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |   | 1..1 |
| ../../../value | PartialDateValue |   | 1..1 |
| ../../gender | CodedValue |   | 0..1 |
| ../../protectedPersonIndicator | boolean |   | 1..1 |
| ../../testIndicator | boolean |   | 1..1 |
| ../../primaryIdentity | boolean |   | 1..1 |
| ../../version | Timestamp |   | 0..1 |
| ../../name | NameType | Namn | 0..1 |
| ../../../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../../../givenName | String80 |   | 0..1 |
| ../../../middleName | String80 |   | 0..1 |
| ../../../surname | String80 |   | 0..1 |
| ../../../notificationName | String40 |   | 0..1 |
| ../../linkedIdentity | LinkedIdentityType | Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR | 0..* |
| ../../../referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../assuranceLevel | CodedValue |   | 1..1 |
| ../../../primaryIdentity | boolean |   | 1..1 |
| ../../referredPersonalIdentities | ReferredPersonalIdentityType | Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter). | 0..* |
| ../../../referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../referredPersonalIdentityStatus | string |   | 0..1 |
| ../../birth | BirthType | Uppgifter om födelse | 0..1 |
| ../../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| ../../../../birthCountyCode | String2 |   | 0..1 |
| ../../../../birthParish | String40 |   | 0..1 |
| ../../../birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |
| ../../../../placeOfBirthAbroad | String80 |   | 0..1 |
| ../../../../countryOfBirth | String40 |   | 0..1 |
| ../../populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..1 |
| ../../../populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../countyCode | String2 |   | 0..1 |
| ../../../municipalityCode | String2 |   | 0..1 |
| ../../../parishCode | String2 |   | 0..1 |
| ../../../propertyDesignation | String40 |   | 0..1 |
| ../../../fictitiousPropertyNumber | FictitiousPropertyNumber |   | 0..1 |
| ../../../populationRegistrationType | CodedValue |   | 0..1 |
| ../../../localRegistrationTime | dateTime |   | 0..1 |
| ../../../localRegistrationEndTime | dateTime |   | 0..1 |
| ../../populationRegistrationRecord | PopulationRegistrationRecordType | Folkbokföringspost | 0..1 |
| ../../../syncronizationTime | dateTime |   | 0..1 |
| ../../../notificationCase | NotificationCaseType | Ärendeuppgifter | 0..1 |
| ../../../../recordId | RecordId |   | 0..1 |
| ../../../../notificationType | String40 |   | 0..1 |
| ../../../../modificationTime | dateTime |   | 0..1 |
| ../../../../totalRecord | boolean |   | 0..1 |
| ../../../../notificationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../historicalRecords | HistoricalRecordsType | Grupp för historik | 0..1 |
| ../../../../populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..* |
| ../../../../../populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../../countyCode | String2 |   | 0..1 |
| ../../../../../municipalityCode | String2 |   | 0..1 |
| ../../../../../parishCode | String2 |   | 0..1 |
| ../../../../../propertyDesignation | String40 |   | 0..1 |
| ../../../../../fictitiousPropertyNumber | FictitiousPropertyNumber |   | 0..1 |
| ../../../../../populationRegistrationType | CodedValue |   | 0..1 |
| ../../../../../localRegistrationTime | dateTime |   | 0..1 |
| ../../../../../localRegistrationEndTime | dateTime |   | 0..1 |
| ../../../../historicalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../../careOf | String40 |   | 0..1 |
| ../../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../../city | String40 |   | 0..1 |
| ../../addressInformation | AddressInformationType | Grupp för adressuppgifter | 0..1 |
| ../../../residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../nationalKeys | NationalKeysType | Riksnycklar | 0..1 |
| ../../../../propertyId | PropertyId |   | 0..1 |
| ../../../../addressPlaceId | AddressPlaceId |   | 0..1 |
| ../../../../apartmentId | ApartmentId |   | 0..1 |
| ../../../district | DistrictType | Grupp för Distriktskod | 0..1 |
| ../../../../districtCode | DistrictCode |   | 0..1 |
| ../../../specialPostalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalAddress3 | String40 |   | 0..1 |
| ../../../../countryCode | String40 |   | 0..1 |
| ../../../../addressAbroadDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../votingDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../givenAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../UUID | UUIDType | UUID för fastighet, aderess och lägenhet | 0..1 |
| ../../../../propertyId | string |   | 0..1 |
| ../../../../addressPlaceId | string |   | 0..1 |
| ../../../../apartmentId | string |   | 0..1 |
| ../../contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../contactType | CodedValue |   | 1..1 |
| ../../../use | CodedValue |   | 0..1 |
| ../../../value | string |   | 0..1 |
| ../../../rank | int |   | 0..1 |
| ../../../comment | string |   | 0..1 |
| ../../../period | DatePeriodType |   | 0..1 |
| ../../../../start | date |   | 0..1 |
| ../../../../end | date |   | 0..1 |
| ../../../digitalNotification | boolean |   | 0..1 |
| ../../contactPerson | ContactPersonType |   | 0..* |
| ../../../contactRelationshipType | CodedValue |   | 1..1 |
| ../../../priorityOrder | int |   | 0..1 |
| ../../../givenName | String80 |   | 0..1 |
| ../../../surName | String80 |   | 0..1 |
| ../../../middleName | String80 |   | 0..1 |
| ../../../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |   | 0..1 |
| ../../../../postalAddress1 | String40 |   | 0..1 |
| ../../../../postalAddress2 | String40 |   | 0..1 |
| ../../../../postalCode | PostalCode |   | 0..1 |
| ../../../../city | String40 |   | 0..1 |
| ../../../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../../contactType | CodedValue |   | 1..1 |
| ../../../../use | CodedValue |   | 0..1 |
| ../../../../value | string |   | 0..1 |
| ../../../../rank | int |   | 0..1 |
| ../../../../comment | string |   | 0..1 |
| ../../../../period | DatePeriodType |   | 0..1 |
| ../../../../../start | date |   | 0..1 |
| ../../../../../end | date |   | 0..1 |
| ../../../../digitalNotification | boolean |   | 0..1 |
| ../../confirmedIdentity | ConfirmedIdentityType | Klass för hur reservidentitetsuppgifter är styrkta. | 0..* |
| ../../../typeOfIdentification | CodedValue |   | 0..1 |
| ../../../identificationNumber | string |   | 0..1 |
| ../../../issuersOfId | string |   | 0..1 |
| ../../../validDatePeriod | DatePeriodType |   | 0..1 |
| ../../../../start | date |   | 0..1 |
| ../../../../end | date |   | 0..1 |
| ../../../attachmentId | string |   | 0..* |
| ../../../countryCode | CountryCode |   | 0..1 |
| ../../administrativeInformation | AdministrativeInformationType | Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID). | 0..1 |
| ../../../categoryOfPerson | CodedValue |   | 0..1 |
| ../../../accountCode | CodedValue |   | 0..1 |
| ../../../comment | string |   | 0..1 |
| ../../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../../deregistrationReasonCode | CodedValue |   | 0..1 |
| ../../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../maritalStatus | MaritalStatusType | Civistånd | 0..1 |
| ../../../maritalStatusCode | CodedValue |   | 0..1 |
| ../../../maritalStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../immigration | ImmigrationType | Grupp för invandringsuppgifter | 0..1 |
| ../../../immigrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../rightOfResidence | boolean |   | 0..1 |
| ../../../immigrationIdentity | ImmigrationIdentityType | Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |
| ../../../../personalIdentityNumber | PersonalIdentityNumber |   | 1..1 |
| ../../../../country | CountryCode |   | 1..1 |
| ../../citizenship | CitizenshipType | Grupp för medborgarskap | 0..* |
| ../../../citizenshipCountryCode | CountryCode |   | 0..1 |
| ../../../citizenshipDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../status | CodedValue |   | 0..1 |
| ../../relationship | RelationshipType | Grupp för relation | 0..* |
| ../../../relationshipId | RelationshipIdType | Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes. | 1..1 |
| ../../../../personalIdentity | IIType | En universellt unik identifierare. | 0..1 |
| ../../../../../root | string |   | 1..1 |
| ../../../../../extension | string |   | 0..1 |
| ../../../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../relationshipType | CodedValue |   | 1..1 |
| ../../../relationshipFromDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../relationshipToDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../name | NameType | Namn | 0..1 |
| ../../../../givenNameIndicator | GivenNameIndicator |   | 0..1 |
| ../../../../givenName | String80 |   | 0..1 |
| ../../../../middleName | String80 |   | 0..1 |
| ../../../../surname | String80 |   | 0..1 |
| ../../../../notificationName | String40 |   | 0..1 |
| ../../../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../../../deregistrationReasonCode | CodedValue |   | 0..1 |
| ../../../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../../value | PartialDateValue |   | 1..1 |
| ../../../status | CodedValue |   | 0..1 |
| ../../coOrdinationNumberData | CoOrdinationNumberDataType | Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige. | 0..1 |
| ../../../allocationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../preliminaryTransferDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../renewalDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../deceasedDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../personalIdentityStatus | PersonalIdentityStatusType | Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer. | 0..1 |
| ../../../identityStatus | string |   | 0..1 |
| ../../../identityStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |   | 1..1 |
| ../../../../value | PartialDateValue |   | 1..1 |
| ../../../identityStatusCause | string |   | 0..1 |
| ../../updatePersonActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../root | string |   | 1..1 |
| ../../../../../extension | string |   | 0..1 |
| ../../../updateTime | Timestamp |   | 0..1 |
| ../../updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../root | string |   | 1..1 |
| ../../../../../extension | string |   | 0..1 |
| ../../../updateTime | Timestamp |   | 0..1 |
| ../../attachment | MultimediaType | Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL. | 0..* |
| ../../../id | string |   | 0..1 |
| ../../../mediaType | CodedValue |   | 1..1 |
| ../../../value | base64Binary |   | 0..1 |
| ../../../reference | anyURI |   | 0..1 |
| ../../optoutPaperNotification | boolean |   | 0..1 |
| ../../protectedPopulationRecord | boolean |   | 0..1 |

#### 7.12.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:UpdatePersonResponder:5:UpdatePerson`

#### 7.12.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [UpdatePersonInteraction_5.0_RIVTABP21.wsdl](UpdatePersonInteraction_5.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [UpdatePersonResponder_5.0.xsd](UpdatePersonResponder_5.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [UpdatePersonRequest.xml](UpdatePersonRequest.xml) | Exempel på begäran |
| [UpdatePersonResponse.xml](UpdatePersonResponse.xml) | Exempel på svar |
| [SjD_TK_UpdatePerson_5.0.docx](SjD_TK_UpdatePerson_5.0.docx) | Självdeklaration (tjänstekonsument), version 5.0 |

#### 7.12.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/updateperson-request](StructureDefinition-updateperson-request.md)
* **Logisk modell (response):** [StructureDefinition/updateperson](StructureDefinition-updateperson.md)
* **Kodsystem:** [CodeSystem/SPP-datetypeformat-cs](CodeSystem-SPP-datetypeformat-cs.md)
* **ValueSet:** [ValueSet/SPP-datetypeformat-vs](ValueSet-SPP-datetypeformat-vs.md)
* **Kodsystem:** [CodeSystem/SPP-resultcode-cs](CodeSystem-SPP-resultcode-cs.md)
* **ValueSet:** [ValueSet/SPP-resultcode-vs](ValueSet-SPP-resultcode-vs.md)

### LinkPersonIdentity

Tjänst för att koppla en persons identitet till dess huvudidentitet. T.ex en reservidentitet (LRID/NRID) till ett personnummer. Dvs kunna ange att en person som har 2 identiteter är densamma person. Genom denna koppling kan t.ex NPÖ för en person som är journalförd på 2 olika identiteter, t.ex en reservidentitet och sitt ordinarie personnummer, visa upp journalerna för bägge identiteterna.

#### 7.13.1 Version

4.0

#### 7.13.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| actor | urn:riv:strategicresourcemanagement:persons:person:5:ActorType | Den aktör som utför kopplingen | 1..1 |
| fromIdentity | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Den identitet som man vill koppla till en huvudidentitet. | 1..1 |
| toIdentity | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Den huvudidentitet som man vill koppla till | 1..1 |
| Svar |   |   |   |
| result | urn:riv:strategicresourcemanagement:persons:person:5:ResultType | Result status för hur tjänsten utfördes. För felkoder, se datatyp resultType | 1..1 |

#### 7.13.3 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| | | |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #1 | Koppling av identiteter | Vid en koppling måste toIdentity ha >= hierarki än fromIdentity. En producent får ej godkänna en LinkPersonIdentity där toIdentity < hierarki än fromIdentity. Producenten ska då svara med ERROR och lämplig förklarande text i ResultType. Se tabell nedan för möjliga kopplingar. |
| #3 | Koppling av identiteter | Attributet updateTime i actor ska ej anges av konsumenten, detta ska utföras av producenten. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #2 | Koppling av identiteter | Den identitet som man kopplar till, toIdentity, blir den identitet som anges som huvudidentitet (se GetPersonsForProfile). Det är användaren av konsumenten som svarar för att ange vilken av identiteterna det är som är huvudidentiteten. Hierarkin är följande: LRID → NRID → SNR → PNR. Om 2st LRID behöver kopplas så ska detta göras genom att koppla de bägge LRID till ett NRID. |

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| LRID |   | X | X | X |
| NRID |   | X | X | X |
| SNR |   |   | * | * |
| PNR |   |   | * | * |

* Kopplingar mellan SNR & PNR görs enbart av SKV

(ex LRID kan länkas till NRID, SNR samt PNR. NRID kan länkas till NRID, SNR samt PNR osv)

##### 7.13.3.1 Icke funktionella krav

Se 4.2

###### 7.13.3.1.1 SLA-krav

Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

Se 4.2

#### 7.13.4 Annan information om kontraktet

N/A

#### 7.13.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| actor | ActorType | Datatyp som identifierar en aktör. | 1..1 |
| ../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |
| ../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../updateTime | Timestamp |   | 0..1 |
| fromIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| toIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |

#### 7.13.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:LinkPersonIdentityResponder:4:LinkPersonIdentity`

#### 7.13.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [LinkPersonIdentityInteraction_4.0_RIVTABP21.wsdl](LinkPersonIdentityInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [LinkPersonIdentityResponder_4.0.xsd](LinkPersonIdentityResponder_4.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [LinkPersonIdentityRequest.xml](LinkPersonIdentityRequest.xml) | Exempel på begäran |
| [LinkPersonIdentityResponse.xml](LinkPersonIdentityResponse.xml) | Exempel på svar |
| [SjD_TK_LinkPersonIdentity_4.0.docx](SjD_TK_LinkPersonIdentity_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.13.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/linkpersonidentity-request](StructureDefinition-linkpersonidentity-request.md)
* **Logisk modell (response):** [StructureDefinition/linkpersonidentity](StructureDefinition-linkpersonidentity.md)
* **Kodsystem:** [CodeSystem/SPP-resultcode-cs](CodeSystem-SPP-resultcode-cs.md)
* **ValueSet:** [ValueSet/SPP-resultcode-vs](ValueSet-SPP-resultcode-vs.md)

### UnlinkPersonIdentity

Tjänst för att koppla isär en tidigare koppling mellan 2 identiteter. T.ex en koppling mellan en reservidentitet (LRID/NRID) och ett personnummer (PNR). Skälet till isärkopplingen är normalt en felaktig tidigare genomförd koppling.

#### 7.14.1 Version

4.0

#### 7.14.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| actor | urn:riv:strategicresourcemanagement:persons:person:5:ActorType | Den aktör som utför isärkopplingen | 1..1 |
| unlinkFromIdentity | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Den huvudidentitet som man vill koppla isär från | 1..1 |
| unlinkIdentity | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Den identitet som man tidigare hade kopplat till huvudidentiteten | 1..1 |
| Svar |   |   |   |
| result | urn:riv:strategicresourcemanagement:persons:person:5:ResultType | Result status för om tjänsten utfördes. För felkoder, se datatyp resultType | 1..1 |

#### 7.14.3 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| | | |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #3 | Isärkoppling av identiteter | Attributet updateTime i actor ska normalt ej anges, detta ska producenten ange. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Isärkoppling av identiteter | En producent får ej tillåta en UnlinkPersonIdentity mellan ett SNR och ett PNR. Producenten ska då svara med ERROR och lämplig förklarande text i ResultType. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #2 | Koppling av identiteter | Det är endast SKV som äger sammankopplingen mellan ett samordningsnummer (SNR) till ett PNR. |

##### 7.14.3.1 Icke funktionella krav

Se 4.2

###### 7.14.3.1.1 SLA-krav

Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

Se 4.2

#### 7.14.4 Annan information om kontraktet

N/A

#### 7.14.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| actor | ActorType | Datatyp som identifierar en aktör. | 1..1 |
| ../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |
| ../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../updateTime | Timestamp |   | 0..1 |
| unlinkFromIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| unlinkIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |

#### 7.14.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentityResponder:4:UnlinkPersonIdentity`

#### 7.14.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [UnlinkPersonIdentityInteraction_4.0_RIVTABP21.wsdl](UnlinkPersonIdentityInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [UnlinkPersonIdentityResponder_4.0.xsd](UnlinkPersonIdentityResponder_4.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [UnlinkPersonIdentityRequest.xml](UnlinkPersonIdentityRequest.xml) | Exempel på begäran |
| [UnlinkPersonIdentityResponse.xml](UnlinkPersonIdentityResponse.xml) | Exempel på svar |
| [SjD_TK_UnlinkPersonIdentity_4.0.docx](SjD_TK_UnlinkPersonIdentity_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.14.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/unlinkpersonidentity-request](StructureDefinition-unlinkpersonidentity-request.md)
* **Logisk modell (response):** [StructureDefinition/unlinkpersonidentity](StructureDefinition-unlinkpersonidentity.md)
* **Kodsystem:** [CodeSystem/SPP-resultcode-cs](CodeSystem-SPP-resultcode-cs.md)
* **ValueSet:** [ValueSet/SPP-resultcode-vs](ValueSet-SPP-resultcode-vs.md)

### GetPersonsByFile

GetPersonsByFile är en REST-tjänst, dvs ingen RIVTA-tjänst. Tjänsten har tillkommit vid release 4.6 och genomgått namnbyte vid release av 5.0 av Personuppgiftstjänsten (tidigare namn var SearchPersonsByFile).

Tjänstens uppgift är att stödja verksamhetsbehovet att till Personuppgiftstjänsten kunna skicka in en lista med personidentiteter och i retur få personuppgifter. Ett typiskt användningsfall är att få uppdaterade personuppgifter utifrån en lista av personidentiteter från ett givet datum, för att uppdatera en lokal cache.

Genom att i anropet ange önskad profil så erhålls i svaret olika mycket detaljerade personuppgifter.

Tjänsten anropas med ett POST-anrop i vilket filen med personidentiteterna ingår. Som svar erhålls ett ”order-id” vilket sen används vid anrop av kontraktet GetFilesForOrderId.

För mer information om samverkande RIVTA-kontrakt , se R[14]

#### 7.15.1 Version

1

#### 7.15.2 Fältregler

Eftersom GetPersonsByFile ej är en RIVTA-tjänst så anges här inga attribut enligt RIVTA.

Tjänsten anropas med ett POST-anrop i vilket filen med personidentiteterna ingår. Som svar erhålls ett ”order-id” vilket sen används vid anrop av kontraktet GetFilesForOderId.

Parametrar:

| | |
| :--- | :--- |
| profile | Obligatorisk parameter för vilken profil som önskas i svaret. Se TKB för beskrivning av profilerna P1-P5. Observera att profilen skall anges med versalt P. / Datatyp: String. / Exempel: P1 |
| fromDate | Valfri parameter för det datum man är intresserad av förändringar från och med baserat på fältet version i personposten. / Datatyp: LocalDateTime. / Exempel: 2021-10-12T00:00:00 |
| maxResultsPerFile | Valfri parameter för max antal personposter per fil. Ej angivet så returneras alltid resultatet i endast en fil. Detta värde får ej vara lägre än 500. / Datatyp: Integer. / Exempel: 1000 |
| primaryidentity | Valfri parameter. Om satt till true så kommer endast personposter som är huvudidentitet inkluderas i svaret. Om satt till false eller ej angiven alls så kommer alla personposter att inkluderas i svaret, vare sig de är huvudidentiteter eller ej. / Datatyp: Boolean. / Exempel: true |

#### 7.15.3 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

N/A

##### 7.15.3.1 Icke funktionella krav

Se 4.2

###### 7.15.3.1.1 SLA-krav

Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

Se 4.2

#### 7.15.4 Annan information om kontraktet

N/A

#### 7.15.5 Källfiler och FHIR-artefakter

GetPersonsByFile är en REST-tjänst och inget RIV-TA-kontrakt. Källan innehåller därför ingen WSDL eller XSD för tjänsten, och inga logiska modeller har genererats.

