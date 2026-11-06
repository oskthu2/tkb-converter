// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: LookupResidentsForProfileFieldDescriptions
* lookupResidentsResponseType ^definition = "Returtyp för operationen lookupResidentsForProfile"
* lookupResidentsResponseType ^comment = "TKB-fält: `lookupResidentsResponseType` (`LookupResidentsResponseType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords ^definition = "Folkbokföringspost"
* lookupResidentsResponseType.populationRegistrationRecords ^comment = "TKB-fält: `../populationRegistrationRecords` (`PopulationRegistrationRecordType`, kardinalitet 0..*)."
* lookupResidentsResponseType.populationRegistrationRecords.protectedPersonIndicator ^comment = "TKB-fält: `../../protectedPersonIndicator` (`boolean`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.testIndicator ^comment = "TKB-fält: `../../testIndicator` (`boolean`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.syncronizationTime ^comment = "TKB-fält: `../../syncronizationTime` (`dateTime`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.notificationCase ^definition = "Ärendeuppgifter"
* lookupResidentsResponseType.populationRegistrationRecords.notificationCase ^comment = "TKB-fält: `../../notificationCase` (`NotificationCaseType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.notificationCase.recordId ^comment = "TKB-fält: `../../../recordId` (`RecordId`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.notificationCase.notificationType ^comment = "TKB-fält: `../../../notificationType` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.notificationCase.modificationTime ^comment = "TKB-fält: `../../../modificationTime` (`dateTime`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.notificationCase.totalRecord ^comment = "TKB-fält: `../../../totalRecord` (`boolean`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.notificationCase.notificationDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* lookupResidentsResponseType.populationRegistrationRecords.notificationCase.notificationDate ^comment = "TKB-fält: `../../../notificationDate` (`PartialDateType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.notificationCase.notificationDate.format ^comment = "TKB-fält: `../../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.notificationCase.notificationDate.partialDateValue ^comment = "TKB-fält: `../../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord ^definition = "Grupp för personpost"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord ^comment = "TKB-fält: `../../personalRecord` (`PersonalRecordType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalIdentity ^definition = "Personidentitet"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalIdentity ^comment = "TKB-fält: `../../../personalIdentity` (`PersonalIdentityType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalIdentity.personalIdentityId ^comment = "TKB-fält: `../../../../id` (`PersonalIdentityNumber`, kardinalitet 1..1).

**Modellanteckning:** personalIdentityId Heter id i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalIdentity.personalIdentityType ^comment = "TKB-fält: `../../../../type` (`string`, kardinalitet 1..1).

**Modellanteckning:** personalIdentityType Heter type i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.referredPersonalIdentity ^definition = "Personidentitet"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.referredPersonalIdentity ^comment = "TKB-fält: `../../../referredPersonalIdentity` (`PersonalIdentityType`, kardinalitet 0..*)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.referredPersonalIdentity.personalIdentityId ^comment = "TKB-fält: `../../../../id` (`PersonalIdentityNumber`, kardinalitet 1..1).

**Modellanteckning:** personalIdentityId Heter id i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.referredPersonalIdentity.personalIdentityType ^comment = "TKB-fält: `../../../../type` (`string`, kardinalitet 1..1).

**Modellanteckning:** personalIdentityType Heter type i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration ^definition = "Uppgifter om avregistrering"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration ^comment = "TKB-fält: `../../../deregistration` (`DeregistrationType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration.deregistrationReasonCode ^comment = "TKB-fält: `../../../../deregistrationReasonCode` (`DeregistrationReasonCodeType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration.deregistrationDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration.deregistrationDate ^comment = "TKB-fält: `../../../../deregistrationDate` (`PartialDateType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration.deregistrationDate.format ^comment = "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration.deregistrationDate.partialDateValue ^comment = "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName ^definition = "Namn"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName ^comment = "TKB-fält: `../../../name` (`NameType`, kardinalitet 0..1).

**Modellanteckning:** Namn Heter name i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.givenNameIndicator ^comment = "TKB-fält: `../../../../givenNameIndicator` (`GivenNameIndicator`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.givenName ^definition = "Grupp för del av namn där delen kan vara styrkt eller ej"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.givenName ^comment = "TKB-fält: `../../../../givenName` (`NamePartType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.givenName.namePartName ^comment = "TKB-fält: `../../../../../name` (`String80`, kardinalitet 0..1).

**Modellanteckning:** namePartName Heter name i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.givenName.attested ^comment = "TKB-fält: `../../../../../attested` (`boolean`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.middleName ^definition = "Grupp för del av namn där delen kan vara styrkt eller ej"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.middleName ^comment = "TKB-fält: `../../../../middleName` (`NamePartType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.middleName.namePartName ^comment = "TKB-fält: `../../../../../name` (`String80`, kardinalitet 0..1).

**Modellanteckning:** namePartName Heter name i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.middleName.attested ^comment = "TKB-fält: `../../../../../attested` (`boolean`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.surname ^definition = "Grupp för del av namn där delen kan vara styrkt eller ej"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.surname ^comment = "TKB-fält: `../../../../surname` (`NamePartType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.surname.namePartName ^comment = "TKB-fält: `../../../../../name` (`String80`, kardinalitet 0..1).

**Modellanteckning:** namePartName Heter name i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.surname.attested ^comment = "TKB-fält: `../../../../../attested` (`boolean`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.notificationName ^comment = "TKB-fält: `../../../../notificationName` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality ^definition = "Uppgifter om folkbokföring"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality ^comment = "TKB-fält: `../../../populationRegistrationLocality` (`PopulationRegistrationLocalityType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.populationRegistrationDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.populationRegistrationDate ^comment = "TKB-fält: `../../../../populationRegistrationDate` (`PartialDateType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.populationRegistrationDate.format ^comment = "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.populationRegistrationDate.partialDateValue ^comment = "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.countyCode ^comment = "TKB-fält: `../../../../countyCode` (`String2`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.municipalityCode ^comment = "TKB-fält: `../../../../municipalityCode` (`String2`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.parishCode ^comment = "TKB-fält: `../../../../parishCode` (`String2`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.propertyDesignation ^comment = "TKB-fält: `../../../../propertyDesignation` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.fictitiousPropertyNumber ^comment = "TKB-fält: `../../../../fictitiousPropertyNumber` (`FictitiousPropertyNumber`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.populationRegistrationType ^comment = "TKB-fält: `../../../../populationRegistrationType` (`PopulationRegistrationTypeType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation ^definition = "Grupp för adressuppgifter"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation ^comment = "TKB-fält: `../../../addressInformation` (`AddressInformationType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress ^definition = "Svensk adress"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress ^comment = "TKB-fält: `../../../../residentialAddress` (`ResidentialAddressType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.careOf ^comment = "TKB-fält: `../../../../../careOf` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.postalAddress1 ^comment = "TKB-fält: `../../../../../postalAddress1` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.postalAddress2 ^comment = "TKB-fält: `../../../../../postalAddress2` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.postalCode ^comment = "TKB-fält: `../../../../../postalCode` (`PostalCode`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.city ^comment = "TKB-fält: `../../../../../city` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.nationalKeys ^definition = "Riksnycklar"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.nationalKeys ^comment = "TKB-fält: `../../../../nationalKeys` (`NationalKeysType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.nationalKeys.propertyId ^comment = "TKB-fält: `../../../../../propertyId` (`PropertyId`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.nationalKeys.addressPlaceId ^comment = "TKB-fält: `../../../../../addressPlaceId` (`AddressPlaceId`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.nationalKeys.apartmentId ^comment = "TKB-fält: `../../../../../apartmentId` (`ApartmentId`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.district ^definition = "Grupp för Distriktskod"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.district ^comment = "TKB-fält: `../../../../district` (`DistrictType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.district.districtCode ^comment = "TKB-fält: `../../../../../districtCode` (`DistrictCode`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress ^definition = "Svensk adress"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress ^comment = "TKB-fält: `../../../../specialPostalAddress` (`ResidentialAddressType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.careOf ^comment = "TKB-fält: `../../../../../careOf` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.postalAddress1 ^comment = "TKB-fält: `../../../../../postalAddress1` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.postalAddress2 ^comment = "TKB-fält: `../../../../../postalAddress2` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.postalCode ^comment = "TKB-fält: `../../../../../postalCode` (`PostalCode`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.city ^comment = "TKB-fält: `../../../../../city` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad ^definition = "Utlandsadress"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad ^comment = "TKB-fält: `../../../../addressAbroad` (`AddressAbroadType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.postalAddress1 ^comment = "TKB-fält: `../../../../../postalAddress1` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.postalAddress2 ^comment = "TKB-fält: `../../../../../postalAddress2` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.postalAddress3 ^comment = "TKB-fält: `../../../../../postalAddress3` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.country ^comment = "TKB-fält: `../../../../../country` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.addressAbroadDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.addressAbroadDate ^comment = "TKB-fält: `../../../../../addressAbroadDate` (`PartialDateType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.addressAbroadDate.format ^comment = "TKB-fält: `../../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.addressAbroadDate.partialDateValue ^comment = "TKB-fält: `../../../../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.votingDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.votingDate ^comment = "TKB-fält: `../../../../../votingDate` (`PartialDateType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.votingDate.format ^comment = "TKB-fält: `../../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.votingDate.partialDateValue ^comment = "TKB-fält: `../../../../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus ^definition = "Civistånd"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus ^comment = "TKB-fält: `../../../maritalStatus` (`MaritalStatusType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus.maritalStatusCode ^comment = "TKB-fält: `../../../../maritalStatusCode` (`MaritalStatusCodeType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus.maritalStatusDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus.maritalStatusDate ^comment = "TKB-fält: `../../../../maritalStatusDate` (`PartialDateType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus.maritalStatusDate.format ^comment = "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus.maritalStatusDate.partialDateValue ^comment = "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth ^definition = "Uppgifter om födelse"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth ^comment = "TKB-fält: `../../../birth` (`BirthType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.placeOfBirthSweden ^definition = "Uppgifter om hemort i Sverige"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.placeOfBirthSweden ^comment = "TKB-fält: `../../../../placeOfBirthSweden` (`PlaceOfBirthSwedenType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.placeOfBirthSweden.birthCountyCode ^comment = "TKB-fält: `../../../../../birthCountyCode` (`String2`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.placeOfBirthSweden.birthParish ^comment = "TKB-fält: `../../../../../birthParish` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad ^definition = "Uppgifter om födelse i utlandet"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad ^comment = "TKB-fält: `../../../../birthAbroad` (`BirthAbroadType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad.placeOfBirthAbroad ^definition = "Födelseort utland"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad.placeOfBirthAbroad ^comment = "TKB-fält: `../../../../../placeOfBirthAbroad` (`PlaceOfBirthAbroadType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad.placeOfBirthAbroad.placeOfBirthAbroad ^comment = "TKB-fält: `../../../../../../placeOfBirthAbroad` (`String80`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad.placeOfBirthAbroad.attested ^comment = "TKB-fält: `../../../../../../attested` (`boolean`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad.countryOfBirth ^comment = "TKB-fält: `../../../../../countryOfBirth` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration ^definition = "Grupp för invandringsuppgifter"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration ^comment = "TKB-fält: `../../../immigration` (`ImmigrationType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationDate ^comment = "TKB-fält: `../../../../immigrationDate` (`PartialDateType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationDate.format ^comment = "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationDate.partialDateValue ^comment = "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.rightOfResidence ^comment = "TKB-fält: `../../../../rightOfResidence` (`boolean`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationIdentity ^definition = "Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationIdentity ^comment = "TKB-fält: `../../../../immigrationIdentity` (`ImmigrationIdentityType`, kardinalitet 0..*)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationIdentity.personalIdentityNumber ^comment = "TKB-fält: `../../../../../personalIdentityNumber` (`PersonalIdentityNumber`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationIdentity.country ^comment = "TKB-fält: `../../../../../country` (`CountryCode`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships ^definition = "Grupp för relation"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships ^comment = "TKB-fält: `../../../relationships` (`RelationshipType`, kardinalitet 0..*)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId ^definition = "Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId ^comment = "TKB-fält: `../../../../relationshipId` (`RelationshipIdType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.personalIdentity ^definition = "Personidentitet"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.personalIdentity ^comment = "TKB-fält: `../../../../../personalIdentity` (`PersonalIdentityType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.personalIdentity.personalIdentityId ^comment = "TKB-fält: `../../../../../../id` (`PersonalIdentityNumber`, kardinalitet 1..1).

**Modellanteckning:** personalIdentityId Heter id i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.personalIdentity.personalIdentityType ^comment = "TKB-fält: `../../../../../../type` (`string`, kardinalitet 1..1).

**Modellanteckning:** personalIdentityType Heter type i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.dateOfBirth ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.dateOfBirth ^comment = "TKB-fält: `../../../../../dateOfBirth` (`PartialDateType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.dateOfBirth.format ^comment = "TKB-fält: `../../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.dateOfBirth.partialDateValue ^comment = "TKB-fält: `../../../../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipType ^comment = "TKB-fält: `../../../../relationshipType` (`RelationshipTypeType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipFromDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipFromDate ^comment = "TKB-fält: `../../../../relationshipFromDate` (`PartialDateType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipFromDate.format ^comment = "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipFromDate.partialDateValue ^comment = "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipToDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipToDate ^comment = "TKB-fält: `../../../../relationshipToDate` (`PartialDateType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipToDate.format ^comment = "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipToDate.partialDateValue ^comment = "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName ^definition = "Namn"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName ^comment = "TKB-fält: `../../../../name` (`NameType`, kardinalitet 0..1).

**Modellanteckning:** Namn Heter name i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.givenNameIndicator ^comment = "TKB-fält: `../../../../../givenNameIndicator` (`GivenNameIndicator`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.givenName ^definition = "Grupp för del av namn där delen kan vara styrkt eller ej"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.givenName ^comment = "TKB-fält: `../../../../../givenName` (`NamePartType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.givenName.namePartName ^comment = "TKB-fält: `../../../../../../name` (`String80`, kardinalitet 0..1).

**Modellanteckning:** namePartName Heter name i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.givenName.attested ^comment = "TKB-fält: `../../../../../../attested` (`boolean`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.middleName ^definition = "Grupp för del av namn där delen kan vara styrkt eller ej"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.middleName ^comment = "TKB-fält: `../../../../../middleName` (`NamePartType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.middleName.namePartName ^comment = "TKB-fält: `../../../../../../name` (`String80`, kardinalitet 0..1).

**Modellanteckning:** namePartName Heter name i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.middleName.attested ^comment = "TKB-fält: `../../../../../../attested` (`boolean`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.surname ^definition = "Grupp för del av namn där delen kan vara styrkt eller ej"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.surname ^comment = "TKB-fält: `../../../../../surname` (`NamePartType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.surname.namePartName ^comment = "TKB-fält: `../../../../../../name` (`String80`, kardinalitet 0..1).

**Modellanteckning:** namePartName Heter name i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.surname.attested ^comment = "TKB-fält: `../../../../../../attested` (`boolean`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.notificationName ^comment = "TKB-fält: `../../../../../notificationName` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration ^definition = "Uppgifter om avregistrering"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration ^comment = "TKB-fält: `../../../../deregistration` (`DeregistrationType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration.deregistrationReasonCode ^comment = "TKB-fält: `../../../../../deregistrationReasonCode` (`DeregistrationReasonCodeType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration.deregistrationDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration.deregistrationDate ^comment = "TKB-fält: `../../../../../deregistrationDate` (`PartialDateType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration.deregistrationDate.format ^comment = "TKB-fält: `../../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration.deregistrationDate.partialDateValue ^comment = "TKB-fält: `../../../../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipStatus ^comment = "TKB-fält: `../../../../status` (`RelationshipStatusType`, kardinalitet 0..1).

**Modellanteckning:** relationshipStatus Heter status i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship ^definition = "Grupp för medborgarskap"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship ^comment = "TKB-fält: `../../../citizenship` (`CitizenshipType`, kardinalitet 0..*)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipCountryCode ^definition = "Grupp för medborgarskapslandkod"
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipCountryCode ^comment = "TKB-fält: `../../../../citizenshipCountryCode` (`CitizenshipCountryCodeType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipCountryCode.countryCode ^comment = "TKB-fält: `../../../../../countryCode` (`CountryCode`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipCountryCode.attested ^comment = "TKB-fält: `../../../../../attested` (`boolean`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipDate ^comment = "TKB-fält: `../../../../citizenshipDate` (`PartialDateType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipDate.format ^comment = "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipDate.partialDateValue ^comment = "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipStatus ^comment = "TKB-fält: `../../../../status` (`CitizenshipStatusType`, kardinalitet 0..1).

**Modellanteckning:** citizenshipStatus Heter status i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords ^definition = "Grupp för historik"
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords ^comment = "TKB-fält: `../../historicalRecords` (`HistoricalRecordsType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality ^definition = "Uppgifter om folkbokföring"
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality ^comment = "TKB-fält: `../../../populationRegistrationLocality` (`PopulationRegistrationLocalityType`, kardinalitet 0..*)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.populationRegistrationDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.populationRegistrationDate ^comment = "TKB-fält: `../../../../populationRegistrationDate` (`PartialDateType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.populationRegistrationDate.format ^comment = "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.populationRegistrationDate.partialDateValue ^comment = "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.countyCode ^comment = "TKB-fält: `../../../../countyCode` (`String2`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.municipalityCode ^comment = "TKB-fält: `../../../../municipalityCode` (`String2`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.parishCode ^comment = "TKB-fält: `../../../../parishCode` (`String2`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.propertyDesignation ^comment = "TKB-fält: `../../../../propertyDesignation` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.fictitiousPropertyNumber ^comment = "TKB-fält: `../../../../fictitiousPropertyNumber` (`FictitiousPropertyNumber`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.populationRegistrationType ^comment = "TKB-fält: `../../../../populationRegistrationType` (`PopulationRegistrationTypeType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress ^definition = "Grupp för historik adress"
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress ^comment = "TKB-fält: `../../../historicalAddress` (`HistoricalAddressType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress ^definition = "Svensk adress"
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress ^comment = "TKB-fält: `../../../../residentialAddress` (`ResidentialAddressType`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.careOf ^comment = "TKB-fält: `../../../../../careOf` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.postalAddress1 ^comment = "TKB-fält: `../../../../../postalAddress1` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.postalAddress2 ^comment = "TKB-fält: `../../../../../postalAddress2` (`String40`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.postalCode ^comment = "TKB-fält: `../../../../../postalCode` (`PostalCode`, kardinalitet 0..1)."
* lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.city ^comment = "TKB-fält: `../../../../../city` (`String40`, kardinalitet 0..1)."
