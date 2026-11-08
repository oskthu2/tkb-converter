// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetEmployeeIncludingProtectedPersonFieldDescriptions
* personInformation ^definition = "Information om personen. Om personen har flera person-objekt returneras en instans per objekt."
* personInformation ^comment = "TKB-fält: `personInformation` (`PersonInformationType`, kardinalitet 0..*)."
* personInformation.personHsaId ^definition = "Personens HSA-id.

Ref. HSA-id (hsaIdentity) [R5]"
* personInformation.personHsaId ^comment = "TKB-fält: `..personHsaId` (`String`, kardinalitet 1..1)."
* personInformation.givenName ^definition = "Tilltalsnamn.

Ref. tilltalsnamn (givenName, gn) [R5]"
* personInformation.givenName ^comment = "TKB-fält: `..givenName` (`String`, kardinalitet 0..1)."
* personInformation.middleAndSurName ^definition = "Mellan- och Efternamn separerade med mellanslag. Ref. mellannamn (middleName) [R5]

Ref. efternamn (sn, surName) [R5]"
* personInformation.middleAndSurName ^comment = "TKB-fält: `..middleAndSurName` (`String`, kardinalitet 1..1)."
* personInformation.nickName ^definition = "Smeknamn. Får ej användas för presentation, endast för sökning. Ref. smeknamn (nickName) [R5]"
* personInformation.nickName ^comment = "TKB-fält: `..nickName` (`String`, kardinalitet 0..1)."
* personInformation.mail ^definition = "E-postadress.

Ref. e-postadress (mail) [R5]"
* personInformation.mail ^comment = "TKB-fält: `..mail` (`String`, kardinalitet 0..1)."
* personInformation.telephoneNumber ^definition = "Publikt direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5]"
* personInformation.telephoneNumber ^comment = "TKB-fält: `..telephoneNumber` (`Telefon`, kardinalitet 0..*)."
* personInformation.switchboardNumber ^definition = "Telefonnummer till växel.

Ref. växeltelefon (hsaSwitchboardNumber) [R5]"
* personInformation.switchboardNumber ^comment = "TKB-fält: `..switchboardNumber` (`Telefon`, kardinalitet 0..1)."
* personInformation.nonPublicTelephoneNumber ^definition = "Tjänstetelefonnummer. Ref. tjänstetelefon (hsaTelephoneNumber) [R5]"
* personInformation.nonPublicTelephoneNumber ^comment = "TKB-fält: `..nonPublicTelephoneNumber` (`Telefon`, kardinalitet 0..*)."
* personInformation.mobileNumber ^definition = "Mobiltelefonnummer.

Ref. mobiltelefon (mobile) [R5]"
* personInformation.mobileNumber ^comment = "TKB-fält: `..mobileNumber` (`Telefon`, kardinalitet 0..*)."
* personInformation.facsimileTelephoneNumber ^definition = "Faxnummer.

Ref. fax (facsimileTelephoneNumber) [R5]"
* personInformation.facsimileTelephoneNumber ^comment = "TKB-fält: `..facsimileTelephoneNumber` (`Telefon`, kardinalitet 0..*)."
* personInformation.telephoneHour ^definition = "Telefontider för publik telefon (telephoneNumber).

