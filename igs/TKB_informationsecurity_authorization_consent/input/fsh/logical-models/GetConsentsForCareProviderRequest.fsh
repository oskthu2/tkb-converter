// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetConsentsForCareProvider v2.0
// Genererad: 2026-09-26

Logical: GetConsentsForCareProviderRequest
Id: getconsentsforcareprovider-request
Title: "GetConsentsForCareProvider — Request"
Description: """
  Logisk modell för begäran i GetConsentsForCareProvider
  (urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProviderResponder:2, GetConsentsForCareProviderType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för aktörens vårdgivare."
* careProviderId 1..1 string "careProviderId" "careProviderId"
* createdOnOrAfter 0..1 dateTime "createdOnOrAfter" "createdOnOrAfter"
* getCancelledFlag 1..1 boolean "getCancelledFlag" "getCancelledFlag"
