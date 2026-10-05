// Genererad från XSD för supportprocess.serviceprovisioning.healthcareoffering v3.0.0 (Genererad ur scheman i riv.supportprocess.serviceprovisioning.healthcareoffering, tagg 3.0 (commit 0e5b32c68d33); scripts/xsd_to_ig.py)
// Kontrakt: GetOfferingCatalogues v2.0
// Genererad: 2026-09-26

Logical: GetOfferingCatalogues
Id: getofferingcatalogues
Title: "GetOfferingCatalogues — Response"
Description: """
  Logisk modell för svaret i GetOfferingCatalogues
  (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetOfferingCataloguesResponder:2, GetOfferingCataloguesResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.0"
* offeringCatalogue 0..* BackboneElement "offeringCatalogue" "offeringCatalogue"
  * providingOrganization 1..* BackboneElement "providingOrganization" "providingOrganization"
    * providingOrganizationId 1..1 BackboneElement "providingOrganizationId" "providingOrganizationId Heter id i schemat."
      * root 1..1 string "root" "root"
      * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
    * providingOrganizationName 1..1 string "providingOrganizationName" "providingOrganizationName Heter name i schemat."
    * management 1..1 BackboneElement "management" "management"
      * cvCode 1..1 string "cvCode" "cvCode Heter code i schemat."
      * codeSystem 1..1 string "codeSystem" "codeSystem"
      * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
      * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
      * displayName 0..1 string "displayName" "displayName"
      * originalText 0..1 string "originalText" "originalText"
    * publicProvider 1..1 boolean "publicProvider" "publicProvider"
    * description 0..* BackboneElement "description" "description"
      * descriptionText 1..1 string "descriptionText" "descriptionText Heter text i schemat."
      * descriptionLanguage 0..1 BackboneElement "descriptionLanguage" "descriptionLanguage Heter language i schemat."
        * cvCode 1..1 string "cvCode" "cvCode Heter code i schemat."
        * codeSystem 1..1 string "codeSystem" "codeSystem"
        * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
        * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
        * displayName 0..1 string "displayName" "displayName"
        * originalText 0..1 string "originalText" "originalText"
      * role 0..* BackboneElement "role" "role"
        * cvCode 1..1 string "cvCode" "cvCode Heter code i schemat."
        * codeSystem 1..1 string "codeSystem" "codeSystem"
        * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
        * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
        * displayName 0..1 string "displayName" "displayName"
        * originalText 0..1 string "originalText" "originalText"
  * interaction 1..1 BackboneElement "interaction" "interaction"
    * logicalAddress 1..1 string "logicalAddress" "logicalAddress"
    * interactionName 1..1 uri "interactionName" "interactionName Heter name i schemat."
    * majorVersion 1..1 integer "majorVersion" "majorVersion"
    * minorVersion 0..1 integer "minorVersion" "minorVersion"
    * rivtaVersion 1..1 code "rivtaVersion" "rivtaVersion"
    * rivtaVersion from RIVTAVersionVS (required)
