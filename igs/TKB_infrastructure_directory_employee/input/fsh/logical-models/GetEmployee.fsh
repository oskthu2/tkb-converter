// Genererad från TKB infrastructure:directory:employee v4.0
// Kontrakt: GetEmployee v4.0
// Genererad: 2026-05-19

Logical: GetEmployee
Id: getemployee
Title: "GetEmployee"
Description: """
  Logisk modell för tjänstekontraktet GetEmployee
  (RIV-TA urn:riv:infrastructure:directory:employee:GetEmployee:4).
  Representerar responsens informationsstruktur.
  Är identisk med GetEmployeeIncludingProtectedPerson förutom att skyddade personer
  aldrig returneras — fältet protectedPerson returneras alltså aldrig.
"""
Characteristics: #can-be-target

* personInformation 0..* BackboneElement "Information om personen"
    """
    Information om personen. Om personen har flera person-objekt returneras en instans per objekt.
    Skyddade personer returneras aldrig i detta kontrakt.
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
* personInformation.postalAddress 0..1 BackboneElement "Postadress (ostrukturerat format)"
* personInformation.postalAddress.addressLine 1..* string "Adressrad"
* personInformation.structuredPostalAddress 0..1 BackboneElement "Postadress (strukturerat format)"
* personInformation.structuredPostalAddress.addressee 1..* string "Adressat"
* personInformation.structuredPostalAddress.street 0..1 string "Gata"
* personInformation.structuredPostalAddress.premisesNumber 0..1 string "Adressplatsnummer"
* personInformation.structuredPostalAddress.premisesLetter 0..1 string "Adressplatslittera"
* personInformation.structuredPostalAddress.postCode 1..1 string "Postnummer"
* personInformation.structuredPostalAddress.town 1..1 string "Postort"
* personInformation.description 0..1 string "Generell beskrivning"
* personInformation.title 0..1 string "Titel i fritext"
* personInformation.healthCareProfessionalLicence 0..* string "Legitimerad yrkesgrupp"
* personInformation.healthCareProfessionalLicenceSpeciality 0..* BackboneElement "Legitimerad yrkesgrupp och specialitet"
* personInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicence 1..1 string "Kod för legitimerad yrkesgrupp"
* personInformation.healthCareProfessionalLicenceSpeciality.specialityCode 1..1 string "Kod för specialistutbildning"
* personInformation.healthCareProfessionalLicenceSpeciality.specialityName 1..1 string "Klartext för specialistutbildning"
* personInformation.paTitle 0..* BackboneElement "Personens befattning"
* personInformation.paTitle.paTitleName 0..1 string "Befattning"
* personInformation.paTitle.paTitleCode 0..1 string "Befattningskod"
* personInformation.specialityName 0..* string "Specialistutbildning (klartext)"
* personInformation.specialityCode 0..* string "Specialistutbildning (kod)"
* personInformation.dn 1..1 string "Distinguished Name (DN)"
    """
    Distinguished Name — objektets placering (sökväg) i katalogen. Kardinalitet: Obligatorisk.
    """
* personInformation.feignedPerson 0..1 boolean "true om personen är ett fingerat objekt"
* personInformation.age 0..1 string "Personens ålder i hela år (kräver profile=extended1)"
* personInformation.gender 0..1 string "Personens kön (0=okänt, 1=man, 2=kvinna; kräver profile=extended1)"
