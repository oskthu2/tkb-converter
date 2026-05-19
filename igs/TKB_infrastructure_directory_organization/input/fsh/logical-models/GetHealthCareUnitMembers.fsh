// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetHealthCareUnitMembers v2.1
// Genererad: 2026-05-19

Logical: GetHealthCareUnitMembers
Id: gethealthcareunitmembers
Title: "GetHealthCareUnitMembers"
Description: """
  Logisk modell för tjänstekontraktet GetHealthCareUnitMembers
  (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitMembers:2).
  Representerar responsens informationsstruktur — vårdenhet med alla kopplade enheter.
"""
Characteristics: #can-be-target

* healthCareUnitMembers 0..1 BackboneElement "Information om vårdenheten och dess kopplade enheter"
    """
    Aggregerat objekt med vårdenhetens information, tillhörande vårdgivare och lista av kopplade enheter.
    Kardinalitet: Valfri.
    """
  * healthCareUnitName 1..1 string "Vårdenhetens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5]."
  * healthCareUnitPublicName 1..1 string "Publikt officiellt namn på vårdenheten."
  * healthCareUnitHsaId 1..1 string "Vårdenhetens HSA-id. Ref. hsaIdentity [R5]."
  * healthCareUnitStartDate 0..1 dateTime "Startdatum för vårdenhetens verksamhet. Ref. startDate [R5]."
  * healthCareUnitEndDate 0..1 dateTime "Slutdatum för vårdenhetens verksamhet. Ref. endDate [R5]."
  * healthCareUnitPrescriptionCode 0..* string "Vårdenhetens arbetsplatskod(-er). Ref. arbetsplatskod (unitPrescriptionCode) [R5]."
  * telephoneNumber 0..* string "Vårdenhetens publika direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5]."
  * postalAddress 0..1 BackboneElement "Vårdenhetens postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5]."
    * addressLine 1..* string "Adressrader."
  * structuredPostalAddress 0..1 BackboneElement "Vårdenhetens postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5]."
    * addressee 1..* string "Adressat."
    * street 0..1 string "Gata."
    * premisesNumber 0..1 string "Adressplatsnummer."
    * premisesLetter 0..1 string "Adressplatslittera."
    * postCode 1..1 string "Postnummer."
    * town 1..1 string "Postort."
  * postalCode 0..1 string "Vårdenhetens postnummer. Ref. postnummer (postalCode) [R5]."
  * feignedhealthCareUnit 0..1 boolean "true: om vårdenheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]."
  * archivedHealthCareUnit 0..1 boolean "true: om vårdenheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]."
  * healthCareProvider 1..1 BackboneElement "Den vårdgivare som vårdenheten tillhör"
      """
      Aggregerat objekt med information om tillhörande vårdgivare.
      Kardinalitet: Obligatorisk.
      """
    * healthCareProviderName 1..1 string "Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5]."
    * healthCareProviderPublicName 1..1 string "Publikt officiellt namn på vårdgivaren."
    * healthCareProviderHsaId 1..1 string "Vårdgivarens HSA-id. Ref. hsaIdentity [R5]."
    * healthCareProviderOrgNo 1..1 string "Vårdgivarens organisationsnummer."
    * healthCareProviderStartDate 0..1 dateTime "Startdatum för Vårdgivarens verksamhet. Ref. startDate [R5]."
    * healthCareProviderEndDate 0..1 dateTime "Slutdatum för Vårdgivarens verksamhet. Ref. endDate [R5]."
    * healthCareProviderPrescriptionCode 0..* string "Vårdgivarens arbetsplatskod(-er). Ref. arbetsplatskod (unitPrescriptionCode) [R5]."
    * telephoneNumber 0..* string "Vårdgivarens publika direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5]."
    * postalAddress 0..1 BackboneElement "Vårdgivarens postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5]."
      * addressLine 1..* string "Adressrader."
    * structuredPostalAddress 0..1 BackboneElement "Vårdgivarens postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5]."
      * addressee 1..* string "Adressat."
      * street 0..1 string "Gata."
      * premisesNumber 0..1 string "Adressplatsnummer."
      * premisesLetter 0..1 string "Adressplatslittera."
      * postCode 1..1 string "Postnummer."
      * town 1..1 string "Postort."
    * postalCode 0..1 string "Vårdgivarens postnummer. Ref. postnummer (postalCode) [R5]."
    * feignedHealthCareProvider 0..1 boolean "true: om Vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]."
    * archivedHealthCareProvider 0..1 boolean "true: om Vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]."
  * healthCareUnitMember 0..* BackboneElement "Information om en kopplad enhet"
      """
      Lista av kopplade enheter (mottagningar, avdelningar) som ingår i vårdenheten.
      Kardinalitet: Valfri, lista.
      """
    * healthCareUnitMemberName 1..1 string "Den kopplade enhetens namn. Ref. organisationsnamn (o), enhetsnamn (ou) resp. objektnamn (cn) [R5]."
    * healthCareUnitMemberPublicName 1..1 string "Publikt officiellt namn på den kopplade enheten."
    * healthCareUnitMemberHsaId 1..1 string "Den kopplade enhetens HSA-id. Ref. hsaIdentity [R5]."
    * healthCareUnitMemberStartDate 0..1 dateTime "Startdatum för kopplade enhetens verksamhet. Ref. startDate [R5]."
    * healthCareUnitMemberEndDate 0..1 dateTime "Slutdatum för kopplade enhetens verksamhet. Ref. endDate [R5]."
    * healthCareUnitMemberPrescriptionCode 0..* string "Den kopplade enhetens arbetsplatskod(-er). Ref. arbetsplatskod (unitPrescriptionCode) [R5]."
    * healthCareUnitMemberTelephoneNumber 0..* string "Den kopplade enhetens publika direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5]."
    * healthCareUnitMemberPostalAddress 0..1 BackboneElement "Den kopplade enhetens postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5]."
      * addressLine 1..* string "Adressrader."
    * healthCareUnitMemberStructuredPostalAddress 0..1 BackboneElement "Den kopplade enhetens postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5]."
      * addressee 1..* string "Adressat."
      * street 0..1 string "Gata."
      * premisesNumber 0..1 string "Adressplatsnummer."
      * premisesLetter 0..1 string "Adressplatslittera."
      * postCode 1..1 string "Postnummer."
      * town 1..1 string "Postort."
    * healthCareUnitMemberPostalCode 0..1 string "Den kopplade enhetens postnummer. Ref. postnummer (postalCode) [R5]."
    * feignedHealthCareUnitMember 0..1 boolean "true: om enheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]."
    * archivedHealthCareUnitMember 0..1 boolean "true: om enheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]."
