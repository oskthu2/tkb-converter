// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: SetCertificateStatus v2.0
// Genererad: 2026-05-19

Logical: SetCertificateStatus
Id: setcertificatestatus
Title: "SetCertificateStatus"
Description: """
  Logisk modell för tjänstekontraktet SetCertificateStatus
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SetCertificateStatus:2).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Information om anropets resultat"
* result.resultCode 1..1 CodeableConcept "Resultatkod (OK/INFO/ERROR)"
* result.resultCode from ResultkodVS (required)
* result.resultText 0..1 string "Fritext"
* result.errorId 0..1 CodeableConcept "Felkod vid ERROR"
* result.errorId from ErrorIdVS (required)

Logical: SetCertificateStatusRequest
Id: setcertificatestatus-request
Title: "SetCertificateStatus — Request"
Description: "Logisk modell för requestparametrar i SetCertificateStatus."
Characteristics: #can-be-target

* intygsId 1..1 Identifier "Unikt ID för det intyg vars status ska sättas"
* part 1..1 CodeableConcept "Kodat värde för den part statusen gäller för"
* part from PartVS (required)
* certificateStatus 1..1 CodeableConcept "Kodat värde för intygsstatus"
* certificateStatus from StatuskodVS (required)
* tidpunkt 1..1 dateTime "Tidpunkt då statusen sattes"
