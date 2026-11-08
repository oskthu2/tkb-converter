// Elementen genereras ur GetHealthcareFacilitiesResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetHealthcareFacilities v2.0
// Genererad: 2026-09-26

Logical: GetHealthcareFacilitiesRequest
Id: gethealthcarefacilities-request
Title: "GetHealthcareFacilities — Request"
Description: """
  Logisk modell för begäran i GetHealthcareFacilities
  (urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilitiesResponder:2, GetHealthcareFacilitiesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* originalAppointmentId 0..1 string "originalAppointmentId" "originalAppointmentId"
* originalAppointmentId only uuidType
* personId 0..1 Base "PersonIdType" "personId"
* timeTypeCode 0..1 string "timeTypeCode" "timeTypeCode"
* healthcareServiceCode 0..1 string "healthcareServiceCode" "healthcareServiceCode"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHealthcareFacilitiesRequestFieldDescriptions
