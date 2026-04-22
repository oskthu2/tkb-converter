// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: GetConsentsForPatient v1.0 — Request-modell
// RIV-TA: urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1
// Genererad: 2026-04-22

Logical: GetConsentsForPatientRequest
Id: getconsentsforpatient-request
Title: "GetConsentsForPatient — Request"
Description: "Logisk modell för requestparametrar i GetConsentsForPatient."
Characteristics: #can-be-target

* careProviderId 1..1 Identifier "Obligatoriskt HSA-id på den vårdgivare vars samtycken skall hämtas"
  """
  Identifierare för vårdgivare. system = urn:oid:1.2.752.129.2.1.4.1. Max 32 tecken.
  """
* patientId 1..1 Identifier "Patientens personnummer alternativt samordningsnummer vars samtycken skall hämtas"
  """
  PersonIdValue — personnummer, samordningsnummer eller reservnummer. Max 12 tecken.
  """
