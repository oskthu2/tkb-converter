// Genererad från informationsspecifikation crm:carelisting v1.0
// ValueSet: PersonQueueStatus
// Genererad: 2026-03-24

ValueSet: PersonQueueStatusVS
Id: personqueuestatus-vs
Title: "PersonQueueStatus — ValueSet"
Description: """
  Tillåtna värden för köstatus (queueStatus) i tjänstekontraktet GetPersonQueueStatus.
  Definierade som xs:enumeration i crm_carelisting_1_0.xsd.
"""
* ^status = #active
* include codes from system PersonQueueStatusCS
