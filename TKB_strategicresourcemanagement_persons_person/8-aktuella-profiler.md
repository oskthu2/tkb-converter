# 8 Aktuella profiler - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* **8 Aktuella profiler**

## 8 Aktuella profiler

# 8 Aktuella profiler

Källa: **Personuppgiftstjänsten – Tjänstekontraktsbeskrivning**, version 5.1 (2024-11-28), [TKB_strategicresourcemanagement_persons_person.docx](TKB_strategicresourcemanagement_persons_person.docx).

Motsvarar TKB kapitel 8.

Det finns 5st aktuella profiler, det är dock förberett för fler profiler. Vilken av dem man vill ha tillbaka i svar anger man i anropet. Man ska inte hämta mer data än man behöver.

Profil 1: Basinformation om identiteten, namn, inklusive kopplade identiteter

Profil 2: Profil 1 + adress & folkbokförings och vissa uppgifter kring reservidentiteter.

Profil 3: Profil 2 + kontaktinformation och aktör

Profil 4: Profil 3 + all aktuell informationen kring personen (födelse, civilstatus etc)

Profil 5: Profil 4 + historisk information från SKV

Detaljerad information om vad profilerna innehåller framgår av tabellen nedan. Poster markerade med (*) är enbart aktuella för personidentiteter av typen reservidentitet (NRID, LRID).

