// Genererad från TKB processdevelopment:infections v1.0.2
// Kontrakt: DeleteActivity v1.0
// Genererad: 2026-09-17

Logical: DeleteActivity
Id: deleteactivity
Title: "DeleteActivity"
Description: """
  Logisk modell för tjänstekontraktet DeleteActivity
  (RIV-TA processdevelopment:infections). Raderar information som tidigare
  registrerats via ProcessActivity. Representerar responsens
  informationsstruktur.

  Request innehåller endast två filterfält (logicalAddress, activityId) och
  dokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk
  modell.
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Resultatkod"
* resultCode from ResultCodeVS (required)
* comment 0..1 string "Kommentar"
    """
    Beskrivning av fel som uppstått alternativt information om genomförd
    radering.
    """
