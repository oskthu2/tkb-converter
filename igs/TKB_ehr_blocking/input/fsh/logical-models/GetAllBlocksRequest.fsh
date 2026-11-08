// Elementen genereras ur GetAllBlocksResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:blocking v3.2.2
// Kontrakt: GetAllBlocks v2.0 — Request-parametrar
// Genererad: 2026-04-09

Logical: GetAllBlocksRequest
Id: getallblocks-request
Title: "GetAllBlocks — Request"
Description: "Logisk modell för requestparametrar i GetAllBlocks."
Characteristics: #can-be-target

* ^version = "2.0"
* careProviderIds 0..* string "HSA-id på de vårdgivare vars spärrar skall hämtas. Om utelämnat hämtas alla spärrar oavsett organisation."
* createdOnOrAfter 0..1 dateTime "Startdatum — returnerar endast spärrar lagrade/förändrade på eller efter detta datum."

* insert GetAllBlocksRequestFieldDescriptions