Notera att när protectedPersonIndicator och/eller protectedPopulationRecord är satt (sekretessmarkerad personpost/skyddad folkbokföring), levereras endast uppgifter i enlighet med Profil 1, oavsett efterfrågad profil för de Get och Search-kontrakt som ej är av typen unrestricted.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| personRecord | X | X | X | X | X |
| ../personalIdentity (root + extension) | X | X | X | X | X |
| ../identityLevel | X | X | X | X | X |
| ../identityLevelDate | X | X | X | X | X |
| ../gender | X | X | X | X | X |
| ../testIndicator | X | X | X | X | X |
| ../primaryIdentity | X | X | X | X | X |
| ../protectedPersonIndicator | X | X | X | X | X |
| ../protectedPopulationRecord | X | X | X | X | X |
| ../version | X | X | X | X | X |
|   |   |   |   |   |   |
| ../populationRegistrationRecord | X | X | X | X | X |
| ../../syncronizationTime | X | X | X | X | X |
| ../../notificationCase | X | X | X | X | X |
| ../../../recordId | X | X | X | X | X |
| ../../../notificationType | X | X | X | X | X |
| ../../../modificationTime | X | X | X | X | X |
| ../../../totalRecord | X | X | X | X | X |
| ../../../notificationDate (format + value) | X | X | X | X | X |
|   |   |   |   |   |   |
| ../name | X | X | X | X | X |
| ../../givenNameIndicator | X | X | X | X | X |
| ../../givenName (name + attested) | X | X | X | X | X |
| ../../middleName (name + attested) | X | X | X | X | X |
| ../../surname (name + attested) | X | X | X | X | X |
| ../../notificationName | X | X | X | X | X |
|   |   |   |   |   |   |
| ../linkedIdentity | X | X | X | X | X |
| ../../referredPersonalIdentity (root + extension) | X | X | X | X | X |
| ../../assuranceLevel | X | X | X | X | X |
| ../../primaryIdentity | X | X | X | X | X |
|   |   |   |   |   |   |
| ../referredPersonalIdentities | X | X | X | X | X |
| ../../referredPersonalIdentity (root + extension) | X | X | X | X | X |
| ../../referredPersonalIdentityStatus | X | X | X | X | X |
|   |   |   |   |   |   |
| ../populationRegistrationLocality |   | X | X | X | X |
| ../../populationRegistrationDate (format + value) |   | X | X | X | X |
| ../../countyCode | X | X | X | X | X |
| ../../municipalityCode |   | X | X | X | X |
| ../../parishCode |   | X | X | X | X |
| ../../propertyDesignation |   | X | X | X | X |
| ../../fictitiousPropertyNumber |   | X | X | X | X |
| ../../populationRegistrationType |   | X | X | X | X |
|   |   |   |   |   |   |
| ../addressInformation |   | X | X | X | X |
| ../../residentialAddress |   | X | X | X | X |
| ../../../careOf |   | X | X | X | X |
| ../../../postalAddress1 |   | X | X | X | X |
| ../../../postalAddress2 |   | X | X | X | X |
| ../../../postalCode |   | X | X | X | X |
| ../../../city |   | X | X | X | X |
| ../../nationalKeys |   | X | X | X | X |
| ../../../propertyId |   | X | X | X | X |
| ../../../addressPlaceId |   | X | X | X | X |
| ../../../apartmentId |   | X | X | X | X |
| ../../uuid |   | X | X | X | X |
| ../../../propertyId |   | X | X | X | X |
| ../../../addressPlaceId |   | X | X | X | X |
| ../../../apartmentId |   | X | X | X | X |
| ../../district |   | X | X | X | X |
| ../../../districtCode |   | X | X | X | X |
| ../../specialPostalAddress |   | X | X | X | X |
| ../../../careOf |   | X | X | X | X |
| ../../../postalAddress1 |   | X | X | X | X |
| ../../../postalAddress2 |   | X | X | X | X |
| ../../../postalCode |   | X | X | X | X |
| ../../../city |   | X | X | X | X |
| ../../addressAbroad |   | X | X | X | X |
| ../../../postalAddress1 |   | X | X | X | X |
| ../../../postalAddress2 |   | X | X | X | X |
| ../../../postalAddress3 |   | X | X | X | X |
| ../../../countryCode |   | X | X | X | X |
| ../../../addressAbroadDate (format + value) |   | X | X | X | X |
| ../../../votingDate (format + value) |   | X | X | X | X |
| ../../givenAddress (*) |   | X | X | X | X |
| ../../../careOf |   | X | X | X | X |
| ../../../postalAddress1 |   | X | X | X | X |
| ../../../postalAddress2 |   | X | X | X | X |
| ../../../postalCode |   | X | X | X | X |
| ../../../city |   | X | X | X | X |
|   |   |   |   |   |   |
| ../birth | X | X | X | X | X |
| ../../dateOfBirth (format + value) | X | X | X | X | X |
| ../../placeOfBirthSweden |   |   |   | X | X |
| ../../../birthCountyCode |   |   |   | X | X |
| ../../../birthParish |   |   |   | X | X |
| ../../birthAbroad |   |   |   | X | X |
| ../../../placeOfBirthAbroad |   |   |   | X | X |
| ../../../../placeOfBirthAbroad |   |   |   | X | X |
| ../../../../attested |   |   |   | X | X |
| ../../../countryOfBirth |   |   |   | X | X |
|   |   |   |   |   |   |
| ../deregistration | X | X | X | X | X |
| ../../deregistrationReasonCode | X | X | X | X | X |
| ../../deregistrationDate (format + value) | X | X | X | X | X |
| ../../ foundDeadAtDate (format + value) | X | X | X | X | X |
|   |   |   |   |   |   |
| ../maritalStatus |   |   |   | X | X |
| ../../maritalStatusCode |   |   |   | X | X |
| ../../maritalStatusDate (format + value) |   |   |   | X | X |
|   |   |   |   |   |   |
| ../immigration |   |   |   | X | X |
| ../../immigrationDate (format + value) |   |   |   | X | X |
| ../../rightOfResidence |   |   |   | X | X |
|   |   |   |   |   |   |
| ../../immigrationIdentity |   |   |   | X | X |
| ../../../personalIdentityNumber |   |   |   | X | X |
| ../../../country |   |   |   | X | X |
|   |   |   |   |   |   |
| ../citizenship |   |   |   | X | X |
| ../../citizenshipCountryCode |   |   |   | X | X |
| ../../../countryCode |   |   |   | X | X |
| ../../../attested |   |   |   | X | X |
| ../../citizenshipDate (format + value) |   |   |   | X | X |
| ../../status |   |   |   | X | X |
|   |   |   |   |   |   |
| ../relationship |   |   |   | X | X |
| ../../relationshipId |   |   |   | X | X |
| ../../../personalIdentity (root + extension) |   |   |   | X | X |
| ../../../dateOfBirth (format + value) |   |   |   | X | X |
| ../../relationshipType |   |   |   | X | X |
| ../../relationshipFromDate (format + value) |   |   |   | X | X |
| ../../relationshipToDate (format + value) |   |   |   | X | X |
| ../../name |   |   |   | X | X |
| ../../../givenNameIndicator |   |   |   | X | X |
| ../../../givenName (name + attested) |   |   |   | X | X |
| ../../../middleName (name + attested) |   |   |   | X | X |
| ../../../surname (name + attested) |   |   |   | X | X |
| ../../../notificationName |   |   |   | X | X |
| ../../deregistration |   |   |   | X | X |
| ../../../deregistrationReasonCode |   |   |   | X | X |
| ../../../deregistrationDate (format + value) |   |   |   | X | X |
| ../../../foundDeadAtDate (format + value) |   |   |   | X | X |
| ../../status |   |   |   | X | X |
|   |   |   |   |   |   |
| ../coOrdinationNumberData | X | X | X | X | X |
| ../../allocationDate | X | X | X | X | X |
| ../../preliminaryTransferDate | X | X | X | X | X |
| ../../renewalDate | X | X | X | X | X |
| ../../deceasedDate | X | X | X | X | X |
|   |   |   |   |   |   |
| ../personalIdentityStatus | X | X | X | X | X |
| ../../identityStatusValue | X | X | X | X | X |
| ../../identityStatusDate | X | X | X | X | X |
| ../../identityStatusCause | X | X | X | X | X |
|   |   |   |   |   |   |
| ../confirmedIdentity (*) |   | X | X | X | X |
| ../../typeOfIdentification |   | X | X | X | X |
| ../../identificationNumber |   | X | X | X | X |
| ../../issuersOfId |   | X | X | X | X |
| ../../countryCode |   | X | X | X | X |
| ../../validDatePeriod (start + end) |   | X | X | X | X |
| ../../attachmentId |   | X | X | X | X |
|   |   |   |   |   |   |
| ../attachment (*) |   | X | X | X | X |
| ../../id |   | X | X | X | X |
| ../../mediaType |   | X | X | X | X |
| ../../value |   | X | X | X | X |
| ../../reference |   | X | X | X | X |
|   |   |   |   |   |   |
| ../administrativeInformation (*) |   |   |   |   |   |
| ../../categoryOfPerson |   | X | X | X | X |
| ../../accountCode |   | X | X | X | X |
| ../../comment |   | X | X | X | X |
|   |   |   |   |   |   |
| ../optoutPaperNotification |   |   | X | X | X |
|   |   |   |   |   |   |
| ../contactInformation |   |   | X | X | X |
| ../../contactType |   |   | X | X | X |
| ../../use |   |   | X | X | X |
| ../../value |   |   | X | X | X |
| ../../rank |   |   | X | X | X |
| ../../comment |   |   | X | X | X |
| ../../period (start + end) |   |   | X | X | X |
| ../../digitalNotification |   |   | X | X | X |
|   |   |   |   |   |   |
| ../contactPerson |   |   | X | X | X |
| ../../contactRelationshipType |   |   | X | X | X |
| ../../priorityOrder |   |   | X | X | X |
| ../../givenName |   |   | X | X | X |
| ../../surName |   |   | X | X | X |
| ../../middleName |   |   | X | X | X |
| ../../contactPersonAddress |   |   | X | X | X |
| ../../../careOf |   |   | X | X | X |
| ../../../postalAddress1 |   |   | X | X | X |
| ../../../postalAddress2 |   |   | X | X | X |
| ../../../postalCode |   |   | X | X | X |
| ../../../city |   |   | X | X | X |
| ../../contactPersonContactInformation |   |   | X | X | X |
| ../../../contactType |   |   | X | X | X |
| ../../../use |   |   | X | X | X |
| ../../../value |   |   | X | X | X |
| ../../../rank |   |   | X | X | X |
| ../../../comment |   |   | X | X | X |
| ../../../period (start + end) |   |   | X | X | X |
| ../../../digitalNotification |   |   | X | X | X |
|   |   |   |   |   |   |
| ../updatePersonActor (*) |   |   | X | X | X |
| ../../id (root + extension) |   |   | X | X | X |
| ../../professional |   |   | X | X | X |
| ../../../organizationId (root + extension) |   |   | X | X | X |
| ../../../updateTime |   |   | X | X | X |
|   |   |   |   |   |   |
| ../updatePersonContactInformationActor |   |   | X | X | X |
| ../../id (root + extension) |   |   | X | X | X |
| ../../professional |   |   | X | X | X |
| ../../../organizationId (root + extension) |   |   | X | X | X |
| ../../../updateTime |   |   | X | X | X |
|   |   |   |   |   |   |
| ../../historicalRecordsType |   |   |   |   | X |
| ../../../populationRegistrationLocality |   |   |   |   | X |
| ../../../../populationRegistrationDate (format + value) |   |   |   |   | X |
| ../../../../countyCode |   |   |   |   | X |
| ../../../../municipalityCode |   |   |   |   | X |
| ../../../../parishCode |   |   |   |   | X |
| ../../../../propertyDesignation |   |   |   |   | X |
| ../../../../fictitiousPropertyNumber |   |   |   |   | X |
| ../../../../populationRegistrationType |   |   |   |   | X |
| ../../../../localRegistrationTime |   |   |   |   | X |
| ../../../../localRegistrationEndTime |   |   |   |   | X |
| ../../../historicalAddress |   |   |   |   | X |
| ../../../../careOf |   |   |   |   | X |
| ../../../../postalAddress1 |   |   |   |   | X |
| ../../../../postalAddress2 |   |   |   |   | X |
| ../../../../postalCode |   |   |   |   | X |
| ../../../../city |   |   |   |   | X |
|   |   |   |   |   |   |
|   |   |   |   |   |   |

