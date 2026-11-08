// Elementen genereras ur FindContentResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB itintegration:engagementindex v1.0.9
// Kontrakt: FindContent v1.0
// Genererad: 2026-03-19

Logical: FindContent
Id: findcontent
Title: "FindContent"
Description: """
  Logisk modell för tjänstekontraktet FindContent
  (RIV-TA urn:riv:itintegration:engagementindex:FindContent:1).
  Representerar responsens informationsstruktur — en lista av engagemangsposter
  som svarar mot sökkriterierna i begäran.
  Primärt använt av aggregerande tjänster i tjänsteplattformen.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* engagement 0..* Base "EngagementType" "engagement"
* engagement.registeredResidentIdentification 1..1 string "registeredResidentIdentification" "registeredResidentIdentification"
* engagement.registeredResidentIdentification only RegisteredResidentIdentificationType
* engagement.serviceDomain 1..1 uri "serviceDomain" "serviceDomain"
* engagement.categorization 1..1 string "categorization" "categorization"
* engagement.logicalAddress 1..1 string "logicalAddress" "logicalAddress"
* engagement.businessObjectInstanceIdentifier 1..1 string "businessObjectInstanceIdentifier" "businessObjectInstanceIdentifier"
* engagement.clinicalProcessInterestId 1..1 string "clinicalProcessInterestId" "clinicalProcessInterestId"
* engagement.mostRecentContent 0..1 string "mostRecentContent" "mostRecentContent"
* engagement.mostRecentContent only TS
* engagement.sourceSystem 1..1 string "sourceSystem" "sourceSystem"
* engagement.creationTime 0..1 string "creationTime" "creationTime"
* engagement.creationTime only TS
* engagement.updateTime 0..1 string "updateTime" "updateTime"
* engagement.updateTime only TS
* engagement.dataController 1..1 string "dataController" "dataController"
* engagement.owner 0..1 string "owner" "owner"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert FindContentFieldDescriptions
