// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: SendMedicalCertificate v1.0
// Genererad: 2026-05-19

Logical: SendMedicalCertificateRequest
Id: sendmedicalcertificate-request
Title: "SendMedicalCertificate — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificate
  (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1).
  Skickar ett meddelande om att ett läkarintyg skall skickas vidare till FK.
  Läkarintyget är tidigare insänt via RegisterMedicalCertificate.
"""
Characteristics: #can-be-target

* send 1..1 BackboneElement "Signal om att skicka ett intyg"
* send.vardReferensId 1..1 string "Identitet för detta meddelande från vården"
* send.avsantTidpunkt 1..1 dateTime "Tidpunkt då meddelandet skickades från vården"
* send.adressVard 1..1 BackboneElement "Vårdadress"
* send.adressVard.hosPersonal 1..1 BackboneElement "Vårdpersonal"
* send.adressVard.hosPersonal.personalId 1..1 Identifier "HSA-Id för Hos-person som skickade meddelandet"
* send.adressVard.hosPersonal.fullstandigtNamn 1..1 string "Namn för Hos-person som skickade meddelandet"
* send.adressVard.hosPersonal.enhet 1..1 BackboneElement "Vårdenhet"
* send.adressVard.hosPersonal.enhet.enhetsId 1..1 Identifier "HSA-Id för Hos-vårdenhet"
* send.adressVard.hosPersonal.enhet.enhetsNamn 1..1 string "Namn på Hos-vårdenhet"
* send.adressVard.hosPersonal.enhet.postadress 0..1 string "Postadress"
* send.adressVard.hosPersonal.enhet.postnummer 0..1 string "Postnummer"
* send.adressVard.hosPersonal.enhet.postort 0..1 string "Postort"
* send.adressVard.hosPersonal.enhet.telefonnummer 0..1 string "Telefonnummer"
* send.adressVard.hosPersonal.enhet.epost 0..1 string "Epost"
* send.adressVard.hosPersonal.enhet.vardgivare 1..1 BackboneElement "Vårdgivare"
* send.adressVard.hosPersonal.enhet.vardgivare.vardgivareId 1..1 Identifier "HSA-Id för Hos-vårdgivare"
* send.adressVard.hosPersonal.enhet.vardgivare.vardgivareNamn 1..1 string "Namn på Hos-vårdgivare"
* lakarutlatande 1..1 BackboneElement "Läkarutlåtandet"
* lakarutlatande.lakarutlatandeId 1..1 string "Unikt id för läkarintyget"
* lakarutlatande.signeringsTidpunkt 1..1 dateTime "Signeringstidpunkt för läkarintyget"
* lakarutlatande.patient 1..1 BackboneElement "Patienten"
* lakarutlatande.patient.personId 1..1 Identifier "Patientens personnummer eller samordningsnummer"
* lakarutlatande.patient.fullstandigtNamn 1..1 string "Patientens namn"


Logical: SendMedicalCertificate
Id: sendmedicalcertificate
Title: "SendMedicalCertificate"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificate
  (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1).
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultatinformation"
* result.resultCode 1..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori"
* result.errorText 0..1 string "Beskrivande text för felet"
