// Elementen genereras ur UpdateResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB itintegration:engagementindex v1.0.9
// Kontrakt: Update v1.0 — Request
// Genererad: 2026-03-19

Logical: UpdateRequest
Id: update-request
Title: "Update — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet Update
  (RIV-TA urn:riv:itintegration:engagementindex:Update:1).
  Kontraktet används av källsystem för att skapa, uppdatera och radera
  indexposter i ett engagemangsindex. Flera engagemangstransaktioner
  kan paketeras i ett och samma anrop (max 1000 poster i nationell instans).

  Alla fält i EngagementType-typen ingår i modellen, inklusive fält som
  sätts av engagemangsindex och INTE ska populeras av konsumenten
  (creationTime, updateTime, owner). Se respektive fältbeskrivning.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* engagementTransaction 1..* Base "EngagementTransactionType" "engagementTransaction"
* engagementTransaction.deleteFlag 1..1 boolean "deleteFlag" "deleteFlag"
* engagementTransaction.engagement 1..1 Base "EngagementType" "engagement"
* engagementTransaction.engagement.registeredResidentIdentification 1..1 string "registeredResidentIdentification" "registeredResidentIdentification"
* engagementTransaction.engagement.registeredResidentIdentification only RegisteredResidentIdentificationType
* engagementTransaction.engagement.serviceDomain 1..1 uri "serviceDomain" "serviceDomain"
* engagementTransaction.engagement.categorization 1..1 string "categorization" "categorization"
* engagementTransaction.engagement.logicalAddress 1..1 string "logicalAddress" "logicalAddress"
* engagementTransaction.engagement.businessObjectInstanceIdentifier 1..1 string "businessObjectInstanceIdentifier" "businessObjectInstanceIdentifier"
* engagementTransaction.engagement.clinicalProcessInterestId 1..1 string "clinicalProcessInterestId" "clinicalProcessInterestId"
* engagementTransaction.engagement.mostRecentContent 0..1 string "mostRecentContent" "mostRecentContent"
* engagementTransaction.engagement.mostRecentContent only TS
* engagementTransaction.engagement.sourceSystem 1..1 string "sourceSystem" "sourceSystem"
* engagementTransaction.engagement.creationTime 0..1 string "creationTime" "creationTime"
* engagementTransaction.engagement.creationTime only TS
* engagementTransaction.engagement.updateTime 0..1 string "updateTime" "updateTime"
* engagementTransaction.engagement.updateTime only TS
* engagementTransaction.engagement.dataController 1..1 string "dataController" "dataController"
* engagementTransaction.engagement.owner 0..1 string "owner" "owner"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UpdateRequestFieldDescriptions