Ref. telefontid (telephoneHours) [R5]"
* personInformation.telephoneHour ^comment = "TKB-fält: `..telephoneHour` (`TimeSpan`, kardinalitet 0..*)."
* personInformation.telephoneHour.fromDay ^definition = "Från dag. Måndag (1) – Söndag (7)."
* personInformation.telephoneHour.fromDay ^comment = "TKB-fält: `.. ..fromDay` (`String`, kardinalitet 1..1)."
* personInformation.telephoneHour.fromTime ^definition = "Från tid. Format enligt ISO-8601."
* personInformation.telephoneHour.fromTime ^comment = "TKB-fält: `.. ..fromTime` (`Time`, kardinalitet 1..1)."
* personInformation.telephoneHour.toDay ^definition = "Till dag. Måndag (1) – Söndag (7)."
* personInformation.telephoneHour.toDay ^comment = "TKB-fält: `.. ..toDay` (`String`, kardinalitet 1..1)."
* personInformation.telephoneHour.toTime ^definition = "Till tid. Format enligt ISO-8601."
* personInformation.telephoneHour.toTime ^comment = "TKB-fält: `.. ..toTime` (`Time`, kardinalitet 1..1)."
* personInformation.telephoneHour.comment ^definition = "Information om aktuellt tidsintervall."
* personInformation.telephoneHour.comment ^comment = "TKB-fält: `.. ..comment` (`String`, kardinalitet 0..1)."
* personInformation.telephoneHour.fromDate ^definition = "Tiden gäller från och med detta datum."
* personInformation.telephoneHour.fromDate ^comment = "TKB-fält: `.. ..fromDate` (`String`, kardinalitet 0..1)."
* personInformation.telephoneHour.toDate ^definition = "Tider gäller till och med detta datum."
* personInformation.telephoneHour.toDate ^comment = "TKB-fält: `.. ..toDate` (`String`, kardinalitet 0..1)."
* personInformation.postalAddress ^definition = "Postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5]"
* personInformation.postalAddress ^comment = "TKB-fält: `..postalAddress` (`AddressType`, kardinalitet 0..1)."
* personInformation.postalAddress.addressLine ^definition = "Adressrad."
* personInformation.postalAddress.addressLine ^comment = "TKB-fält: `.. ..addressLine` (`String`, kardinalitet 1..*)."
* personInformation.description ^definition = "Generell beskrivning.

