// Elementen genereras ur ProcessNotificationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB itintegration:engagementindex v1.0.9
// Kontrakt: ProcessNotification v1.0 — Request
// Genererad: 2026-03-19

Logical: ProcessNotificationRequest
Id: processnotification-request
Title: "ProcessNotification — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet ProcessNotification
  (RIV-TA urn:riv:itintegration:engagementindex:ProcessNotification:1).

  Används för konsolidering av indexinformation mellan engagemangsindexinstanser.
  Innehållet i begäran ska exakt spegla begäran i ursprunglig Update,
  med tillägg av owner, creationTime och updateTime (som INTE ingår i Update-begäran
  men är obligatoriska här).

  OBS: Ovanlig dubbel roll — engagemangsindex kan agera BÅDA producent och konsument
  för detta kontrakt. Fr.o.m. version 1.0.9 agerar nationellt EI enbart som producent
  (tar emot notifieringar). Lokala index agerar konsument och skickar till nationellt EI.

  Regel pR4: Om notifiering mottas där owner är samma som den egna instansen ska
  ingen uppdatering eller notifiering ske (för att undvika rundgång).
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
* insert ProcessNotificationRequestFieldDescriptions
