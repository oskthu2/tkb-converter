// Genererad från TKB clinicalprocess:healthcond:rheuma v1.0
// Kontrakt: GetRheumatoidArthritisData v1.0
// Genererad: 2026-09-26

Logical: GetRheumatoidArthritisDataRequest
Id: getrheumatoidarthritisdata-request
Title: "GetRheumatoidArthritisData — Request"
Description: """
  Logisk modell för begäran i GetRheumatoidArthritisData
  (RIV-TA urn:riv:clinicalprocess:healthcond:rheuma:GetRheumatoidArthritisDataResponder:1, GetRheumatoidArthritisDataType).
"""
Characteristics: #can-be-target
* careUnitHSAId 0..* Identifier "PDL-enhet" "Filtrering på PDL-enhet, motsvarar healthcareProfessionalCareUnitHSAId i svaret."
* patientId 1..1 Identifier "Patient-id" "Patientens identifierare. value = id (12 tecken utan avskiljare); system = OID för typ av identifierare: 1.2.752.129.2.1.3.1 (personnummer), 1.2.752.129.2.1.3.3 (samordningsnummer) eller lokalt reservnummer, t.ex. SLL 1.2.752.97.3.1.3."
* timePeriod 0..1 Period "Tidsintervall" "Endast svar där authorTime eller signatureTime ligger helt eller delvis inom intervallet returneras. start och end anges båda (ÅÅÅÅMMDD). TKB-tabellen kallar fältet datePeriod."
* sourceSystemHSAId 0..1 Identifier "Källsystem" "Begränsar sökningen till dokument skapade i angivet system. Måste överensstämma med logicalAddress i anropets tekniska kuvertering."
* careContactId 0..* string "Vård- och omsorgskontakt" "Begränsar sökningen till angivna vård- och omsorgskontakter."