Ref. beskrivning (description) [R5]"
* personInformation.description ^comment = "TKB-fält: `..description` (`String`, kardinalitet 0..1)."
* personInformation.title ^definition = "Titel i fritext. Ref. titel (title) [R5]"
* personInformation.title ^comment = "TKB-fält: `..title` (`String`, kardinalitet 0..1)."
* personInformation.healthCareProfessionalLicence ^definition = "Legitimerad yrkesgrupp. Ref. legitimerad yrkesgrupp (hsaTitle) [R5]"
* personInformation.healthCareProfessionalLicence ^comment = "TKB-fält: `..healthCareProfessionalLicence` (`String`, kardinalitet 0..*)."
* personInformation.paTitle ^definition = "Personens befattning"
* personInformation.paTitle ^comment = "TKB-fält: `..paTitle` (`PaTitleType`, kardinalitet 0..*)."
* personInformation.paTitle.paTitleName ^definition = "Befattning. Ref. befattning (paTitleName) [R5]"
* personInformation.paTitle.paTitleName ^comment = "TKB-fält: `.. ..paTitleName` (`String`, kardinalitet 0..1)."
* personInformation.paTitle.paTitleCode ^definition = "Befattningskod. Ref. befattningskod (paTitleCode) [R5]"
* personInformation.paTitle.paTitleCode ^comment = "TKB-fält: `.. ..paTitleCode` (`String`, kardinalitet 0..1)."
* personInformation.specialityName ^definition = "Specialistutbildning utöver grundutbildning för läkare eller tandläkare. Ref. specialitet (specialityName) [R5]"
* personInformation.specialityName ^comment = "TKB-fält: `..specialityName` (`String`, kardinalitet 0..*)."
* personInformation.specialityCode ^definition = "Klassificeringskod för specialistutbildning utöver grundutbildning. Ref. specialitetskod (specialityCode) [R5]"
* personInformation.specialityCode ^comment = "TKB-fält: `..specialityCode` (`String`, kardinalitet 0..*)."
* personInformation.dn ^definition = "\"Distinguished Name\". Objektets placering (sökväg) i katalogen."
* personInformation.dn ^comment = "TKB-fält: `..dn` (`DN`, kardinalitet 1..1)."
* personInformation.protectedPerson ^definition = "true: om person har skyddad identitet. Ref. hjälpklassen Skyddad person (hsaConfidentialPerson) [R5]"
* personInformation.protectedPerson ^comment = "TKB-fält: `..protectedPerson` (`Boolean`, kardinalitet 0..1)."
* personInformation.feignedPerson ^definition = "true: om personen är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5]"
* personInformation.feignedPerson ^comment = "TKB-fält: `..feignedPerson` (`Boolean`, kardinalitet 0..1)."
* personInformation.healthCareProfessionalLicenceSpeciality ^definition = "Legitimerad yrkesgrupp och specialitet för läkare och tandläkare."
* personInformation.healthCareProfessionalLicenceSpeciality ^comment = "TKB-fält: `..healthCareProfessionalLicenceSpeciality` (`HealthCareProfessionalLicenceSpecialityType`, kardinalitet 0..*)."
* personInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicence ^definition = "Kod för Legitimerad yrkesgrupp som nedanstående specialitet hör till."
* personInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicence ^comment = "TKB-fält: `.. ..healthCareProfessionalLicence` (`String`, kardinalitet 1..1)."
* personInformation.healthCareProfessionalLicenceSpeciality.specialityCode ^definition = "Kod för specialistutbildning utöver grundutbildning"
* personInformation.healthCareProfessionalLicenceSpeciality.specialityCode ^comment = "TKB-fält: `.. ..specialityCode` (`String`, kardinalitet 1..1)."
* personInformation.healthCareProfessionalLicenceSpeciality.specialityName ^definition = "Klartext för namnet på specialistutbildning utöver grundutbildning"
* personInformation.healthCareProfessionalLicenceSpeciality.specialityName ^comment = "TKB-fält: `.. ..specialityName` (`String`, kardinalitet 1..1)."
* personInformation.age ^definition = "Personens ålder, anges i jämna år. Värdet hämtas från personens person- eller samordningsnummer."
* personInformation.age ^comment = "TKB-fält: `..age *3)` (`String`, kardinalitet 0..1)."
* personInformation.gender ^definition = "Personens kön. 0=okänt, 1=man, 2=kvinna. Värdet beräknas från personens person- eller samordningsnummer."
* personInformation.gender ^comment = "TKB-fält: `..gender *3)` (`String`, kardinalitet 0..1)."
* personInformation.structuredPostalAddress ^definition = "Vårdenhetens postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5]"
* personInformation.structuredPostalAddress ^comment = "TKB-fält: `..structuredPostalAddress` (`structuredPostalAddressType`, kardinalitet 0..1)."
* personInformation.structuredPostalAddress.addressee ^definition = "Adressat"
* personInformation.structuredPostalAddress.addressee ^comment = "TKB-fält: `.. ..addressee` (`String`, kardinalitet 1..*)."
* personInformation.structuredPostalAddress.street ^definition = "Gata"
* personInformation.structuredPostalAddress.street ^comment = "TKB-fält: `.. ..street` (`String`, kardinalitet 0..1)."
* personInformation.structuredPostalAddress.premisesNumber ^definition = "Adressplatsnummer"
* personInformation.structuredPostalAddress.premisesNumber ^comment = "TKB-fält: `.. ..premisesNumber` (`String`, kardinalitet 0..1)."
* personInformation.structuredPostalAddress.premisesLetter ^definition = "Adressplatslittera"
* personInformation.structuredPostalAddress.premisesLetter ^comment = "TKB-fält: `.. ..premisesLetter` (`String`, kardinalitet 0..1)."
* personInformation.structuredPostalAddress.postCode ^definition = "Postnummer"
* personInformation.structuredPostalAddress.postCode ^comment = "TKB-fält: `.. ..postCode` (`String`, kardinalitet 1..1)."
* personInformation.structuredPostalAddress.town ^definition = "Postort"
* personInformation.structuredPostalAddress.town ^comment = "TKB-fält: `.. ..town` (`String`, kardinalitet 1..1)."
