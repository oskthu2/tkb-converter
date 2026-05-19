// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: DeletePrescriptionReason v1.0
// Genererad: 2026-05-19

Logical: DeletePrescriptionReasonRequest
Id: deleteprescriptionreason-request
Title: "DeletePrescriptionReason — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet DeletePrescriptionReason
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescriptionReason:1).
  Raderar information som tidigare registrerats via ProcessPrescriptionReason.
  Antingen activityId eller conditionId ska anges, men inte båda.
"""
Characteristics: #can-be-target

* activityId 0..1 Identifier "Aktivitets-id för den aktivitet som ska raderas (profylax)"
  """
  Anges när den ordinationsorsak som ska raderas är en aktivitet (profylax).
  Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1
  Kardinalitet: Villkorlig — antingen activityId eller conditionId ska anges.
  """
* conditionId 0..1 Identifier "Tillstånds-id för det tillstånd/diagnos som ska raderas (infektion)"
  """
  Anges när den ordinationsorsak som ska raderas är ett tillstånd (infektion).
  Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1
  Kardinalitet: Villkorlig — antingen activityId eller conditionId ska anges.
  """

Logical: DeletePrescriptionReasonResponse
Id: deleteprescriptionreason-response
Title: "DeletePrescriptionReason — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet DeletePrescriptionReason
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescriptionReason:1).
"""
Characteristics: #can-be-target

* code 1..1 string "Resultatkod: OK, ERROR eller INFO"
  """
  OK = operationen genomförd utan fel
  ERROR = Fel vid operationen
  INFO = Information finns om operationen
  Kardinalitet: Obligatorisk.
  """
* comment 0..1 string "Beskrivning av fel eller information om genomförd operation"
  """
  Kardinalitet: Valfri.
  """
