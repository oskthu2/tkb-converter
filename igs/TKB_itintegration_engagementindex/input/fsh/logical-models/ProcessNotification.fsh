// Elementen genereras ur ProcessNotificationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB itintegration:engagementindex v1.0.9
// Kontrakt: ProcessNotification v1.0
// Genererad: 2026-03-19

Logical: ProcessNotification
Id: processnotification
Title: "ProcessNotification"
Description: """
  Logisk modell för tjänstekontraktet ProcessNotification
  (RIV-TA urn:riv:itintegration:engagementindex:ProcessNotification:1).
  Representerar responsens informationsstruktur — ett statusbesked
  på att notifieringen mottagits och behandlats.

  OBS: ProcessNotification har en ovanlig dubbel roll i arkitekturen:
  - Engagemangsindex agerar PRODUCENT för att TA EMOT notifieringar från andra index.
  - Engagemangsindex agerar KONSUMENT för att SKICKA notifieringar till andra index.
  Fr.o.m. version 1.0.9 agerar nationellt engagemangsindex ENBART som producent
  (tar emot notifieringar från lokala index). Nationellt EI skickar inte längre
  ProcessNotification till lokala index eller verksamhetssystem.
  Undantag: Formulärtjänsten och Tidbokning/Kallelser har tidsbegränsat undantag.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessNotificationFieldDescriptions
