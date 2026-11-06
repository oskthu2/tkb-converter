// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: UpdatePersonRequestFieldDescriptions
* actor ^definition = "Den som utför uppdateringen. Aktörens identitet ska även kompletteras med en organisatorisk identitet som kan peka ut PUA-ansvarig organisation. Se datatyp ActorType."
* actor ^comment = "TKB-fält: `Actor` (`urn:riv:strategicresourcemanagement:persons:person:5:ActorType`, kardinalitet 1..1).

**Modellanteckning:** Datatyp som identifierar en aktör."
* actor.actorId ^definition = "En universellt unik identifierare."
* actor.actorId ^comment = "TKB-fält: `../id` (`IIType`, kardinalitet 1..1)."
* actor.actorId.root ^comment = "TKB-fält: `../../root` (`string`, kardinalitet 1..1)."
* actor.actorId.iiExtension ^comment = "TKB-fält: `../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* actor.professional ^definition = "Datatyp som identifierar en aktör inom en profession."
* actor.professional ^comment = "TKB-fält: `../professional` (`ProfessionalType`, kardinalitet 0..1)."
* actor.professional.organizationId ^definition = "En universellt unik identifierare."
* actor.professional.organizationId ^comment = "TKB-fält: `../../organizationId` (`IIType`, kardinalitet 1..1)."
* actor.professional.organizationId.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* actor.professional.organizationId.iiExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* actor.updateTime ^comment = "TKB-fält: `../updateTime` (`Timestamp`, kardinalitet 0..1)."
* personId ^definition = "Personens identitet"
* personId ^comment = "TKB-fält: `personId` (`urn:riv:strategicresourcemanagement:persons:person:5:IIType`, kardinalitet 0..1).

**Modellanteckning:** En universellt unik identifierare."
* personId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* personId.iiExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* gender ^definition = "Kön (se kodverk, [R3])"
* gender ^comment = "TKB-fält: `gender` (`urn:riv:strategicresourcemanagement:persons:person:5:CodedValue`, kardinalitet 0..1)."
* versionToUpdate ^definition = "Håller reda på senast gällande version. Skall bifogas i de fall man genom en föregående läsning har erhållit detta attribut"
* versionToUpdate ^comment = "TKB-fält: `versionToUpdate` (`urn:riv:strategicresourcemanagement:persons:person:5:Timestamp`, kardinalitet 0..1)."
* updatePersonName ^definition = "Personens alla namn"
* updatePersonName ^comment = "TKB-fält: `Name` (`urn:riv:strategicresourcemanagement:persons:person:5:NameType`, kardinalitet 0..1).

**Modellanteckning:** Namn Heter name i schemat."
* updatePersonName.givenNameIndicator ^comment = "TKB-fält: `../givenNameIndicator` (`GivenNameIndicator`, kardinalitet 0..1)."
* updatePersonName.givenName ^comment = "TKB-fält: `../givenName` (`String80`, kardinalitet 0..1)."
* updatePersonName.middleName ^comment = "TKB-fält: `../middleName` (`String80`, kardinalitet 0..1)."
* updatePersonName.surname ^comment = "TKB-fält: `../surname` (`String80`, kardinalitet 0..1)."
* updatePersonName.notificationName ^comment = "TKB-fält: `../notificationName` (`String40`, kardinalitet 0..1)."
* birth ^definition = "Personens födelsedata"
* birth ^comment = "TKB-fält: `Birth` (`urn:riv:strategicresourcemanagement:persons:person:5:BirthType`, kardinalitet 0..1).

**Modellanteckning:** Uppgifter om födelse"
* birth.dateOfBirth ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* birth.dateOfBirth ^comment = "TKB-fält: `../dateOfBirth` (`PartialDateType`, kardinalitet 0..1)."
* birth.dateOfBirth.format ^comment = "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* birth.dateOfBirth.partialDateValue ^comment = "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* birth.placeOfBirthSweden ^definition = "Uppgifter om hemort i Sverige"
* birth.placeOfBirthSweden ^comment = "TKB-fält: `../placeOfBirthSweden` (`PlaceOfBirthSwedenType`, kardinalitet 0..1)."
* birth.placeOfBirthSweden.birthCountyCode ^comment = "TKB-fält: `../../birthCountyCode` (`String2`, kardinalitet 0..1)."
* birth.placeOfBirthSweden.birthParish ^comment = "TKB-fält: `../../birthParish` (`String40`, kardinalitet 0..1)."
* birth.birthAbroad ^definition = "Uppgifter om födelse i utlandet"
* birth.birthAbroad ^comment = "TKB-fält: `../birthAbroad` (`BirthAbroadType`, kardinalitet 0..1)."
* birth.birthAbroad.placeOfBirthAbroad ^comment = "TKB-fält: `../../placeOfBirthAbroad` (`String80`, kardinalitet 0..1)."
* birth.birthAbroad.countryOfBirth ^comment = "TKB-fält: `../../countryOfBirth` (`String40`, kardinalitet 0..1)."
* relationship ^definition = "Personens relationer"
* relationship ^comment = "TKB-fält: `relationship` (`urn:riv:strategicresourcemanagement:persons:person:5:RelationshipType`, kardinalitet 0..*).

**Modellanteckning:** Grupp för relation"
* relationship.relationshipId ^definition = "Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes."
* relationship.relationshipId ^comment = "TKB-fält: `../relationshipId` (`RelationshipIdType`, kardinalitet 1..1)."
* relationship.relationshipId.personalIdentity ^definition = "En universellt unik identifierare."
* relationship.relationshipId.personalIdentity ^comment = "TKB-fält: `../../personalIdentity` (`IIType`, kardinalitet 0..1)."
* relationship.relationshipId.personalIdentity.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* relationship.relationshipId.personalIdentity.iiExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* relationship.relationshipId.dateOfBirth ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* relationship.relationshipId.dateOfBirth ^comment = "TKB-fält: `../../dateOfBirth` (`PartialDateType`, kardinalitet 0..1)."
* relationship.relationshipId.dateOfBirth.format ^comment = "TKB-fält: `../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* relationship.relationshipId.dateOfBirth.partialDateValue ^comment = "TKB-fält: `../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* relationship.relationshipType ^comment = "TKB-fält: `../relationshipType` (`CodedValue`, kardinalitet 1..1)."
* relationship.relationshipFromDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* relationship.relationshipFromDate ^comment = "TKB-fält: `../relationshipFromDate` (`PartialDateType`, kardinalitet 0..1)."
* relationship.relationshipFromDate.format ^comment = "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* relationship.relationshipFromDate.partialDateValue ^comment = "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* relationship.relationshipToDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* relationship.relationshipToDate ^comment = "TKB-fält: `../relationshipToDate` (`PartialDateType`, kardinalitet 0..1)."
* relationship.relationshipToDate.format ^comment = "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* relationship.relationshipToDate.partialDateValue ^comment = "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* relationship.relationshipName ^definition = "Namn"
* relationship.relationshipName ^comment = "TKB-fält: `../name` (`NameType`, kardinalitet 0..1).

**Modellanteckning:** Namn Heter name i schemat."
* relationship.relationshipName.givenNameIndicator ^comment = "TKB-fält: `../../givenNameIndicator` (`GivenNameIndicator`, kardinalitet 0..1)."
* relationship.relationshipName.givenName ^comment = "TKB-fält: `../../givenName` (`String80`, kardinalitet 0..1)."
* relationship.relationshipName.middleName ^comment = "TKB-fält: `../../middleName` (`String80`, kardinalitet 0..1)."
* relationship.relationshipName.surname ^comment = "TKB-fält: `../../surname` (`String80`, kardinalitet 0..1)."
* relationship.relationshipName.notificationName ^comment = "TKB-fält: `../../notificationName` (`String40`, kardinalitet 0..1)."
* relationship.deregistration ^definition = "Uppgifter om avregistrering"
* relationship.deregistration ^comment = "TKB-fält: `../deregistration` (`DeregistrationType`, kardinalitet 0..1)."
* relationship.deregistration.deregistrationReasonCode ^comment = "TKB-fält: `../../deregistrationReasonCode` (`CodedValue`, kardinalitet 0..1)."
* relationship.deregistration.deregistrationDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* relationship.deregistration.deregistrationDate ^comment = "TKB-fält: `../../deregistrationDate` (`PartialDateType`, kardinalitet 0..1)."
* relationship.deregistration.deregistrationDate.format ^comment = "TKB-fält: `../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* relationship.deregistration.deregistrationDate.partialDateValue ^comment = "TKB-fält: `../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* relationship.deregistration.foundDeadAtDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* relationship.deregistration.foundDeadAtDate ^comment = "TKB-fält: `../../foundDeadAtDate` (`PartialDateType`, kardinalitet 0..1)."
* relationship.deregistration.foundDeadAtDate.format ^comment = "TKB-fält: `../../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* relationship.deregistration.foundDeadAtDate.partialDateValue ^comment = "TKB-fält: `../../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* relationship.relationshipStatus ^comment = "TKB-fält: `../status` (`CodedValue`, kardinalitet 0..1).

**Modellanteckning:** relationshipStatus Heter status i schemat."
* givenAddress ^definition = "Personen adress"
* givenAddress ^comment = "TKB-fält: `givenAddress` (`urn:riv:strategicresourcemanagement:persons:person:5:ResidentialAddressType`, kardinalitet 0..1).

**Modellanteckning:** Svensk adress"
* givenAddress.careOf ^comment = "TKB-fält: `../careOf` (`String40`, kardinalitet 0..1)."
* givenAddress.postalAddress1 ^comment = "TKB-fält: `../postalAddress1` (`String40`, kardinalitet 0..1)."
* givenAddress.postalAddress2 ^comment = "TKB-fält: `../postalAddress2` (`String40`, kardinalitet 0..1)."
* givenAddress.postalCode ^comment = "TKB-fält: `../postalCode` (`PostalCode`, kardinalitet 0..1)."
* givenAddress.city ^comment = "TKB-fält: `../city` (`String40`, kardinalitet 0..1)."
* deregistration ^definition = "Avregistreringsorsak"
* deregistration ^comment = "TKB-fält: `deregistration` (`urn:riv:strategicresourcemanagement:persons:person:5:DeregistrationType`, kardinalitet 0..1).

**Modellanteckning:** Uppgifter om avregistrering"
* deregistration.deregistrationReasonCode ^comment = "TKB-fält: `../deregistrationReasonCode` (`CodedValue`, kardinalitet 0..1)."
* deregistration.deregistrationDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* deregistration.deregistrationDate ^comment = "TKB-fält: `../deregistrationDate` (`PartialDateType`, kardinalitet 0..1)."
* deregistration.deregistrationDate.format ^comment = "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* deregistration.deregistrationDate.partialDateValue ^comment = "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* deregistration.foundDeadAtDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* deregistration.foundDeadAtDate ^comment = "TKB-fält: `../foundDeadAtDate` (`PartialDateType`, kardinalitet 0..1)."
* deregistration.foundDeadAtDate.format ^comment = "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* deregistration.foundDeadAtDate.partialDateValue ^comment = "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* administrativeInformation ^definition = "Administrativa uppgifter som normalt knyts till personer med reservidentitet"
* administrativeInformation ^comment = "TKB-fält: `administrativeInformation` (`urn:riv:strategicresourcemanagement:persons:person:5:AdministrativeInformationType`, kardinalitet 0..1).

**Modellanteckning:** Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID)."
* administrativeInformation.categoryOfPerson ^comment = "TKB-fält: `../categoryOfPerson` (`CodedValue`, kardinalitet 0..1)."
* administrativeInformation.accountCode ^comment = "TKB-fält: `../accountCode` (`CodedValue`, kardinalitet 0..1)."
* administrativeInformation.comment ^comment = "TKB-fält: `../comment` (`string`, kardinalitet 0..1)."
* confirmedIdentity ^definition = "Anger på vilket sätt en (reserv)identitet har styrkts"
* confirmedIdentity ^comment = "TKB-fält: `confirmedIdentity` (`urn:riv:strategicresourcemanagement:persons:person:5:ConfirmedIdentityType`, kardinalitet 0..*).

**Modellanteckning:** Klass för hur reservidentitetsuppgifter är styrkta."
* confirmedIdentity.typeOfIdentification ^comment = "TKB-fält: `../typeOfIdentification` (`CodedValue`, kardinalitet 0..1)."
* confirmedIdentity.identificationNumber ^comment = "TKB-fält: `../identificationNumber` (`string`, kardinalitet 0..1)."
* confirmedIdentity.issuersOfId ^comment = "TKB-fält: `../issuersOfId` (`string`, kardinalitet 0..1)."
* confirmedIdentity.validDatePeriod ^comment = "TKB-fält: `../validDatePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* confirmedIdentity.validDatePeriod.start ^comment = "TKB-fält: `../../start` (`date`, kardinalitet 0..1)."
* confirmedIdentity.validDatePeriod.end ^comment = "TKB-fält: `../../end` (`date`, kardinalitet 0..1)."
* confirmedIdentity.attachmentId ^comment = "TKB-fält: `../attachmentId` (`string`, kardinalitet 0..*)."
* confirmedIdentity.countryCode ^comment = "TKB-fält: `../countryCode` (`CountryCode`, kardinalitet 0..1)."
* addressAbroad ^definition = "Uppgiven utlandsadress"
* addressAbroad ^comment = "TKB-fält: `addressAbroad` (`urn:riv:strategicresourcemanagement:persons:person:5:AddressAbroadType`, kardinalitet 0..1)."
* addressAbroad.postalAddress1 ^comment = "TKB-fält: `../postalAddress1` (`String40`, kardinalitet 0..1)."
* addressAbroad.postalAddress2 ^comment = "TKB-fält: `../postalAddress2` (`String40`, kardinalitet 0..1)."
* addressAbroad.postalAddress3 ^comment = "TKB-fält: `../postalAddress3` (`String40`, kardinalitet 0..1)."
* addressAbroad.countryCode ^comment = "TKB-fält: `../countryCode` (`String40`, kardinalitet 0..1)."
* addressAbroad.addressAbroadDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* addressAbroad.addressAbroadDate ^comment = "TKB-fält: `../addressAbroadDate` (`PartialDateType`, kardinalitet 0..1)."
* addressAbroad.addressAbroadDate.format ^comment = "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* addressAbroad.addressAbroadDate.partialDateValue ^comment = "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
* addressAbroad.votingDate ^definition = "Kan beskriva ett datum med variabel noggrannhet."
* addressAbroad.votingDate ^comment = "TKB-fält: `../votingDate` (`PartialDateType`, kardinalitet 0..1)."
* addressAbroad.votingDate.format ^comment = "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1)."
* addressAbroad.votingDate.partialDateValue ^comment = "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).

**Modellanteckning:** partialDateValue Heter value i schemat."
