// Skriven för hand ur DeviceObservationConsumer.xsd och DeviceObservationConsumerInteraction_1.0_RIVTABP20.wsdl (riv.ihe.pcd.dec, tagg 1.0.1, commit 597260578dc2)
// Kontrakt: DeviceObservationConsumer v1.0

Logical: DeviceObservationConsumer
Id: deviceobservationconsumer
Title: "DeviceObservationConsumer — Response"
Description: """
  Logisk modell för svaret i DeviceObservationConsumer
  (urn:ihe:pcd:dec:2010, CommunicatePCDDataResponse).
"""
Characteristics: #can-be-target
* ^version = "1.0"
* communicatePCDDataResponse 1..1 string "CommunicatePCDDataResponse" "HL7 v2.6-kvittens (ACK) i ER7-format enligt Continua Design Guidelines (H.812)."
