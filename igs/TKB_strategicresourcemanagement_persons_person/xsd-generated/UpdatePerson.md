| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| actor | ActorType | Datatyp som identifierar en aktör. | 1..1 |
| ../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../updateTime | Timestamp |  | 0..1 |
| personId | IIType | En universellt unik identifierare. | 0..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| gender | CodedValue |  | 0..1 |
| versionToUpdate | Timestamp |  | 0..1 |
| name | NameType | Namn | 0..1 |
| ../givenNameIndicator | GivenNameIndicator |  | 0..1 |
| ../givenName | String80 |  | 0..1 |
| ../middleName | String80 |  | 0..1 |
| ../surname | String80 |  | 0..1 |
| ../notificationName | String40 |  | 0..1 |
| birth | BirthType | Uppgifter om födelse | 0..1 |
| ../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |  | 1..1 |
| ../../value | PartialDateValue |  | 1..1 |
| ../placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| ../../birthCountyCode | String2 |  | 0..1 |
| ../../birthParish | String40 |  | 0..1 |
| ../birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |
| ../../placeOfBirthAbroad | String80 |  | 0..1 |
| ../../countryOfBirth | String40 |  | 0..1 |
| relationship | RelationshipType | Grupp för relation | 0..* |
| ../relationshipId | RelationshipIdType | Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes. | 1..1 |
| ../../personalIdentity | IIType | En universellt unik identifierare. | 0..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |  | 1..1 |
| ../../../value | PartialDateValue |  | 1..1 |
| ../relationshipType | CodedValue |  | 1..1 |
| ../relationshipFromDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |  | 1..1 |
| ../../value | PartialDateValue |  | 1..1 |
| ../relationshipToDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |  | 1..1 |
| ../../value | PartialDateValue |  | 1..1 |
| ../name | NameType | Namn | 0..1 |
| ../../givenNameIndicator | GivenNameIndicator |  | 0..1 |
| ../../givenName | String80 |  | 0..1 |
| ../../middleName | String80 |  | 0..1 |
| ../../surname | String80 |  | 0..1 |
| ../../notificationName | String40 |  | 0..1 |
| ../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../deregistrationReasonCode | CodedValue |  | 0..1 |
| ../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |  | 1..1 |
| ../../../value | PartialDateValue |  | 1..1 |
| ../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |  | 1..1 |
| ../../../value | PartialDateValue |  | 1..1 |
| ../status | CodedValue |  | 0..1 |
| givenAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../careOf | String40 |  | 0..1 |
| ../postalAddress1 | String40 |  | 0..1 |
| ../postalAddress2 | String40 |  | 0..1 |
| ../postalCode | PostalCode |  | 0..1 |
| ../city | String40 |  | 0..1 |
| deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../deregistrationReasonCode | CodedValue |  | 0..1 |
| ../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |  | 1..1 |
| ../../value | PartialDateValue |  | 1..1 |
| ../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |  | 1..1 |
| ../../value | PartialDateValue |  | 1..1 |
| administrativeInformation | AdministrativeInformationType | Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID). | 0..1 |
| ../categoryOfPerson | CodedValue |  | 0..1 |
| ../accountCode | CodedValue |  | 0..1 |
| ../comment | string |  | 0..1 |
| confirmedIdentity | ConfirmedIdentityType | Klass för hur reservidentitetsuppgifter är styrkta. | 0..* |
| ../typeOfIdentification | CodedValue |  | 0..1 |
| ../identificationNumber | string |  | 0..1 |
| ../issuersOfId | string |  | 0..1 |
| ../validDatePeriod | DatePeriodType |  | 0..1 |
| ../../start | date |  | 0..1 |
| ../../end | date |  | 0..1 |
| ../attachmentId | string |  | 0..* |
| ../countryCode | CountryCode |  | 0..1 |
| addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |
| ../postalAddress1 | String40 |  | 0..1 |
| ../postalAddress2 | String40 |  | 0..1 |
| ../postalAddress3 | String40 |  | 0..1 |
| ../countryCode | String40 |  | 0..1 |
| ../addressAbroadDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |  | 1..1 |
| ../../value | PartialDateValue |  | 1..1 |
| ../votingDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../format | DateTypeFormatType |  | 1..1 |
| ../../value | PartialDateValue |  | 1..1 |
| **Svar** | | | |
| updatePersonResult | UpdatePersonResultType |  | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |  | 1..1 |
| ../../resultText | string |  | 0..1 |
| ../personRecord | PersonRecordType | Grupp för personpost | 0..1 |
| ../../personalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../identityLevel | string |  | 0..1 |
| ../../identityLevelDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../format | DateTypeFormatType |  | 1..1 |
| ../../../value | PartialDateValue |  | 1..1 |
| ../../gender | CodedValue |  | 0..1 |
| ../../protectedPersonIndicator | boolean |  | 1..1 |
| ../../testIndicator | boolean |  | 1..1 |
| ../../primaryIdentity | boolean |  | 1..1 |
| ../../version | Timestamp |  | 0..1 |
| ../../name | NameType | Namn | 0..1 |
| ../../../givenNameIndicator | GivenNameIndicator |  | 0..1 |
| ../../../givenName | String80 |  | 0..1 |
| ../../../middleName | String80 |  | 0..1 |
| ../../../surname | String80 |  | 0..1 |
| ../../../notificationName | String40 |  | 0..1 |
| ../../linkedIdentity | LinkedIdentityType | Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR | 0..* |
| ../../../referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |  | 1..1 |
| ../../../../extension | string |  | 0..1 |
| ../../../assuranceLevel | CodedValue |  | 1..1 |
| ../../../primaryIdentity | boolean |  | 1..1 |
| ../../referredPersonalIdentities | ReferredPersonalIdentityType | Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter). | 0..* |
| ../../../referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |  | 1..1 |
| ../../../../extension | string |  | 0..1 |
| ../../../referredPersonalIdentityStatus | string |  | 0..1 |
| ../../birth | BirthType | Uppgifter om födelse | 0..1 |
| ../../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../../placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| ../../../../birthCountyCode | String2 |  | 0..1 |
| ../../../../birthParish | String40 |  | 0..1 |
| ../../../birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |
| ../../../../placeOfBirthAbroad | String80 |  | 0..1 |
| ../../../../countryOfBirth | String40 |  | 0..1 |
| ../../populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..1 |
| ../../../populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../../countyCode | String2 |  | 0..1 |
| ../../../municipalityCode | String2 |  | 0..1 |
| ../../../parishCode | String2 |  | 0..1 |
| ../../../propertyDesignation | String40 |  | 0..1 |
| ../../../fictitiousPropertyNumber | FictitiousPropertyNumber |  | 0..1 |
| ../../../populationRegistrationType | CodedValue |  | 0..1 |
| ../../../localRegistrationTime | dateTime |  | 0..1 |
| ../../../localRegistrationEndTime | dateTime |  | 0..1 |
| ../../populationRegistrationRecord | PopulationRegistrationRecordType | Folkbokföringspost | 0..1 |
| ../../../syncronizationTime | dateTime |  | 0..1 |
| ../../../notificationCase | NotificationCaseType | Ärendeuppgifter | 0..1 |
| ../../../../recordId | RecordId |  | 0..1 |
| ../../../../notificationType | String40 |  | 0..1 |
| ../../../../modificationTime | dateTime |  | 0..1 |
| ../../../../totalRecord | boolean |  | 0..1 |
| ../../../../notificationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../../value | PartialDateValue |  | 1..1 |
| ../../../historicalRecords | HistoricalRecordsType | Grupp för historik | 0..1 |
| ../../../../populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..* |
| ../../../../../populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../../../value | PartialDateValue |  | 1..1 |
| ../../../../../countyCode | String2 |  | 0..1 |
| ../../../../../municipalityCode | String2 |  | 0..1 |
| ../../../../../parishCode | String2 |  | 0..1 |
| ../../../../../propertyDesignation | String40 |  | 0..1 |
| ../../../../../fictitiousPropertyNumber | FictitiousPropertyNumber |  | 0..1 |
| ../../../../../populationRegistrationType | CodedValue |  | 0..1 |
| ../../../../../localRegistrationTime | dateTime |  | 0..1 |
| ../../../../../localRegistrationEndTime | dateTime |  | 0..1 |
| ../../../../historicalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../../careOf | String40 |  | 0..1 |
| ../../../../../postalAddress1 | String40 |  | 0..1 |
| ../../../../../postalAddress2 | String40 |  | 0..1 |
| ../../../../../postalCode | PostalCode |  | 0..1 |
| ../../../../../city | String40 |  | 0..1 |
| ../../addressInformation | AddressInformationType | Grupp för adressuppgifter | 0..1 |
| ../../../residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |  | 0..1 |
| ../../../../postalAddress1 | String40 |  | 0..1 |
| ../../../../postalAddress2 | String40 |  | 0..1 |
| ../../../../postalCode | PostalCode |  | 0..1 |
| ../../../../city | String40 |  | 0..1 |
| ../../../nationalKeys | NationalKeysType | Riksnycklar | 0..1 |
| ../../../../propertyId | PropertyId |  | 0..1 |
| ../../../../addressPlaceId | AddressPlaceId |  | 0..1 |
| ../../../../apartmentId | ApartmentId |  | 0..1 |
| ../../../district | DistrictType | Grupp för Distriktskod | 0..1 |
| ../../../../districtCode | DistrictCode |  | 0..1 |
| ../../../specialPostalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |  | 0..1 |
| ../../../../postalAddress1 | String40 |  | 0..1 |
| ../../../../postalAddress2 | String40 |  | 0..1 |
| ../../../../postalCode | PostalCode |  | 0..1 |
| ../../../../city | String40 |  | 0..1 |
| ../../../addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |
| ../../../../postalAddress1 | String40 |  | 0..1 |
| ../../../../postalAddress2 | String40 |  | 0..1 |
| ../../../../postalAddress3 | String40 |  | 0..1 |
| ../../../../countryCode | String40 |  | 0..1 |
| ../../../../addressAbroadDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../../value | PartialDateValue |  | 1..1 |
| ../../../../votingDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../../value | PartialDateValue |  | 1..1 |
| ../../../givenAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |  | 0..1 |
| ../../../../postalAddress1 | String40 |  | 0..1 |
| ../../../../postalAddress2 | String40 |  | 0..1 |
| ../../../../postalCode | PostalCode |  | 0..1 |
| ../../../../city | String40 |  | 0..1 |
| ../../../UUID | UUIDType | UUID för fastighet, aderess och lägenhet | 0..1 |
| ../../../../propertyId | string |  | 0..1 |
| ../../../../addressPlaceId | string |  | 0..1 |
| ../../../../apartmentId | string |  | 0..1 |
| ../../contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../contactType | CodedValue |  | 1..1 |
| ../../../use | CodedValue |  | 0..1 |
| ../../../value | string |  | 0..1 |
| ../../../rank | int |  | 0..1 |
| ../../../comment | string |  | 0..1 |
| ../../../period | DatePeriodType |  | 0..1 |
| ../../../../start | date |  | 0..1 |
| ../../../../end | date |  | 0..1 |
| ../../../digitalNotification | boolean |  | 0..1 |
| ../../contactPerson | ContactPersonType |  | 0..* |
| ../../../contactRelationshipType | CodedValue |  | 1..1 |
| ../../../priorityOrder | int |  | 0..1 |
| ../../../givenName | String80 |  | 0..1 |
| ../../../surName | String80 |  | 0..1 |
| ../../../middleName | String80 |  | 0..1 |
| ../../../contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| ../../../../careOf | String40 |  | 0..1 |
| ../../../../postalAddress1 | String40 |  | 0..1 |
| ../../../../postalAddress2 | String40 |  | 0..1 |
| ../../../../postalCode | PostalCode |  | 0..1 |
| ../../../../city | String40 |  | 0..1 |
| ../../../contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| ../../../../contactType | CodedValue |  | 1..1 |
| ../../../../use | CodedValue |  | 0..1 |
| ../../../../value | string |  | 0..1 |
| ../../../../rank | int |  | 0..1 |
| ../../../../comment | string |  | 0..1 |
| ../../../../period | DatePeriodType |  | 0..1 |
| ../../../../../start | date |  | 0..1 |
| ../../../../../end | date |  | 0..1 |
| ../../../../digitalNotification | boolean |  | 0..1 |
| ../../confirmedIdentity | ConfirmedIdentityType | Klass för hur reservidentitetsuppgifter är styrkta. | 0..* |
| ../../../typeOfIdentification | CodedValue |  | 0..1 |
| ../../../identificationNumber | string |  | 0..1 |
| ../../../issuersOfId | string |  | 0..1 |
| ../../../validDatePeriod | DatePeriodType |  | 0..1 |
| ../../../../start | date |  | 0..1 |
| ../../../../end | date |  | 0..1 |
| ../../../attachmentId | string |  | 0..* |
| ../../../countryCode | CountryCode |  | 0..1 |
| ../../administrativeInformation | AdministrativeInformationType | Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID). | 0..1 |
| ../../../categoryOfPerson | CodedValue |  | 0..1 |
| ../../../accountCode | CodedValue |  | 0..1 |
| ../../../comment | string |  | 0..1 |
| ../../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../../deregistrationReasonCode | CodedValue |  | 0..1 |
| ../../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../maritalStatus | MaritalStatusType | Civistånd | 0..1 |
| ../../../maritalStatusCode | CodedValue |  | 0..1 |
| ../../../maritalStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../immigration | ImmigrationType | Grupp för invandringsuppgifter | 0..1 |
| ../../../immigrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../../rightOfResidence | boolean |  | 0..1 |
| ../../../immigrationIdentity | ImmigrationIdentityType | Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |
| ../../../../personalIdentityNumber | PersonalIdentityNumber |  | 1..1 |
| ../../../../country | CountryCode |  | 1..1 |
| ../../citizenship | CitizenshipType | Grupp för medborgarskap | 0..* |
| ../../../citizenshipCountryCode | CountryCode |  | 0..1 |
| ../../../citizenshipDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../../status | CodedValue |  | 0..1 |
| ../../relationship | RelationshipType | Grupp för relation | 0..* |
| ../../../relationshipId | RelationshipIdType | Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes. | 1..1 |
| ../../../../personalIdentity | IIType | En universellt unik identifierare. | 0..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../../dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../../value | PartialDateValue |  | 1..1 |
| ../../../relationshipType | CodedValue |  | 1..1 |
| ../../../relationshipFromDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../../relationshipToDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../../name | NameType | Namn | 0..1 |
| ../../../../givenNameIndicator | GivenNameIndicator |  | 0..1 |
| ../../../../givenName | String80 |  | 0..1 |
| ../../../../middleName | String80 |  | 0..1 |
| ../../../../surname | String80 |  | 0..1 |
| ../../../../notificationName | String40 |  | 0..1 |
| ../../../deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| ../../../../deregistrationReasonCode | CodedValue |  | 0..1 |
| ../../../../deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../../value | PartialDateValue |  | 1..1 |
| ../../../../foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../../value | PartialDateValue |  | 1..1 |
| ../../../status | CodedValue |  | 0..1 |
| ../../coOrdinationNumberData | CoOrdinationNumberDataType | Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige. | 0..1 |
| ../../../allocationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../../preliminaryTransferDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../../renewalDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../../deceasedDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../personalIdentityStatus | PersonalIdentityStatusType | Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer. | 0..1 |
| ../../../identityStatus | string |  | 0..1 |
| ../../../identityStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| ../../../../format | DateTypeFormatType |  | 1..1 |
| ../../../../value | PartialDateValue |  | 1..1 |
| ../../../identityStatusCause | string |  | 0..1 |
| ../../updatePersonActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |  | 1..1 |
| ../../../../extension | string |  | 0..1 |
| ../../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../updateTime | Timestamp |  | 0..1 |
| ../../updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| ../../../id | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |  | 1..1 |
| ../../../../extension | string |  | 0..1 |
| ../../../professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| ../../../../organizationId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../updateTime | Timestamp |  | 0..1 |
| ../../attachment | MultimediaType | Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL. | 0..* |
| ../../../id | string |  | 0..1 |
| ../../../mediaType | CodedValue |  | 1..1 |
| ../../../value | base64Binary |  | 0..1 |
| ../../../reference | anyURI |  | 0..1 |
| ../../optoutPaperNotification | boolean |  | 0..1 |
| ../../protectedPopulationRecord | boolean |  | 0..1 |
