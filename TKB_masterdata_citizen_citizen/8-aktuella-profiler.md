# 8 Aktuella profiler - masterdata: citizen: citizen v2.0.0

* [**Table of Contents**](toc.md)
* **8 Aktuella profiler**

## 8 Aktuella profiler

# 8 Aktuella profiler

Källa: **Personuppgifter – Tjänstekontraktsbeskrivning**, version 2.0 (2016-02-24, revision RC3 2016-04-22), [TKB_masterdata_citizen_citizen.docx](TKB_masterdata_citizen_citizen.docx).

Motsvarar TKB kapitel 8. I källdokumentet är de rader som levereras vid sekretessmarkerad personpost markerade med grön bakgrundsfärg; här visas markeringen i kolumnen **Levereras vid sekretessmarkering**.

Det finns 4s t aktuella profiler, det är dock förberett för fler profiler. Vilken av dem man vill ha tillbaka i svar anger man i anropet. Man ska inte hämta mer data än man behöver.

Profil 1: Om man enbart behöver namn på personerna.

Profil 2: Om man behöver allt data utom historik, medborgarskap och invandring.

Profil 3: Om man behöver allt data utom historik.

Profil 4: Om man behöver allt data, inklusive historik.

Detaljerad information om vad profilerna innehåller framgår av tabellen nedan.

