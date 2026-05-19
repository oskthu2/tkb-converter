// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: ProcessPrescriptionReason v1.0
// Genererad: 2026-05-19

Logical: ProcessPrescriptionReasonRequest
Id: processprescriptionreason-request
Title: "ProcessPrescriptionReason — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet ProcessPrescriptionReason
  (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessPrescriptionReason:1).
  Registrerar en ordinationsorsak med information om patient, organisatorisk enhet,
  eventuellt aktivitet, ordination och ordinerad substans.
"""
Characteristics: #can-be-target

* prescriptionTime 0..1 string "Tidpunkt då registreringen av ordinationsorsaken gjordes (YYYYMMDDhhmmss)"
  """
  Tidpunkt i formatet YYYYMMDDhhmmss.
  I de fall en ordination finns anges här, i annat fall lämnas fältet tomt.
  Kardinalitet: Valfri.
  """
* substanceCode 1..1 CodeableConcept "Läkemedelssubstans som är del av en läkemedelsordination"
  """
  Hanterar information kring en läkemedelssubstans.
  Kodverk: ATC. OID: 1.2.752.129.2.2.3.1.1
  Kardinalitet: Obligatorisk.
  """
* prescriptionCareUnitId 1..1 Identifier "Medicinskt ansvarig för ordinationsmoment (HSA-id)"
  """
  OID för HSA-id: 1.2.752.129.2.1.4.1
  Kardinalitet: Obligatorisk.
  """
* prescriptionLocationId 0..1 Identifier "Registreringsenhet för ordinationsmoment (HSA-id)"
  """
  OID för HSA-id: 1.2.752.129.2.1.4.1
  Kardinalitet: Valfri.
  """
* prescriptionReasonCareUnitId 1..1 Identifier "Medicinskt ansvarig för ordinationsorsak (HSA-id)"
  """
  OID för HSA-id: 1.2.752.129.2.1.4.1
  Kardinalitet: Obligatorisk.
  """
* prescriptionReasonLocationId 0..1 Identifier "Registreringsenhet för ordinationsorsak (HSA-id)"
  """
  OID för HSA-id: 1.2.752.129.2.1.4.1
  Kardinalitet: Valfri.
  """
* conditionId 0..1 Identifier "Id för patientens diagnos"
  """
  Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1
  Kardinalitet: Valfri.
  """
* conditionCode 0..1 CodeableConcept "Kod och klartext för patientens diagnos"
  """
  Kodverk: SnomedCT, IV Annan, KSH97
  Kardinalitet: Valfri.
  """
* source 0..1 CodeableConcept "Kod och klartext som anger hur infektionen uppstått"
  """
  Anger om det är samhälls- eller vårdförvärvad infektion eller ej infektion (vid förebyggande profylax).
  Kodverk: IV Smittväg
  Kardinalitet: Valfri.
  """
* activityCode 1..1 CodeableConcept "Information om en aktivitet som är relevant att registrera"
  """
  Kodverk: KVÅ, SnomedCT, IV Annan
  Kardinalitet: Obligatorisk.
  """
* activityId 1..1 Identifier "Unik identifierare för aktivitet"
  """
  Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1.
  OBSERVERA: attributet har olika betydelse beroende på om mallen för Activity (profylax)
  eller Condition (infektion) används.
  Kardinalitet: Obligatorisk.
  """
* patient 1..1 BackboneElement "Patientuppgifter"
  """
  Kardinalitet: Obligatorisk.
  """
* patient.id 1..1 Identifier "Patientens identifierare"
* patient.birthTime 1..1 date "Patientens födelseår (ÅÅÅÅMMDD, ÅÅÅÅMM eller ÅÅÅÅ)"
* patient.gender 1..1 CodeableConcept "Patientens kön"
  """
  Kodverk KV Kön, OID: 1.2.752.129.2.2.1.1
  0 = not known, 1 = male, 2 = female, 9 = not applicable
  """
* prescriptionId 1..1 Identifier "Unik identifierare för ordinationen"
  """
  Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1
  Kardinalitet: Obligatorisk.
  """
* prescriptionReasonTime 0..1 string "Tidpunkt för ordinationen (YYYYMMDDhhmmss)"
  """
  Kardinalitet: Valfri.
  """

Logical: ProcessPrescriptionReasonResponse
Id: processprescriptionreason-response
Title: "ProcessPrescriptionReason — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet ProcessPrescriptionReason
  (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessPrescriptionReason:1).
"""
Characteristics: #can-be-target

* resultCode 1..1 string "Resultatkod: OK, ERROR eller INFO"
  """
  OK = operationen genomförd utan fel
  ERROR = Fel vid operationen. Felet beskrivs i elementet comment
  INFO = Information finns om operationen. Informationen beskrivs i elementet comment
  Kardinalitet: Obligatorisk.
  """
* comment 0..1 string "Beskrivning av fel eller information om genomförd operation"
  """
  Kardinalitet: Valfri.
  """
