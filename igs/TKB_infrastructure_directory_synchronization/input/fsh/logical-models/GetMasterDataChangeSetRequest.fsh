// Genererad från XSD för infrastructure.directory.synchronization v1.0_RC3 (Genererad ur scheman i riv.infrastructure.directory.synchronization, tagg 1.0_RC3; scripts/xsd_to_ig.py)
// Kontrakt: GetMasterDataChangeSet v1.0
// Genererad: 2026-09-26

Logical: GetMasterDataChangeSetRequest
Id: getmasterdatachangeset-request
Title: "GetMasterDataChangeSet — Request"
Description: """
  Logisk modell för begäran i GetMasterDataChangeSet
  (urn:riv:infrastructure:directory:synchronization:GetMasterDataChangeSetResponder:1, GetMasterDataChangeSetType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "1.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The organisation number of the careservice provider"
* masterDataEntity 1..1 BackboneElement "masterDataEntity" "masterDataEntity"
  * cvCode 1..1 string "cvCode" "cvCode Heter code i schemat."
  * codeSystem 1..1 string "codeSystem" "codeSystem"
  * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
  * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
  * displayName 0..1 string "displayName" "displayName"
  * originalText 0..1 string "originalText" "originalText"
* category 0..1 code "category" "category"
* category from CategoryVS (required)
* timePeriod 0..1 BackboneElement "timePeriod" "Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss"
  * start 0..1 string "start" "start"
  * end 0..1 string "end" "end"
