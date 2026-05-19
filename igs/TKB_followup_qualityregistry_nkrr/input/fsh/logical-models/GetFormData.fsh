// Genererad från TKB followup:qualityregistry:nkrr v1.2.2
// Kontrakt: GetFormData v1.2
// Genererad: 2026-05-19

Logical: GetFormData
Id: getformdata
Title: "GetFormData"
Description: """
  Logisk modell för tjänstekontraktet GetFormData
  (RIV-TA urn:riv:followup:qualityregistry:nkrr:GetFormData:1).
  Representerar responsens informationsstruktur.
  GetFormData hämtar underlag för ett enskilt kvalitetsregisterformulär.
"""
Characteristics: #can-be-target

* formElement 0..* BackboneElement "Svaret består av en lista med formulärets enskilda element"
    """
    Svaret består av en lista med formulärets enskilda element.
    Om ett givet formulär innehåller N frågor kan en konsument förvänta sig M answer-element
    där M ≤ N (R1 – Flexibel ifyllnadsgrad).
    """
* formElement.formID 1..1 string "Identifierare av mallen"
    """
    Identifierare av mallen.
    """
* formElement.query 0..1 string "Identitet för fråga"
    """
    Identitet för fråga.
    """
* formElement.answer 0..* BackboneElement "Svar på fråga"
    """
    Svar på fråga.
    """
* formElement.answer.value 1..1 string "Svar på fråga"
    """
    Svar på fråga.
    """
* formElement.answer.type 1..1 string "Typning av svaret"
    """
    Typning av svaret.
    """
* formElement.sourceData 0..* BackboneElement "Beskrivning på hur svaret framställts"
    """
    Beskrivning på hur svaret framställts. Kan visas för slutanvändare i konsumentapplikationen.
    """
* formElement.sourceData.name 1..1 string "Domän + kontraktsnamn för grunddata"
    """
    Domän + kontraktsnamn för grunddata.
    """
* formElement.sourceData.entry 1..* BackboneElement "Del av underlaget för svaret"
    """
    Del av underlaget för svaret.
    """
* formElement.sourceData.entry.name 1..1 string "Namn på del av underlaget"
    """
    Namn på del av underlaget. Exempelvis enhet, födelseår eller kön.
    """
* formElement.sourceData.entry.value 1..1 string "Värde för del av underlaget"
    """
    Värde för del av underlaget.
    """
* resultCode 1..1 CodeableConcept "Resultatkod"
    """
    OK = Hämtningen av underlag utfört utan fel.
    ERROR = Fel har uppstått. Felet beskrivs i elementet resultText.
    INFO = Information finns om hämtningen. Informationen beskrivs i elementet resultText.
    """
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "Beskrivning av fel eller information om genomförd registrering"
    """
    Beskrivning av fel som uppstått alternativt information om genomförd registrering.
    """
* logId 0..1 string "Identifierare av loggpost hos tjänsteproducenten"
    """
    Identifierare av loggpost hos tjänsteproducenten, t.ex. ett UUID som kan användas vid felsökning.
    """
