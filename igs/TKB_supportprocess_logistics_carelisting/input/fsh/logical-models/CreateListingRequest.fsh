// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: CreateListing v2.0
// Genererad: 2026-09-26

Logical: CreateListingRequest
Id: createlisting-request
Title: "CreateListing — Request"
Description: """
  Logisk modell för begäran i CreateListing
  (urn:riv:supportprocess:logistics:carelisting:CreateListingResponder:2, CreateListingType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The region code (länskod)"
* actor 1..1 BackboneElement "actor" "actor"
  * actorId 1..1 BackboneElement "actorId" "actorId"
    * root 1..1 string "root" "root"
    * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
  * actorType 1..1 code "actorType" "actorType"
  * actorType from ActorTypeVS (required)
* personId 1..1 BackboneElement "personId" "personId"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
* healthcareFacilityHSAId 1..1 string "healthcareFacilityHSAId" "healthcareFacilityHSAId"
* listingType 1..1 BackboneElement "listingType" "listingType"
  * cVCode 1..1 string "cVCode" "cVCode Heter code i schemat."
  * codeSystem 1..1 string "codeSystem" "codeSystem"
  * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
  * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
  * displayName 0..1 string "displayName" "displayName"
  * originalText 0..1 string "originalText" "originalText"
* healthcarePersonnel 0..1 string "healthcarePersonnel" "healthcarePersonnel"
* addToQueue 0..1 boolean "addToQueue" "addToQueue"
* homeCounty 0..1 BackboneElement "homeCounty" "homeCounty"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
* newListingCounty 0..1 BackboneElement "newListingCounty" "newListingCounty"
  * root 1..1 string "root" "root"
  * iIExtension 0..1 string "iIExtension" "iIExtension Heter extension i schemat."
