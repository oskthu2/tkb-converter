### ActorType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Datatyp som identifierar en aktör.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | En universellt unik identifierare. | 1..1 |
| professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| updateTime | Timestamp |  | 0..1 |

### AddressAbroadType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Utlandsadress

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| postalAddress1 | String40 |  | 0..1 |
| postalAddress2 | String40 |  | 0..1 |
| postalAddress3 | String40 |  | 0..1 |
| countryCode | String40 |  | 0..1 |
| addressAbroadDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| votingDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

### AddressInformationType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för adressuppgifter

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |
| nationalKeys | NationalKeysType | Riksnycklar | 0..1 |
| district | DistrictType | Grupp för Distriktskod | 0..1 |
| specialPostalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |
| givenAddress | ResidentialAddressType | Svensk adress | 0..1 |
| UUID | UUIDType | UUID för fastighet, aderess och lägenhet | 0..1 |

### AdministrativeInformationType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| categoryOfPerson | CodedValue |  | 0..1 |
| accountCode | CodedValue |  | 0..1 |
| comment | string |  | 0..1 |

### BirthAbroadType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Uppgifter om födelse i utlandet

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | String80 |  | 0..1 |
| countryOfBirth | String40 |  | 0..1 |

### BirthType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Uppgifter om födelse

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |

### CitizenshipType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för medborgarskap

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| citizenshipCountryCode | CountryCode |  | 0..1 |
| citizenshipDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| status | CodedValue |  | 0..1 |

### CoOrdinationNumberDataType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| allocationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| preliminaryTransferDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| renewalDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| deceasedDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

### ConfirmedIdentityType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Klass för hur reservidentitetsuppgifter är styrkta.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| typeOfIdentification | CodedValue |  | 0..1 |
| identificationNumber | string |  | 0..1 |
| issuersOfId | string |  | 0..1 |
| validDatePeriod | DatePeriodType |  | 0..1 |
| attachmentId | string |  | 0..* |
| countryCode | CountryCode |  | 0..1 |

### ContactInformationRecordType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Uppgifter om personens kontaktuppgifter och kontaktpersoner

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| version | Timestamp |  | 1..1 |
| personId | IIType | En universellt unik identifierare. | 1..1 |
| contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| contactPerson | ContactPersonType |  | 0..* |
| protectedPersonIndicator | boolean |  | 1..1 |
| protectedPopulationRecord | boolean |  | 0..1 |
| optoutPaperNotification | boolean |  | 0..1 |
| updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |

### ContactInformationType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Klass för patientens egna angivna kontakuppgifter

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| contactType | CodedValue |  | 1..1 |
| use | CodedValue |  | 0..1 |
| value | string |  | 0..1 |
| rank | int |  | 0..1 |
| comment | string |  | 0..1 |
| period | DatePeriodType |  | 0..1 |
| digitalNotification | boolean |  | 0..1 |

### ContactPersonType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| contactRelationshipType | CodedValue |  | 1..1 |
| priorityOrder | int |  | 0..1 |
| givenName | String80 |  | 0..1 |
| surName | String80 |  | 0..1 |
| middleName | String80 |  | 0..1 |
| contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |

### DatePeriodType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | date |  | 0..1 |
| end | date |  | 0..1 |

### DeregistrationType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Uppgifter om avregistrering

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| deregistrationReasonCode | CodedValue |  | 0..1 |
| deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

### DistrictType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för Distriktskod

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| districtCode | DistrictCode |  | 0..1 |

### HistoricalRecordsType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för historik

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..* |
| historicalAddress | ResidentialAddressType | Svensk adress | 0..1 |

### IIType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

En universellt unik identifierare.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 0..1 |

### ImmigrationIdentityType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentityNumber | PersonalIdentityNumber |  | 1..1 |
| country | CountryCode |  | 1..1 |

### ImmigrationType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för invandringsuppgifter

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| immigrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| rightOfResidence | boolean |  | 0..1 |
| immigrationIdentity | ImmigrationIdentityType | Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |

### LinkedIdentityType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| assuranceLevel | CodedValue |  | 1..1 |
| primaryIdentity | boolean |  | 1..1 |

### MaritalStatusType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Civistånd

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| maritalStatusCode | CodedValue |  | 0..1 |
| maritalStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

### MultimediaType (4)

Domänschema `GetFilesForOrderIdResponder_4.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:GetFilesForOrderIdResponder:4`).

Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | string |  | 0..1 |
| mediaType | CodedValue |  | 1..1 |
| value | base64Binary |  | 0..1 |
| reference | anyURI |  | 0..1 |

### MultimediaType (5)

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | string |  | 0..1 |
| mediaType | CodedValue |  | 1..1 |
| value | base64Binary |  | 0..1 |
| reference | anyURI |  | 0..1 |

### NameType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Namn

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| givenNameIndicator | GivenNameIndicator |  | 0..1 |
| givenName | String80 |  | 0..1 |
| middleName | String80 |  | 0..1 |
| surname | String80 |  | 0..1 |
| notificationName | String40 |  | 0..1 |

### NationalKeysType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Riksnycklar

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| propertyId | PropertyId |  | 0..1 |
| addressPlaceId | AddressPlaceId |  | 0..1 |
| apartmentId | ApartmentId |  | 0..1 |

