// Genererad från TKB infrastructure:directory:employee v4.0
// Kontrakt: GetCommissionMembers v3.0
// Genererad: 2026-05-19

Logical: GetCommissionMembers
Id: getcommissionmembers
Title: "GetCommissionMembers"
Description: """
  Logisk modell för tjänstekontraktet GetCommissionMembers
  (RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembers:3).
  Representerar responsens informationsstruktur.
  Är identisk med GetCommissionMembersIncludingProtectedPerson förutom att
  skyddade personer aldrig returneras — fältet protectedPerson returneras alltså aldrig.
"""
Characteristics: #can-be-target

* personInformation 0..* BackboneElement "Information om personen"
    """
    Information om personen. En person (ett HSA-id) returneras bara en gång
    även om personen är medlem i flera matchande vårdmedarbetaruppdrag.
    Skyddade personer returneras aldrig i detta kontrakt.
    Kardinalitet: 0..*.
    """
* personInformation.personHsaId 1..1 string "Personens HSA-id"
    """
    Personens HSA-id. Ref. HSA-id (hsaIdentity) [R5]. Kardinalitet: Obligatorisk.
    """
* personInformation.givenName 0..1 string "Tilltalsnamn"
* personInformation.middleAndSurName 1..1 string "Mellan- och Efternamn"
* personInformation.nickName 0..1 string "Smeknamn"
* personInformation.personStartDate 0..1 dateTime "Startdatum för personens anställning"
* personInformation.personEndDate 0..1 dateTime "Slutdatum för personens anställning"
* personInformation.mail 0..1 string "E-postadress"
* personInformation.telephoneNumber 0..* string "Publikt direkttelefonnummer"
* personInformation.switchboardNumber 0..1 string "Telefonnummer till växel"
* personInformation.nonPublicTelephoneNumber 0..* string "Tjänstetelefonnummer"
* personInformation.mobileNumber 0..* string "Mobiltelefonnummer"
* personInformation.facsimileTelephoneNumber 0..* string "Faxnummer"
* personInformation.telephoneHour 0..* BackboneElement "Telefontider"
* personInformation.telephoneHour.fromDay 1..1 string "Från dag (1=Måndag, 7=Söndag)"
* personInformation.telephoneHour.fromTime 1..1 string "Från tid (ISO-8601)"
* personInformation.telephoneHour.toDay 1..1 string "Till dag (1=Måndag, 7=Söndag)"
* personInformation.telephoneHour.toTime 1..1 string "Till tid (ISO-8601)"
* personInformation.telephoneHour.comment 0..1 string "Information om aktuellt tidsintervall"
* personInformation.telephoneHour.fromDate 0..1 string "Gäller från och med detta datum"
* personInformation.telephoneHour.toDate 0..1 string "Gäller till och med detta datum"
* personInformation.title 0..1 string "Titel i fritext"
* personInformation.healthCareProfessionalLicence 0..* string "Legitimerad yrkesgrupp"
* personInformation.paTitle 0..* BackboneElement "Personens befattning"
* personInformation.paTitle.paTitleName 0..1 string "Befattning"
* personInformation.paTitle.paTitleCode 0..1 string "Befattningskod"
* personInformation.specialityName 0..* string "Specialistutbildning (klartext)"
* personInformation.specialityCode 0..* string "Specialistutbildning (kod)"
* personInformation.healthCareProfessionalLicenceSpeciality 0..* BackboneElement "Legitimerad yrkesgrupp och specialitet"
* personInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicence 1..1 string "Kod för legitimerad yrkesgrupp"
* personInformation.healthCareProfessionalLicenceSpeciality.specialityCode 1..1 string "Kod för specialistutbildning"
* personInformation.healthCareProfessionalLicenceSpeciality.specialityName 1..1 string "Klartext för specialistutbildning"
* personInformation.feignedPerson 0..1 boolean "true om personen är ett fingerat objekt"
