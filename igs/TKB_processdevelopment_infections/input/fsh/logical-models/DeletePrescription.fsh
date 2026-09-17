// Genererad från TKB processdevelopment:infections v1.0.2
// Kontrakt: DeletePrescription v1.0
// Genererad: 2026-09-17

Logical: DeletePrescription
Id: deleteprescription
Title: "DeletePrescription"
Description: """
  Logisk modell för tjänstekontraktet DeletePrescription
  (RIV-TA processdevelopment:infections). Raderar information om en
  ordination som tidigare registrerats via ProcessPrescriptionReason
  (ordinationsorsaken för ordinationen tas inte bort). Representerar
  responsens informationsstruktur.

  Request innehåller endast två filterfält (logicalAddress, prescriptionId)
  och dokumenteras i sin helhet i avsnitt 7 istället för som en separat
  logisk modell.
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Resultatkod"
* resultCode from ResultCodeVS (required)
* comment 0..1 string "Kommentar"
    """
    Beskrivning av fel som uppstått alternativt information om genomförd
    radering.
    """
