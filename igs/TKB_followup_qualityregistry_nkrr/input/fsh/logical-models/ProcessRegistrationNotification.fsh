// Genererad från TKB followup:qualityregistry:nkrr v1.2.2
// Kontrakt: ProcessRegistrationNotification v1.0
// Genererad: 2026-05-19

Logical: ProcessRegistrationNotification
Id: processregistrationnotification
Title: "ProcessRegistrationNotification"
Description: """
  Logisk modell för tjänstekontraktet ProcessRegistrationNotification
  (RIV-TA urn:riv:followup:qualityregistry:nkrr:ProcessRegistrationNotification:1).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* referenceId 0..1 string "Identifierare som kan lämnas som referens"
    """
    Identifierare som kan lämnas som referens.
    Ska specificeras och hanteras enligt den informationsspecifikation som kvalitetsregistret
    tillhandahåller för att beskriva hanteringen av notifiering till registret.
    """
* result 1..1 BackboneElement "Information om mottagningen av notifieringen lyckades"
    """
    Information om mottagningen av notifieringen lyckades.
    """
* result.resultCode 1..1 CodeableConcept "Anger resultatet av notifieringen"
    """
    Anger resultatet av notifieringen. Kan endast vara OK, INFO eller ERROR.
    """
* result.resultCode from ResultCodeVS (required)
* result.resultText 0..1 string "En beskrivande text som kan anges vid INFO eller ERROR"
    """
    En beskrivande text som kan anges vid INFO eller ERROR.
    """
