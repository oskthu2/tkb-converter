// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: SendMedicalCertificateAnswer v1.0
// Genererad: 2026-05-19

Logical: SendMedicalCertificateAnswerRequest
Id: sendmedicalcertificateanswer-request
Title: "SendMedicalCertificateAnswer — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificateAnswer
  (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateAnswer:1).
  Skickar ett svar till Försäkringskassan på en tidigare mottagen fråga.
"""
Characteristics: #can-be-target

* vardReferensId 1..1 string "Identitet för detta svar från vården"
* fkReferensId 1..1 string "Försäkringskassans referens-id"
* amne 1..1 CodeableConcept "Ämne som fråga/svar gäller"
* amne from AmneVS (required)
* fraga 1..1 BackboneElement "Frågan"
* fraga.meddelandeText 1..1 string "Själva frågan"
* fraga.signeringsTidpunkt 1..1 dateTime "Signeringstidpunkt för frågan"
* svar 1..1 BackboneElement "Svaret"
* svar.meddelandeText 1..1 string "Själva svaret på ställd fråga"
* svar.signeringsTidpunkt 1..1 dateTime "Signeringstidpunkt för svaret"
* avsantTidpunkt 1..1 dateTime "Tidpunkt då svaret skickades från vården"
* adressVard 1..1 BackboneElement "Vårdadress"
* adressVard.hosPersonal 1..1 BackboneElement "Vårdpersonal som svarar på frågan"
* adressVard.hosPersonal.personalId 1..1 Identifier "HSA-Id för Hos-person som svarar"
* adressVard.hosPersonal.fullstandigtNamn 1..1 string "Namn för Hos-person som svarar"
* adressVard.hosPersonal.enhet 1..1 BackboneElement "Vårdenhet"
* adressVard.hosPersonal.enhet.enhetsId 1..1 Identifier "HSA-Id för Hos-vårdenhet"
* adressVard.hosPersonal.enhet.enhetsNamn 1..1 string "Namn på Hos-vårdenhet"
* adressVard.hosPersonal.enhet.postadress 0..1 string "Postadress"
* adressVard.hosPersonal.enhet.postnummer 0..1 string "Postnummer"
* adressVard.hosPersonal.enhet.postort 0..1 string "Postort"
* adressVard.hosPersonal.enhet.telefonnummer 0..1 string "Telefonnummer"
* adressVard.hosPersonal.enhet.epost 0..1 string "Epost"
* adressVard.hosPersonal.enhet.vardgivare 1..1 BackboneElement "Vårdgivare"
* adressVard.hosPersonal.enhet.vardgivare.vardgivareId 1..1 Identifier "HSA-Id för Hos-vårdgivare"
* adressVard.hosPersonal.enhet.vardgivare.vardgivareNamn 1..1 string "Namn på Hos-vårdgivare"
* lakarutlatande 1..1 BackboneElement "Läkarintyget som fråga/svar gäller"
* lakarutlatande.lakarutlatandeId 1..1 string "Unikt id för läkarintyget"
* lakarutlatande.signeringsTidpunkt 1..1 dateTime "Signeringstidpunkt för läkarintyget"
* lakarutlatande.patient 1..1 BackboneElement "Patienten"
* lakarutlatande.patient.personId 1..1 Identifier "Patientens personnummer eller samordningsnummer"
* lakarutlatande.patient.fullstandigtNamn 1..1 string "Patientens namn"


Logical: SendMedicalCertificateAnswer
Id: sendmedicalcertificateanswer
Title: "SendMedicalCertificateAnswer"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificateAnswer
  (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateAnswer:1).
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultatinformation"
* result.resultCode 1..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori"
* result.errorText 0..1 string "Beskrivande text för felet"
