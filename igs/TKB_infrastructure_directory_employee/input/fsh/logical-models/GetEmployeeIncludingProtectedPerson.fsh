// Genererad från TKB infrastructure:directory:employee v4.0
// Kontrakt: GetEmployeeIncludingProtectedPerson v4.0
// Genererad: 2026-05-19

Logical: GetEmployeeIncludingProtectedPerson
Id: getemployeeincludingprotectedperson
Title: "GetEmployeeIncludingProtectedPerson"
Description: """
  Logisk modell för tjänstekontraktet GetEmployeeIncludingProtectedPerson
  (RIV-TA urn:riv:infrastructure:directory:employee:GetEmployeeIncludingProtectedPerson:4).
  Representerar responsens informationsstruktur (PersonInformationType).
  Returnerar information om en angiven person inklusive skyddade personer.
"""
Characteristics: #can-be-target

* personInformation 0..* BackboneElement "Information om personen"
    """
    Information om personen. Om personen har flera person-objekt returneras en instans per objekt.
    Kardinalitet: 0..*.
    """
* personInformation.personHsaId 1..1 string "Personens HSA-id"
    """
    Personens HSA-id. Ref. HSA-id (hsaIdentity) i Informationsspecifikationen [R5].
    Kardinalitet: Obligatorisk.
    """
* personInformation.givenName 0..1 string "Tilltalsnamn"
    """
    Tilltalsnamn. Endast ett litet antal personer saknar helt förnamn.
    Ref. tilltalsnamn (givenName, gn) [R5]. Kardinalitet: Valfri.
    """
* personInformation.middleAndSurName 1..1 string "Mellan- och Efternamn"
    """
    Mellan- och Efternamn separerade med mellanslag.
    Ref. mellannamn (middleName) [R5] / Ref. efternamn (sn, surName) [R5].
    Kardinalitet: Obligatorisk.
    """
* personInformation.nickName 0..1 string "Smeknamn"
    """
    Smeknamn. Används då tilltalsnamn inte är det namn personen vill använda.
    Får ej användas för presentation, endast för sökning.
    Ref. smeknamn (nickName) [R5]. Kardinalitet: Valfri.
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
    Telefonnummer till växel. Ref. växeltelefon (hsaSwitchboardNumber) [R5].
    Kardinalitet: Valfri.
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
    Telefontider för publik telefon (telephoneNumber).
    Ref. telefontid (telephoneHours) [R5]. Kardinalitet: Valfri, lista.
    """
* personInformation.telephoneHour.fromDay 1..1 string "Från dag (1=Måndag, 7=Söndag)"
* personInformation.telephoneHour.fromTime 1..1 time "Från tid (ISO-8601)"
* personInformation.telephoneHour.toDay 1..1 string "Till dag (1=Måndag, 7=Söndag)"
* personInformation.telephoneHour.toTime 1..1 time "Till tid (ISO-8601)"
* personInformation.telephoneHour.comment 0..1 string "Information om aktuellt tidsintervall"
* personInformation.telephoneHour.fromDate 0..1 string "Gäller från och med detta datum"
* personInformation.telephoneHour.toDate 0..1 string "Gäller till och med detta datum"
* personInformation.postalAddress 0..1 BackboneElement "Postadress (ostrukturerat format)"
    """
    Postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5].
    Kommer på sikt att ersättas av structuredPostalAddress.
    """
* personInformation.postalAddress.addressLine 1..* string "Adressrad"
* personInformation.structuredPostalAddress 0..1 BackboneElement "Postadress (strukturerat format)"
    """
    Vårdenhetens postadress i strukturerat format.
    Ref. Strukturerad postadress (hsaPostalAddress) [R5].
    Kommer på sikt att ersätta postalAddress.
    """
* personInformation.structuredPostalAddress.addressee 1..* string "Adressat"
* personInformation.structuredPostalAddress.street 0..1 string "Gata"
* personInformation.structuredPostalAddress.premisesNumber 0..1 string "Adressplatsnummer"
* personInformation.structuredPostalAddress.premisesLetter 0..1 string "Adressplatslittera"
* personInformation.structuredPostalAddress.postCode 1..1 string "Postnummer"
* personInformation.structuredPostalAddress.town 1..1 string "Postort"
* personInformation.description 0..1 string "Generell beskrivning"
    """
    Generell beskrivning. Ref. beskrivning (description) [R5]. Kardinalitet: Valfri.
    """
* personInformation.title 0..1 string "Titel i fritext"
    """
    Titel i fritext. Ref. titel (title) [R5]. Kardinalitet: Valfri.
    """
* personInformation.healthCareProfessionalLicence 0..* string "Legitimerad yrkesgrupp"
    """
    Legitimerad yrkesgrupp. Ref. legitimerad yrkesgrupp (hsaTitle) [R5].
    Kardinalitet: Valfri, lista.
    """
* personInformation.healthCareProfessionalLicenceSpeciality 0..* BackboneElement "Legitimerad yrkesgrupp och specialitet"
    """
    Legitimerad yrkesgrupp och specialitet för läkare och tandläkare.
    Ref. leg.yrkesgrupp och specialitet (hsaSosTitleCodeSpeciality) [R5].
    """
* personInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicence 1..1 string "Kod för legitimerad yrkesgrupp"
* personInformation.healthCareProfessionalLicenceSpeciality.specialityCode 1..1 string "Kod för specialistutbildning"
* personInformation.healthCareProfessionalLicenceSpeciality.specialityName 1..1 string "Klartext för specialistutbildning"
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
* personInformation.dn 1..1 string "Distinguished Name (DN)"
    """
    Distinguished Name — objektets placering (sökväg) i katalogen.
    Exempel: cn=Henrika Littorin,ou=Anställda,...,c=SE.
    Kardinalitet: Obligatorisk.
    """
* personInformation.protectedPerson 0..1 boolean "true om person har skyddad identitet"
    """
    true: om person har skyddad identitet.
    Om personen inte har skyddad identitet returneras inget värde.
    Ref. hjälpklassen Skyddad person (hsaConfidentialPerson) [R5].
    Kardinalitet: Valfri.
    """
* personInformation.feignedPerson 0..1 boolean "true om personen är ett fingerat objekt"
    """
    true: om personen är ett fingerat objekt.
    Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5].
    Kardinalitet: Valfri.
    """
* personInformation.age 0..1 string "Personens ålder i hela år"
    """
    Personens ålder, anges i jämna år. Returneras då profil=extended1.
    Värdet hämtas från personens person- eller samordningsnummer [R5].
    Kardinalitet: Valfri (villkorlig — kräver profile=extended1).
    """
* personInformation.gender 0..1 string "Personens kön (0=okänt, 1=man, 2=kvinna)"
    """
    Personens kön. 0=okänt, 1=man, 2=kvinna. Returneras då profil=extended1.
    Värdet beräknas från personens person- eller samordningsnummer [R5].
    Kardinalitet: Valfri (villkorlig — kräver profile=extended1).
    """
