// Skriven för hand ur DeviceObservationConsumer.xsd och DeviceObservationConsumerInteraction_1.0_RIVTABP20.wsdl (riv.ihe.pcd.dec, tagg 1.0.1, commit 597260578dc2)
// Kontrakt: DeviceObservationConsumer v1.0
// Schemat har bara strängelement; HL7 v2.6-meddelandets segment beskrivs i TKB avsnitt 6.1.2 (IG-avsnitt 7.1.2).

Logical: DeviceObservationConsumerRequest
Id: deviceobservationconsumer-request
Title: "DeviceObservationConsumer — Request"
Description: """
  Logisk modell för begäran i DeviceObservationConsumer
  (urn:ihe:pcd:dec:2010, CommunicatePCDData), inklusive SOAP-huvud enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud wsa:To (WS-Addressing). Tjänstekonsumentens (Device Observation Consumer) logiska adress, se TKB avsnitt 3.2."
* communicatePCDData 1..1 string "CommunicatePCDData" "HL7 v2.6-meddelande ORU^R01^ORU_R01 i ER7-format enligt IHE PCD-01 och Continua Design Guidelines (H.812), med de förtydliganden för segmenten MSH, PID, OBR och OBX som TKB:n anger. Reserverade XML-tecken ska ersättas med entiteter."
