// Elementen genereras ur FindContentResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB itintegration:engagementindex v1.0.9
// Kontrakt: FindContent v1.0 — Request
// Genererad: 2026-03-19

Logical: FindContentRequest
Id: findcontent-request
Title: "FindContent — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet FindContent
  (RIV-TA urn:riv:itintegration:engagementindex:FindContent:1).
  Alla angivna attribut används för exakt matchningsfiltrering av sökresultatet.
  Åtkomst till FindContent i nationell EI-instans är begränsad till aggregerande
  tjänster i den nationella aggregeringsplattformen.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* registeredResidentIdentification 1..1 string "registeredResidentIdentification" "registeredResidentIdentification"
* registeredResidentIdentification only RegisteredResidentIdentificationType
* serviceDomain 1..1 uri "serviceDomain" "serviceDomain"
* categorization 0..1 string "categorization" "categorization"
* logicalAddress 0..1 string "logicalAddress" "logicalAddress"
* businessObjectInstanceIdentifier 0..1 string "businessObjectInstanceIdentifier" "businessObjectInstanceIdentifier"
* clinicalProcessInterestId 0..1 string "clinicalProcessInterestId" "clinicalProcessInterestId"
* mostRecentContent 0..1 string "mostRecentContent" "mostRecentContent"
* mostRecentContent only TS
* sourceSystem 0..1 string "sourceSystem" "sourceSystem"
* dataController 0..1 string "dataController" "dataController"
* owner 0..1 string "owner" "owner"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert FindContentRequestFieldDescriptions
