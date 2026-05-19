// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: ReceiveMedicalCertificateAnswer v1.0
// Genererad: 2026-05-19

Logical: ReceiveMedicalCertificateAnswerRequest
Id: receivemedicalcertificateanswer-request
Title: "ReceiveMedicalCertificateAnswer — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet ReceiveMedicalCertificateAnswer
  (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateAnswer:1).
  Tar emot svar från Försäkringskassan på en tidigare skickad fråga från vården.
"""
Characteristics: #can-be-target

* vardReferensId 1..1 string "Referens-id för den fråga från vården som detta svar gäller"
* fkReferensId 0..1 string "Försäkringskassans referens-id"
* amne 1..1 CodeableConcept "Ämne som fråga/svar gäller"
* amne from AmneVS (required)
* fraga 1..1 BackboneElement "Frågan"
* fraga.meddelandeText 1..1 string "Frågetext rörande det angivna läkarintyget"
* fraga.signeringsTidpunkt 1..1 dateTime "Signeringstidpunkt för frågan"
* svar 1..1 BackboneElement "Svaret"
* svar.meddelandeText 1..1 string "Själva svaret på ställd fråga"
* svar.signeringsTidpunkt 1..1 dateTime "Signeringstidpunkt för svaret"
* avsantTidpunkt 1..1 dateTime "Tidpunkt då svaret skickades från Försäkringskassan"
* fkKontaktInfo 0..* BackboneElement "Rader med kontaktinformation"
* fkKontaktInfo.kontakt 1..1 string "Kontaktinformation för person som svarat från FK"
* adressVard 1..1 BackboneElement "Vårdadress"
* adressVard.hosPersonal 1..1 BackboneElement "Vårdpersonal som ställde frågan"
* adressVard.hosPersonal.personalId 1..1 Identifier "HSA-Id för Hos-person som ställde frågan"
* adressVard.hosPersonal.fullstandigtNamn 1..1 string "Namn för Hos-person som ställde frågan"
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


Logical: ReceiveMedicalCertificateAnswer
Id: receivemedicalcertificateanswer
Title: "ReceiveMedicalCertificateAnswer"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateAnswer
  (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateAnswer:1).
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultatinformation"
* result.resultCode 1..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori"
* result.errorText 0..1 string "Beskrivande text för felet"
