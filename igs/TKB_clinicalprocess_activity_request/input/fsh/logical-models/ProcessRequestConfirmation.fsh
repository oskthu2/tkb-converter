// Genererad från TKB clinicalprocess:activity:request v2.2
// Kontrakt: ProcessRequestConfirmation v2.2
// Genererad: 2026-09-26

Invariant: processrequestconfirmation-forwarding-vid
Description: "forwardingRecipient ska anges om och endast om typeOfRequestConfirmation = VID"
Expression: "forwardingRecipient.exists() = (typeOfRequestConfirmation = 'VID')"
Severity: #error

Logical: ProcessRequestConfirmation
Id: processrequestconfirmation
Title: "ProcessRequestConfirmation — Remissbekräftelse (begäran)"
Description: """
  Logisk modell för begäran i ProcessRequestConfirmation (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestConfirmationResponder:2, element requestConfirmation av typen RequestConfirmationType). Remissmottagaren skickar bekräftelse, besked om vidareskickning, kompletteringsbegäran, avbrott eller avvisning till remittenten. Svaret är enbart ett resultat, se ProcessResult.
"""
Characteristics: #can-be-target
* obeys processrequestconfirmation-forwarding-vid
* requestId 1..1 string "Remiss id" "Den ursprungliga remissens remiss-id. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken."
* requestConfirmationId 1..1 string "Remissbekräftelse id" "Unik identifierare för remissbekräftelsen. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken."
* typeOfRequestConfirmation 1..1 code "Typ av remissbekräftelse" "BEK bekräftelse, VID besked om vidareskickning, KOM kompletteringsbegäran, AVB avbruten remiss, AVV avvisad remiss."
* typeOfRequestConfirmation from RequestConfirmationTypeVS (required)
* requestVersionNumber 1..1 positiveInt "Remissversionsnummer" "Remissens versionsnummer. Startar på 1 och räknas upp vid ändrad remiss, vidareskickad remiss och ändrat betalningsansvar. XSD-mönster (0*[1-9]+|[1-9])\\d*."
* requestConfirmationTime 1..1 dateTime "Remissbekräftelse-tidpunkt" "Tidpunkt då remissbekräftelsen skapades (ÅÅÅÅMMDDttmmss)."
* patient 1..1 BackboneElement "Patient" "Patient (SimplePatientType)."
  * personId 1..1 Identifier "Person id" "Patientens identitet. value = personidentifierare (12 tecken utan skiljetecken för personnummer, samordningsnummer och nationellt reservId); system = OID för typ av personidentifierare: 1.2.752.129.2.1.3.1 (personnummer), 1.2.752.129.2.1.3.3 (samordningsnummer), 1.2.752.74.9.1 (nationellt reservId). RIV-TA: personId.extension/root."
  * patientName 0..1 string "Namn" "Personnamn enligt formatet \"Mellannamn Efternamn, Förnamn\". Maxlängd 216 tecken. Främst för teknisk loggning och spårbarhet. RIV-TA: patient.name."
* confirmingOrganisation 1..1 BackboneElement "Organisatorisk enhet" "Den faktiska enhet som skickar bekräftelsen. Kan skilja sig från ansvarig vårdenhet enligt PDL."
  * careUnitId 1..1 Identifier "Enhet id" "HSA-id för enheten. Maxlängd 64 tecken."
  * careUnitName 0..1 string "Enhet namn" "Namn på enhet. Maxlängd 64 tecken."
  * careUnitTelephone 0..1 string "Enhet telefon" "Telefon till enhet."
  * careUnitEmail 0..1 string "Enhet epost" "E-post till enhet."
  * careUnitAddress 0..1 string "Enhet adress" "Adress till enhet."
  * careUnitLocation 0..1 string "Enhet plats" "Namnet på plats eller ort för enhetens fysiska placering."
* author 1..1 BackboneElement "Remissbesvarare" "Remissbesvarare (person och organisation)."
  * healthcareProfessional 1..1 BackboneElement "Hälso- och sjukvårdspersonal" "Hälso- och sjukvårdspersonal (HealthcareProfessionalType)."
    * healthcareProfessionalId 0..1 Identifier "Personal id" "HSA-id för personen. Maxlängd 64 tecken. RIV-TA: healthcareProfessional.id."
    * healthcareProfessionalName 1..1 string "Personal namn" "Namn, valfri formatering. Maxlängd 64 tecken. RIV-TA: healthcareProfessional.name."
  * typeOfHealthcareProfessional 0..1 CodeableConcept "Typ av hälso- och sjukvårdspersonal" "Yrkestitel från Snomed CT: urval_legitimerade_yrken (codeSystem 1.2.752.129.5.1.70) eller yrken_i_halso-_och_sjukvarden_ej_legitimerade (codeSystem 1.2.752.129.7.1.5). Urvalen kan kompletteras utan ny kontraktsversion."
  * healthcareProfessionalOrganisation 1..1 BackboneElement "Organisatorisk enhet" "Enhet (jmf. PDL) som ansvarar för informationen."
    * careUnitId 1..1 Identifier "Enhet id" "HSA-id för enheten. Maxlängd 64 tecken."
* recipient 1..1 BackboneElement "Mottagare" "Remitterande enhet som bekräftelsen adresseras till."
  * organisation 1..1 BackboneElement "Organisatorisk enhet" "Mottagande enhet; HSA-id används som logisk adress."
    * careUnitId 1..1 Identifier "Enhet id" "HSA-id för enheten. Maxlängd 64 tecken."
* forwardingRecipient 0..1 BackboneElement "Mottagare vidarebefordran" "Ny mottagare av den vidareskickade remissen. Obligatorisk när typeOfRequestConfirmation = VID, annars ska den inte anges."
  * organisation 1..1 BackboneElement "Organisatorisk enhet" "Mottagande enhet; HSA-id används som logisk adress."
    * careUnitId 1..1 Identifier "Enhet id" "HSA-id för enheten. Maxlängd 64 tecken."
* outcome 1..1 BackboneElement "Bekräftelsemeddelande" "Bekräftelsemeddelande (RequestReceivedConfirmationOutcomeType)."
  * outcomeText 1..1 string "Svarstext" "Meddelande till remissens avsändare. Maxlängd 8192 tecken."