Notera att vid sekretessmarkerad personpost (protectedPersonIndicator är satt), levereras endast uppgifter markerade med grön bakgrundsfärg (administrativa uppgifter, personidentiteten och namn).

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| PopulationRegistrationRecord | X | X | X | X | X |
| ../SyncronizationTime | X | X | X | X | X |
| ../TestIndicator | X | X | X | X | X |
| ../ProtectedPersonIndicator | X | X | X | X | X |
| ../NotificationCase |   | X | X | X | X |
| ../../TotalRecord |   | X | X | X | X |
| ../../ NotificationDate (Date+Format) |   | X | X | X | X |
| ../../ModificationTime |   | X | X | X | X |
| ../../RecordId |   | X | X | X | X |
| ../../NotificationType |   | X | X | X | X |
| ../PersonalRecord | X | X | X | X | X |
| ../../PersonalIdentity | X | X | X | X | X |
| ../../../PersonalIdentityNumber | X | X | X | X | X |
| ../../../PersonalIdentityType | X | X | X | X | X |
| ../../ReferredPersonalIdentity | X | X | X | X |   |
| ../../../PersonalIdentityNumber | X | X | X | X |   |
| ../../../PersonalIdentityType | X | X | X | X |   |
| ../../Deregistration | X | X | X | X |   |
| ../../../DeregistrationReasonCode | X | X | X | X |   |
| ../../../DeregistrationDate (Date+Format) | X | X | X | X |   |
| ../../Name | X | X | X | X | X |
| ../../../GivenNameIndicator | X | X | X | X | X |
| ../../../GivenName (Name+Attested) | X | X | X | X | X |
| ../../../MiddleName (Name+Attested) | X | X | X | X | X |
| ../../../Surname (Name+Attested) | X | X | X | X | X |
| ../../../NotificationName | X | X | X | X | X |
| ../../PopulationRegistrationLocality |   | X | X | X |   |
| ../../../PopulationRegistrationDate (Date+Format) |   | X | X | X |   |
| ../../../CountyCode |   | X | X | X |   |
| ../../../MunicipalityCode |   | X | X | X |   |
| ../../../ParishCode |   | X | X | X |   |
| ../../../FictitiousPropertyNumber |   | X | X | X |   |
| ../../../PropertyDesignation |   | X | X | X |   |
| ../../../PopulationRegistrationType |   | X | X | X |   |
| ../../AddressInformation |   | X | X | X |   |
| ../../../ResidentialAddress |   | X | X | X |   |
| ../../../../CareOf |   | X | X | X |   |
| ../../../../PostalAddress1 |   | X | X | X |   |
| ../../../../PostalAddress2 |   | X | X | X |   |
| ../../../../PostalCode |   | X | X | X |   |
| ../../../../City |   | X | X | X |   |
| ../../../NationalKeys |   | X | X | X |   |
| ../../../../PropertyId |   | X | X | X |   |
| ../../../../AddressPlaceId |   | X | X | X |   |
| ../../../../ApartmentId |   | X | X | X |   |
| ../../../District |   | X | X | X |   |
| ../../../../DistrictCode |   | X | X | X |   |
| ../../../SpecialPostalAddress |   | X | X | X |   |
| ../../../../CareOf |   | X | X | X |   |
| ../../../../PostalAddress1 |   | X | X | X |   |
| ../../../../PostalAddress2 |   | X | X | X |   |
| ../../../../PostalCode |   | X | X | X |   |
| ../../../../City |   | X | X | X |   |
| ../../../AddressAbroad |   | X | X | X |   |
| ../../../../PostalAddress1 |   | X | X | X |   |
| ../../../../PostalAddress2 |   | X | X | X |   |
| ../../../../PostalAddress3 |   | X | X | X |   |
| ../../../../Country |   | X | X | X |   |
| ../../../../AddressAbroadDate (Date+Format) |   | X | X | X |   |
| ../../../../VotingDate |   | X | X | X |   |
| ../../MaritalStatus |   | X | X | X |   |
| ../../../MaritalStatusCode |   | X | X | X |   |
| ../../../MaritalStatusDate (Date+Format) |   | X | X | X |   |
| ../../Birth |   | X | X | X |   |
| ../../../PlaceOfBirthSweden |   | X | X | X |   |
| ../../../../BirthCountyCode |   | X | X | X |   |
| ../../../../BirthParish |   | X | X | X |   |
| ../../../BirthAbroad |   | X | X | X |   |
| ../../../../CountryOfBirth |   | X | X | X |   |
| ../../../../PlaceOfBirthAbroad |   | X | X | X |   |
| ../../../../Attested |   | X | X | X |   |
| ../../Immigration |   |   | X | X |   |
| ../../../ImmigrationDate (Date+Format) |   |   | X | X |   |
| ../../../RightOfResidence |   |   | X | X |   |
| ../../../ImmigrationIdentity |   |   | X | X |   |
| ../../../../Country |   |   | X | X |   |
| ../../../../PersonalIdentityNumber |   |   | X | X |   |
| ../../Relationship |   | X | X | X |   |
| ../../../Status |   | X | X | X |   |
| ../../../RelationshipId |   | X | X | X |   |
| ../../../../PersonalIdentity |   | X | X | X |   |
| ../../../../DateOfBirth |   | X | X | X |   |
| ../../../RelationshipType |   | X | X | X |   |
| ../../../RelationshipFromDate (Date+Format) |   | X | X | X |   |
| ../../../RelationshipToDate (Date+Format) |   | X | X | X |   |
| ../../../Name |   | X | X | X |   |
| ../../../../GivenName (Name+Attested) |   | X | X | X |   |
| ../../../../MiddleName (Name+Attested) |   | X | X | X |   |
| ../../../../Surname (Name+Attested) |   | X | X | X |   |
| ../../../Deregistration |   | X | X | X |   |
| ../../../../DeregistrationReasonCode |   | X | X | X |   |
| ../../../../DeregistrationDate (Date+Format) |   | X | X | X |   |
| ../../Citizenship |   |   | X | X |   |
| ../../../Status |   |   | X | X |   |
| ../../../CitizenshipCountryCode |   |   | X | X |   |
| ../../../../CountryCode |   |   | X | X |   |
| ../../../../Attested |   |   | X | X |   |
| ../../../CitizenshipDate (Date+Format) |   |   | X | X |   |
| ../HistoricalRecords |   |   |   | X |   |
| ../../PopulationRegistrationLocality |   |   |   | X |   |
| ../../../PopulationRegistrationDate (Date+Format) |   |   |   | X |   |
| ../../../CountyCode |   |   |   | X |   |
| ../../../MunicipalityCode |   |   |   | X |   |
| ../../../ParishCode |   |   |   | X |   |
| ../../../FictitiousPropertyNumber |   |   |   | X |   |
| ../../../PropertyDesignation |   |   |   | X |   |
| ../../../PopulationRegistrationType |   |   |   | X |   |
| ../../HistoricalAddress |   |   |   | X |   |
| ../../../ResidentialAddress |   |   |   | X |   |
| ../../../../CareOf |   |   |   | X |   |
| ../../../../PostalAddress1 |   |   |   | X |   |
| ../../../../PostalAddress2 |   |   |   | X |   |
| ../../../../PostalCode |   |   |   | X |   |
| ../../../../City |   |   |   | X |   |

