// Genererad från TKB infrastructure:directory:employee v4.0
// Kontrakt: GetCommissionMembersIncludingProtectedPerson v3.0
// Genererad: 2026-05-19

Logical: GetCommissionMembersIncludingProtectedPerson
Id: getcommissionmembersincludingprotectedperson
Title: "GetCommissionMembersIncludingProtectedPerson"
Description: """
  Logisk modell för tjänstekontraktet GetCommissionMembersIncludingProtectedPerson
  (RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembersIncludingProtectedPerson:3).
  Representerar responsens informationsstruktur.
  Returnerar information om personer kopplade till vårdmedarbetaruppdrag för angiven
  vårdenhet, inklusive skyddade personer.
"""
Characteristics: #can-be-target

* personInformation 0..* BackboneElement "Information om personen"
    """
    Information om personen. En person (ett HSA-id) returneras bara en gång
    även om personen är medlem i flera matchande vårdmedarbetaruppdrag.
    Kardinalitet: 0..*.
    """
* personInformation.personHsaId 1..1 string "Personens HSA-id"
    """
    Personens HSA-id. Ref. HSA-id (hsaIdentity) [R5]. Kardinalitet: Obligatorisk.
    """
* personInformation.givenName 0..1 string "Tilltalsnamn"
    """
    Tilltalsnamn. Ref. tilltalsnamn (givenName, gn) [R5]. Kardinalitet: Valfri.
    """
* personInformation.middleAndSurName 1..1 string "Mellan- och Efternamn"
    """
    Mellan- och Efternamn separerade med mellanslag. Kardinalitet: Obligatorisk.
    """
* personInformation.nickName 0..1 string "Smeknamn"
    """
    Smeknamn. Får ej användas för presentation, endast för sökning. Kardinalitet: Valfri.
    """
* personInformation.personStartDate 0..1 dateTime "Startdatum för personens anställning"
    """
    Eventuellt startdatum för personens anställning.
    Om startdatum ännu inte inträtt är anställningen ännu inte aktiv.
    Ref. startdatum (startDate) [R5]. Kardinalitet: Valfri.
    """
* personInformation.personEndDate 0..1 dateTime "Slutdatum för personens anställning"
    """
    Eventuellt slutdatum för personens anställning.
    Om slutdatum passerats är anställningen inte längre aktiv.
    Ref. slutdatum (endDate) [R5]. Kardinalitet: Valfri.
    """
* personInformation.mail 0..1 string "E-postadress"
    """
    E-postadress. Ref. e-postadress (mail) [R5]. Kardinalitet: Valfri.
    """
* personInformation.telephoneNumber 0..* string "Publikt direkttelefonnummer"
    """
    Publikt direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5].
    Kardinalitet: Valfri, lista.
    """
* personInformation.switchboardNumber 0..1 string "Telefonnummer till växel"
    """
    Telefonnummer till växel. Ref. växeltelefon (hsaSwitchboardNumber) [R5]. Kardinalitet: Valfri.
    """
* personInformation.nonPublicTelephoneNumber 0..* string "Tjänstetelefonnummer"
    """
    Tjänstetelefonnummer. Ref. tjänstetelefon (hsaTelephoneNumber) [R5].
    Kardinalitet: Valfri, lista.
    """
* personInformation.mobileNumber 0..* string "Mobiltelefonnummer"
    """
    Mobiltelefonnummer. Ref. mobiltelefon (mobile) [R5]. Kardinalitet: Valfri, lista.
    """
* personInformation.facsimileTelephoneNumber 0..* string "Faxnummer"
    """
    Faxnummer. Ref. fax (facsimileTelephoneNumber) [R5]. Kardinalitet: Valfri, lista.
    """
* personInformation.telephoneHour 0..* BackboneElement "Telefontider"
    """
    Telefontider för publik telefon (telephoneNumber). Ref. telefontid (telephoneHours) [R5].
    """
* personInformation.telephoneHour.fromDay 1..1 string "Från dag (1=Måndag, 7=Söndag)"
* personInformation.telephoneHour.fromTime 1..1 string "Från tid (ISO-8601)"
* personInformation.telephoneHour.toDay 1..1 string "Till dag (1=Måndag, 7=Söndag)"
* personInformation.telephoneHour.toTime 1..1 string "Till tid (ISO-8601)"
* personInformation.telephoneHour.comment 0..1 string "Information om aktuellt tidsintervall"
* personInformation.telephoneHour.fromDate 0..1 string "Gäller från och med detta datum"
* personInformation.telephoneHour.toDate 0..1 string "Gäller till och med detta datum"
* personInformation.title 0..1 string "Titel i fritext"
    """
    Titel i fritext. Ref. titel (title) [R5]. Kardinalitet: Valfri.
    """
* personInformation.healthCareProfessionalLicence 0..* string "Legitimerad yrkesgrupp"
    """
    Legitimerad yrkesgrupp. Ref. legitimerad yrkesgrupp (hsaTitle) [R5].
    Kardinalitet: Valfri, lista.
    """
* personInformation.paTitle 0..* BackboneElement "Personens befattning"
    """
    Personens befattning. Kardinalitet: Valfri, lista.
    """
* personInformation.paTitle.paTitleName 0..1 string "Befattning"
    """
    Befattning. Ref. befattning (paTitleName) [R5].
    """
* personInformation.paTitle.paTitleCode 0..1 string "Befattningskod"
    """
    Befattningskod. Ref. befattningskod (paTitleCode) [R5].
    """
* personInformation.specialityName 0..* string "Specialistutbildning (klartext)"
    """
    Specialistutbildning utöver grundutbildning för läkare eller tandläkare.
    Ref. specialitet (specialityName) [R5]. Kardinalitet: Valfri, lista.
    """
* personInformation.specialityCode 0..* string "Specialistutbildning (kod)"
    """
    Klassificeringskod för specialistutbildning utöver grundutbildning.
    Ref. specialitetskod (specialityCode) [R5]. Kardinalitet: Valfri, lista.
    """
* personInformation.healthCareProfessionalLicenceSpeciality 0..* BackboneElement "Legitimerad yrkesgrupp och specialitet"
    """
    Legitimerad yrkesgrupp och specialitet för läkare och tandläkare.
    Ref. leg.yrkesgrupp och specialitet (hsaSosTitleCodeSpeciality) [R5].
    """
* personInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicence 1..1 string "Kod för legitimerad yrkesgrupp"
* personInformation.healthCareProfessionalLicenceSpeciality.specialityCode 1..1 string "Kod för specialistutbildning"
* personInformation.healthCareProfessionalLicenceSpeciality.specialityName 1..1 string "Klartext för specialistutbildning"
* personInformation.protectedPerson 0..1 boolean "true om person har skyddad identitet"
    """
    true: om person har skyddad identitet.
    Ref. hjälpklassen Skyddad person (hsaConfidentialPerson) [R5]. Kardinalitet: Valfri.
    """
* personInformation.feignedPerson 0..1 boolean "true om personen är ett fingerat objekt"
    """
    true: om personen är ett fingerat objekt.
    Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]. Kardinalitet: Valfri.
    """