### NotificationCaseType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Ärendeuppgifter

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| recordId | RecordId |  | 0..1 |
| notificationType | String40 |  | 0..1 |
| modificationTime | dateTime |  | 0..1 |
| totalRecord | boolean |  | 0..1 |
| notificationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

### PartialDateType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Kan beskriva ett datum med variabel noggrannhet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| format | DateTypeFormatType |  | 1..1 |
| value | PartialDateValue |  | 1..1 |

### PersonRecordType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för personpost

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| identityLevel | string |  | 0..1 |
| identityLevelDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| gender | CodedValue |  | 0..1 |
| protectedPersonIndicator | boolean |  | 1..1 |
| testIndicator | boolean |  | 1..1 |
| primaryIdentity | boolean |  | 1..1 |
| version | Timestamp |  | 0..1 |
| name | NameType | Namn | 0..1 |
| linkedIdentity | LinkedIdentityType | Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR | 0..* |
| referredPersonalIdentities | ReferredPersonalIdentityType | Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter). | 0..* |
| birth | BirthType | Uppgifter om födelse | 0..1 |
| populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..1 |
| populationRegistrationRecord | PopulationRegistrationRecordType | Folkbokföringspost | 0..1 |
| addressInformation | AddressInformationType | Grupp för adressuppgifter | 0..1 |
| contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| contactPerson | ContactPersonType |  | 0..* |
| confirmedIdentity | ConfirmedIdentityType | Klass för hur reservidentitetsuppgifter är styrkta. | 0..* |
| administrativeInformation | AdministrativeInformationType | Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID). | 0..1 |
| deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| maritalStatus | MaritalStatusType | Civistånd | 0..1 |
| immigration | ImmigrationType | Grupp för invandringsuppgifter | 0..1 |
| citizenship | CitizenshipType | Grupp för medborgarskap | 0..* |
| relationship | RelationshipType | Grupp för relation | 0..* |
| coOrdinationNumberData | CoOrdinationNumberDataType | Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige. | 0..1 |
| personalIdentityStatus | PersonalIdentityStatusType | Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer. | 0..1 |
| updatePersonActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| attachment | MultimediaType | Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL. | 0..* |
| optoutPaperNotification | boolean |  | 0..1 |
| protectedPopulationRecord | boolean |  | 0..1 |

### PersonalIdentityStatusType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| identityStatus | string |  | 0..1 |
| identityStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| identityStatusCause | string |  | 0..1 |

### PlaceOfBirthSwedenType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Uppgifter om hemort i Sverige

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| birthCountyCode | String2 |  | 0..1 |
| birthParish | String40 |  | 0..1 |

### PopulationRegistrationLocalityType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Uppgifter om folkbokföring

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| countyCode | String2 |  | 0..1 |
| municipalityCode | String2 |  | 0..1 |
| parishCode | String2 |  | 0..1 |
| propertyDesignation | String40 |  | 0..1 |
| fictitiousPropertyNumber | FictitiousPropertyNumber |  | 0..1 |
| populationRegistrationType | CodedValue |  | 0..1 |
| localRegistrationTime | dateTime |  | 0..1 |
| localRegistrationEndTime | dateTime |  | 0..1 |

### PopulationRegistrationRecordType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Folkbokföringspost

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| syncronizationTime | dateTime |  | 0..1 |
| notificationCase | NotificationCaseType | Ärendeuppgifter | 0..1 |
| historicalRecords | HistoricalRecordsType | Grupp för historik | 0..1 |

### ProfessionalType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Datatyp som identifierar en aktör inom en profession.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| organizationId | IIType | En universellt unik identifierare. | 1..1 |

### ReferredPersonalIdentityType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| referredPersonalIdentityStatus | string |  | 0..1 |

### RelationshipIdType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentity | IIType | En universellt unik identifierare. | 0..1 |
| dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

### RelationshipType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för relation

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| relationshipId | RelationshipIdType | Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes. | 1..1 |
| relationshipType | CodedValue |  | 1..1 |
| relationshipFromDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| relationshipToDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| name | NameType | Namn | 0..1 |
| deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| status | CodedValue |  | 0..1 |

### RequestedPersonRecordType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| requestedPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| personRecord | PersonRecordType | Grupp för personpost | 0..1 |

### ResidentialAddressType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Svensk adress

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careOf | String40 |  | 0..1 |
| postalAddress1 | String40 |  | 0..1 |
| postalAddress2 | String40 |  | 0..1 |
| postalCode | PostalCode |  | 0..1 |
| city | String40 |  | 0..1 |

### ResultType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType |  | 1..1 |
| resultText | string |  | 0..1 |

### UUIDType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

UUID för fastighet, aderess och lägenhet

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| propertyId | string |  | 0..1 |
| addressPlaceId | string |  | 0..1 |
| apartmentId | string |  | 0..1 |

### UpdatePersonContactInformationResultType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes. | 1..1 |
| contactInformationRecord | ContactInformationRecordType | Uppgifter om personens kontaktuppgifter och kontaktpersoner | 0..1 |

### UpdatePersonResultType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes. | 1..1 |
| personRecord | PersonRecordType | Grupp för personpost | 0..1 |
