// Elementen genereras ur GetSealsResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.pip v1.0 (Genererat ur domänens XSD (master, commit 729301865b83).; scripts/xsd_to_ig.py)
// Kontrakt: GetSeals v1.0
// Genererad: 2026-09-26

Logical: GetSealsRequest
Id: getseals-request
Title: "GetSeals — Request"
Description: """
  Logisk modell för begäran i GetSeals
  (urn:riv:informationsecurity:authorization:pip:GetSealsResponder:1, GetSealsType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* patientId 1..1 IIType "patientId" "patientId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetSealsRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* patientId obeys getseals-request-patientid-pnr-sam

Invariant: getseals-request-patientid-pnr-sam
Description: "ÖR6: patientId root ska vara OID för personnummer eller samordningsnummer, och extension ska ha formatet ÅÅÅÅMMDDNNNN utan bindestreck (testsvitens constraints.xml)."
Expression: "(root = '1.2.752.129.2.1.3.1' or root = '1.2.752.129.2.1.3.3') and iiExtension.matches('^[0-9]{8}[0-9pPtTfF][0-9]{3}$')"
Severity: #error
