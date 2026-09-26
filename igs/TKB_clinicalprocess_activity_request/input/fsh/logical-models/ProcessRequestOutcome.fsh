// Genererad från TKB clinicalprocess:activity:request v2.2
// Kontrakt: ProcessRequestOutcome v2.2
// Genererad: 2026-09-26

Logical: ProcessRequestOutcome
Id: processrequestoutcome
Title: "ProcessRequestOutcome — Remissvar (begäran)"
Description: """
  Logisk modell för begäran i ProcessRequestOutcome (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestOutcomeResponder:2, element requestOutcome av typen RequestOutcomeType samt valfri originalRequest). Remissbesvararen skickar delsvar, preliminärt svar eller slutsvar till remittenten. Svaret är enbart ett resultat, se ProcessResult.
"""
Characteristics: #can-be-target
* requestId 1..1 string "Remiss id" "Den ursprungliga remissens remiss-id. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken."
* requestOutcomeId 1..1 string "Svar id" "Id för remissvaret. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken."
* typeOfRequestOutcome 1..1 code "Svarstyp" "DSV delsvar, PSV preliminärt svar, SSV slutsvar."
* typeOfRequestOutcome from RequestOutcomeTypeVS (required)
* requestVersionNumber 1..1 positiveInt "Remissversionsnummer" "Remissens versionsnummer. Startar på 1 och räknas upp vid ändrad remiss, vidareskickad remiss och ändrat betalningsansvar. XSD-mönster (0*[1-9]+|[1-9])\\d*."
* requestOutcomeTime 1..1 dateTime "Svarstidpunkt" "Tidpunkt då remissbesvararen skickar svaret (ÅÅÅÅMMDDttmmss)."
* patient 1..1 BackboneElement "Patient" "Patient (SimplePatientType)."
  * personId 1..1 Identifier "Person id" "Patientens identitet. value = personidentifierare (12 tecken utan skiljetecken för personnummer, samordningsnummer och nationellt reservId); system = OID för typ av personidentifierare: 1.2.752.129.2.1.3.1 (personnummer), 1.2.752.129.2.1.3.3 (samordningsnummer), 1.2.752.74.9.1 (nationellt reservId). RIV-TA: personId.extension/root."
  * patientName 0..1 string "Namn" "Personnamn enligt formatet \"Mellannamn Efternamn, Förnamn\". Maxlängd 216 tecken. Främst för teknisk loggning och spårbarhet. RIV-TA: patient.name."
* respondingOrganisation 1..1 BackboneElement "Organisatorisk enhet" "Enheten som producerat svaret. Kan skilja sig från den remissmottagande enhet remittenten angav."
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
* recipient 1..1 BackboneElement "Mottagare" "Remissvarsmottagande enhet som svaret adresseras till."
  * organisation 1..1 BackboneElement "Organisatorisk enhet" "Mottagande enhet; HSA-id används som logisk adress."
    * careUnitId 1..1 Identifier "Enhet id" "HSA-id för enheten. Maxlängd 64 tecken."
* outcome 1..1 BackboneElement "Kliniskt innehåll" "Remissvarets kliniska innehåll (OutcomeType)."
  * outcomeText 1..1 string "Svarstext" "Remissvarets text. Maxlängd 8192 tecken."
  * condition 0..* BackboneElement "Kliniskt tillstånd" "Kliniskt tillstånd (ConditionType). Antingen text eller kod, inte båda."
    * obeys activity-request-condition-code-or-text
    * conditionText 0..1 string "Kliniskt tillstånd beskrivning" "Diagnosbeskrivning i fritext. Maxlängd 8192 tecken. RIV-TA: condition.text."
    * conditionCode 0..1 CodeableConcept "Kliniskt tillståndskod" "Kod enligt ICD-10-SE (codeSystem 1.2.752.116.1.1.1). RIV-TA: condition.code."
  * accomplishedActivity 0..* BackboneElement "Utförd åtgärd" "Utförd åtgärd (ActivityType). Antingen text eller kod, inte båda."
    * obeys activity-request-activity-code-or-text
    * activityId 0..1 string "Åtgärd id" "Unikt id i form av löpnummer för åtgärden. RIV-TA: id."
    * activityText 0..1 string "Åtgärd beskrivning" "Fritext. Maxlängd 8192 tecken. RIV-TA: text."
    * activityCode 0..1 Coding "Åtgärd typ" "Åtgärd enligt kodsystem: KVÅ (1.2.752.116.1.3.2.1.4, obligatoriskt att hantera) eller Snomed CT. Okänt kodverk ger APPLICATION_ERROR. RIV-TA: code.code/codeSystem."
* attachment 0..* BackboneElement "Bilaga" "Bilaga (MultimediaType) i något av de tillåtna formaten. Totala meddelandestorleken får inte överstiga 10 MB."
  * attachmentId 0..1 string "Bilaga id" "Identitet på bilagan, format requestId#löpnummer. Obligatoriskt för inbäddade bilagor. Maxlängd 256 tecken. RIV-TA: attachment.id."
  * mediaType 1..1 CodeableConcept "Multimediatyp" "Filformat enligt urval_mediatyper_elektronisk_remiss (codeSystem 1.2.752.129.5.1.59): pdf, jpeg, png, html, txt, gif, bmp."
  * attachmentValue 0..1 base64Binary "Binärdata" "Inbäddad bilaga kodad enligt base64. Obligatoriskt när referens inte används. RIV-TA: attachment.value."
  * reference 0..0 uri "Referens" "URL för refererad bilaga. Används inte i denna version."
  * description 0..1 string "Beskrivning" "Beskrivning av bilaga. Maxlängd 256 tecken."
* originalRequest 0..1 ProcessRequest "Originalremiss" "Den ursprungliga remissen (RequestType), på nivå med requestOutcome i ProcessRequestOutcomeType."
