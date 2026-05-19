// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: DeleteLaboratoryReport v1.0
// Genererad: 2026-05-19

Logical: DeleteLaboratoryReportRequest
Id: deletelaboratoryreport-request
Title: "DeleteLaboratoryReport — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet DeleteLaboratoryReport
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteLaboratoryReport:1).
  Raderar information som tidigare registrerats via ProcessLaboratoryReport.
"""
Characteristics: #can-be-target

* laboratoryReportId 1..1 Identifier "Svars-id för det laboratoriesvar som ska raderas"
  """
  Informationsspecifikation: Laboratoriesvar.svars-id
  Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1
  Kardinalitet: Obligatorisk.
  """

Logical: DeleteLaboratoryReportResponse
Id: deletelaboratoryreport-response
Title: "DeleteLaboratoryReport — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet DeleteLaboratoryReport
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteLaboratoryReport:1).
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
