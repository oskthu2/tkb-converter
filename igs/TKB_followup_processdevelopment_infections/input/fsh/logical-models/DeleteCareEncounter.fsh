// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: DeleteCareEncounter v1.0
// Genererad: 2026-05-19

Logical: DeleteCareEncounterRequest
Id: deletecareencounter-request
Title: "DeleteCareEncounter — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet DeleteCareEncounter
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteCareEncounter:1).
  Raderar information som tidigare registrerats via ProcessCareEncounter.
"""
Characteristics: #can-be-target

* careEncounterId 1..1 Identifier "careEncounterId för den vårdkontakt som ska raderas"
  """
  Root: Nationell OID för lokala id:n: 1.2.752.129.2.1.2.1
  Extension: HSA-id för det system inom vilket careEncounterId är unikt + ":" + ID.
  Kardinalitet: Obligatorisk.
  """

Logical: DeleteCareEncounterResponse
Id: deletecareencounter-response
Title: "DeleteCareEncounter — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet DeleteCareEncounter
  (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteCareEncounter:1).
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
