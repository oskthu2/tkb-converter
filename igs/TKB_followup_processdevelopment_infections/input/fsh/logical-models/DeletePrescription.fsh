// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: DeletePrescription v1.0
// Genererad: 2026-05-19

Logical: DeletePrescriptionRequest
Id: deleteprescription-request
Title: "DeletePrescription — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet DeletePrescription
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescription:1).
  Raderar information om en ordination som tidigare registrerats via ProcessPrescriptionReason.
  Ordinationsorsaken för ordinationen tas inte bort.
"""
Characteristics: #can-be-target

* prescriptionId 1..1 Identifier "Ordinations-id för den ordination som ska raderas"
  """
  Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1
  Kardinalitet: Obligatorisk.
  """

Logical: DeletePrescriptionResponse
Id: deleteprescription-response
Title: "DeletePrescription — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet DeletePrescription
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescription:1).
"""
Characteristics: #can-be-target

* resultCode 1..1 string "Resultatkod: OK, ERROR eller INFO"
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
