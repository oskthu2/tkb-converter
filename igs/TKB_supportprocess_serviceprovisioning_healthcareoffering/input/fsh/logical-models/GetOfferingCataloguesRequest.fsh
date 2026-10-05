// Genererad från XSD för supportprocess.serviceprovisioning.healthcareoffering v3.0.0 (Genererad ur scheman i riv.supportprocess.serviceprovisioning.healthcareoffering, tagg 3.0 (commit 0e5b32c68d33); scripts/xsd_to_ig.py)
// Kontrakt: GetOfferingCatalogues v2.0
// Genererad: 2026-09-26

Logical: GetOfferingCataloguesRequest
Id: getofferingcatalogues-request
Title: "GetOfferingCatalogues — Request"
Description: """
  Logisk modell för begäran i GetOfferingCatalogues
  (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetOfferingCataloguesResponder:2, GetOfferingCataloguesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* ^version = "2.0"
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The organisation number of the careservice provider"
* providingOrganization 0..1 BackboneElement "providingOrganization" "providingOrganization"
  * providingOrganizationId 0..* BackboneElement "providingOrganizationId" "providingOrganizationId"
    * root 1..1 string "root" "root"
    * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
  * management 0..* BackboneElement "management" "management"
    * cvCode 1..1 string "cvCode" "cvCode Heter code i schemat."
    * codeSystem 1..1 string "codeSystem" "codeSystem"
    * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
    * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
    * displayName 0..1 string "displayName" "displayName"
    * originalText 0..1 string "originalText" "originalText"
  * publicProvider 0..1 boolean "publicProvider" "publicProvider"
