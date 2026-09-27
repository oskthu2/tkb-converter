### AddressAbroadType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Utlandsadress

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| postalAddress1 | String40 |  | 0..1 |
| postalAddress2 | String40 |  | 0..1 |
| postalAddress3 | String40 |  | 0..1 |
| country | String40 |  | 0..1 |
| addressAbroadDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| votingDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

### AddressInformationType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för adressuppgifter

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |
| nationalKeys | NationalKeysType | Riksnycklar | 0..1 |
| district | DistrictType | Grupp för Distriktskod | 0..1 |
| specialPostalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |

### BirthAbroadType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Uppgifter om födelse i utlandet

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | PlaceOfBirthAbroadType | Födelseort utland | 0..1 |
| countryOfBirth | String40 |  | 0..1 |

### BirthType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Uppgifter om födelse

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |

### CitizenshipCountryCodeType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för medborgarskapslandkod

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| countryCode | CountryCode |  | 0..1 |
| attested | boolean |  | 0..1 |

### CitizenshipType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för medborgarskap

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| citizenshipCountryCode | CitizenshipCountryCodeType | Grupp för medborgarskapslandkod | 0..1 |
| citizenshipDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| status | CitizenshipStatusType |  | 0..1 |

### DeregistrationType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Uppgifter om avregistrering

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| deregistrationReasonCode | DeregistrationReasonCodeType |  | 0..1 |
| deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

### DistrictType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för Distriktskod

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| districtCode | DistrictCode |  | 0..1 |

### HistoricalAddressType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för historik adress

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |

### HistoricalRecordsType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för historik

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..* |
| historicalAddress | HistoricalAddressType | Grupp för historik adress | 0..1 |

### ImmigrationIdentityType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentityNumber | PersonalIdentityNumber |  | 1..1 |
| country | CountryCode |  | 1..1 |

### ImmigrationType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för invandringsuppgifter

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| immigrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| rightOfResidence | boolean |  | 0..1 |
| immigrationIdentity | ImmigrationIdentityType | Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |

### LookupResidentsResponseType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Returtyp för operationen lookupResidentsForProfile

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationRecords | PopulationRegistrationRecordType | Folkbokföringspost | 0..* |

### MaritalStatusType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Civistånd

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| maritalStatusCode | MaritalStatusCodeType |  | 0..1 |
| maritalStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

### NamePartType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för del av namn där delen kan vara styrkt eller ej

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| name | String80 |  | 0..1 |
| attested | boolean |  | 0..1 |

### NameType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Namn

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| givenNameIndicator | GivenNameIndicator |  | 0..1 |
| givenName | NamePartType | Grupp för del av namn där delen kan vara styrkt eller ej | 0..1 |
| middleName | NamePartType | Grupp för del av namn där delen kan vara styrkt eller ej | 0..1 |
| surname | NamePartType | Grupp för del av namn där delen kan vara styrkt eller ej | 0..1 |
| notificationName | String40 |  | 0..1 |

### NationalKeysType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Riksnycklar

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| propertyId | PropertyId |  | 0..1 |
| addressPlaceId | AddressPlaceId |  | 0..1 |
| apartmentId | ApartmentId |  | 0..1 |

### NotificationCaseType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Ärendeuppgifter

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| recordId | RecordId |  | 0..1 |
| notificationType | String40 |  | 0..1 |
| modificationTime | dateTime |  | 0..1 |
| totalRecord | boolean |  | 0..1 |
| notificationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

### PartialDateType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Kan beskriva ett datum med variabel noggrannhet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| format | DateTypeFormatType |  | 1..1 |
| value | PartialDateValue |  | 1..1 |

### PersonalIdentityType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Personidentitet

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | PersonalIdentityNumber |  | 1..1 |
| type | string |  | 1..1 |

### PersonalRecordType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för personpost

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentity | PersonalIdentityType | Personidentitet | 0..1 |
| referredPersonalIdentity | PersonalIdentityType | Personidentitet | 0..* |
| deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| name | NameType | Namn | 0..1 |
| populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..1 |
| addressInformation | AddressInformationType | Grupp för adressuppgifter | 0..1 |
| maritalStatus | MaritalStatusType | Civistånd | 0..1 |
| birth | BirthType | Uppgifter om födelse | 0..1 |
| immigration | ImmigrationType | Grupp för invandringsuppgifter | 0..1 |
| relationships | RelationshipType | Grupp för relation | 0..* |
| citizenship | CitizenshipType | Grupp för medborgarskap | 0..* |

### PlaceOfBirthAbroadType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Födelseort utland

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | String80 |  | 0..1 |
| attested | boolean |  | 0..1 |

### PlaceOfBirthSwedenType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Uppgifter om hemort i Sverige

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| birthCountyCode | String2 |  | 0..1 |
| birthParish | String40 |  | 0..1 |

### PopulationRegistrationLocalityType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Uppgifter om folkbokföring

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| countyCode | String2 |  | 0..1 |
| municipalityCode | String2 |  | 0..1 |
| parishCode | String2 |  | 0..1 |
| propertyDesignation | String40 |  | 0..1 |
| fictitiousPropertyNumber | FictitiousPropertyNumber |  | 0..1 |
| populationRegistrationType | PopulationRegistrationTypeType |  | 0..1 |

### PopulationRegistrationRecordType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Folkbokföringspost

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| protectedPersonIndicator | boolean |  | 1..1 |
| testIndicator | boolean |  | 1..1 |
| syncronizationTime | dateTime |  | 0..1 |
| notificationCase | NotificationCaseType | Ärendeuppgifter | 0..1 |
| personalRecord | PersonalRecordType | Grupp för personpost | 1..1 |
| historicalRecords | HistoricalRecordsType | Grupp för historik | 0..1 |

### RelationshipIdType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentity | PersonalIdentityType | Personidentitet | 0..1 |
| dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

### RelationshipType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för relation

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| relationshipId | RelationshipIdType | Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes. | 1..1 |
| relationshipType | RelationshipTypeType |  | 1..1 |
| relationshipFromDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| relationshipToDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| name | NameType | Namn | 0..1 |
| deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| status | RelationshipStatusType |  | 0..1 |

### ResidentialAddressType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Svensk adress

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careOf | String40 |  | 0..1 |
| postalAddress1 | String40 |  | 0..1 |
| postalAddress2 | String40 |  | 0..1 |
| postalCode | PostalCode |  | 0..1 |
| city | String40 |  | 0..1 |
