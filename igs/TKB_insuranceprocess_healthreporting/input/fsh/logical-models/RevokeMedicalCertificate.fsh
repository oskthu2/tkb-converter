// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: RevokeMedicalCertificate v1.0
// Genererad: 2026-05-19

Logical: RevokeMedicalCertificateRequest
Id: revokemedicalcertificate-request
Title: "RevokeMedicalCertificate — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet RevokeMedicalCertificate
  (RIV-TA urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1).
  Skickar ett meddelande om rättelse av ett tidigare inskickat läkarintyg.
"""
Characteristics: #can-be-target

* revoke 1..1 BackboneElement "Rättelsen"
* revoke.vardReferensId 1..1 string "Identitet för denna rättelse från vården"
* revoke.meddelande 0..1 string "Beskrivning om orsak till rättningen"
* revoke.avsantTidpunkt 1..1 dateTime "Tidpunkt då rättelsen skickades från vården"
* revoke.adressVard 1..1 BackboneElement "Vårdadress"
* revoke.adressVard.hosPersonal 1..1 BackboneElement "Vårdpersonal som skickade rättelsen"
* revoke.adressVard.hosPersonal.fullstandigtNamn 1..1 string "Namn för Hos-person som skickade rättelsen"
* revoke.adressVard.hosPersonal.enhet 1..1 BackboneElement "Vårdenhet"
* revoke.adressVard.hosPersonal.enhet.enhetsId 1..1 Identifier "HSA-Id för Hos-vårdenhet"
* revoke.adressVard.hosPersonal.enhet.enhetsNamn 1..1 string "Namn på Hos-vårdenhet"
* revoke.adressVard.hosPersonal.enhet.postadress 0..1 string "Postadress"
* revoke.adressVard.hosPersonal.enhet.postnummer 0..1 string "Postnummer"
* revoke.adressVard.hosPersonal.enhet.postort 0..1 string "Postort"
* revoke.adressVard.hosPersonal.enhet.telefonnummer 0..1 string "Telefonnummer"
* revoke.adressVard.hosPersonal.enhet.epost 0..1 string "Epost"
* revoke.adressVard.hosPersonal.enhet.vardgivare 1..1 BackboneElement "Vårdgivaren"
* revoke.adressVard.hosPersonal.enhet.vardgivare.vardgivareId 1..1 Identifier "HSA-Id för Hos-vårdgivare"
* revoke.adressVard.hosPersonal.enhet.vardgivare.vardgivareNamn 1..1 string "Namn på Hos-vårdgivare"
* lakarutlatandeId 1..1 string "Unikt id för läkarintyget som rättelsen gäller"
* lakarutlatandeSigneringsTidpunkt 1..1 dateTime "Signeringstidpunkt för läkarintyget som rättelsen gäller"
* patient 1..1 BackboneElement "Patienten"
* patient.personId 1..1 Identifier "Patientens personnummer eller samordningsnummer"
* patient.fullstandigtNamn 1..1 string "Patientens namn"


Logical: RevokeMedicalCertificate
Id: revokemedicalcertificate
Title: "RevokeMedicalCertificate"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet RevokeMedicalCertificate
  (RIV-TA urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1).
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultatinformation"
* result.resultCode 1..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori"
* result.errorText 0..1 string "Beskrivande text för felet"
