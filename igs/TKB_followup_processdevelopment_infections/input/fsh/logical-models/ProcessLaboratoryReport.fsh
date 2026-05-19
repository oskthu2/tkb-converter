// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: ProcessLaboratoryReport v1.0
// Genererad: 2026-05-19

Logical: ProcessLaboratoryReportRequest
Id: processlaboratoryreport-request
Title: "ProcessLaboratoryReport — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet ProcessLaboratoryReport
  (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessLaboratoryReport:1).
  Registrerar ett nytt laboratoriesvar med tillhörande information om patient,
  beställande enhet, provtagningstidpunkt och agensförekomst.
"""
Characteristics: #can-be-target

* orgUnitId 1..1 Identifier "Beställande enhet (HSA-id)"
  """
  Informationsspecifikation: Laboratoriesvar.har beställande.Enhet.enhets-id
  OID för HSA-id: 1.2.752.129.2.1.4.1
  Kardinalitet: Obligatorisk.
  """
* reportId 1..1 Identifier "Laboratoriesvars-id"
  """
  Informationsspecifikation: Laboratoriesvar.laboratoriesvars-id
  Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1
  Kardinalitet: Obligatorisk.
  """
* testTime 1..1 string "Provtagningstidpunkt (YYYYMMDDhhmmss)"
  """
  Informationsspecifikation: Provtagning.provtagningstidpunkt
  Kardinalitet: Obligatorisk.
  """
* observationTime 1..1 string "Observationstidpunkt (YYYYMMDDhhmmss)"
  """
  Informationsspecifikation: Mikrobiologiskt fynd.observationstidpunkt
  Kardinalitet: Obligatorisk.
  """
* findingCode 1..1 CodeableConcept "Agenskod för mikrobiologiskt fynd"
  """
  Informationsspecifikation: Mikrobiologiskt fynd.agenskod
  Kodverk: NPU
  Möjliga koder: ATCC09689 (Clostridium difficile)
  Kardinalitet: Obligatorisk.
  """
* patient 1..1 BackboneElement "Patientuppgifter"
  """
  Informationsspecifikation: Patient
  Kardinalitet: Obligatorisk.
  """
* patient.id 1..1 Identifier "Patientens identifierare"
* patient.birthTime 1..1 date "Patientens födelseår"
* patient.gender 1..1 CodeableConcept "Patientens kön"
  """
  Kodverk KV Kön, OID: 1.2.752.129.2.2.1.1
  """

Logical: ProcessLaboratoryReportResponse
Id: processlaboratoryreport-response
Title: "ProcessLaboratoryReport — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet ProcessLaboratoryReport
  (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessLaboratoryReport:1).
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
