// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: SendMedicalCertificateQuestion v1.0
// Genererad: 2026-05-19

Logical: SendMedicalCertificateQuestionRequest
Id: sendmedicalcertificatequestion-request
Title: "SendMedicalCertificateQuestion — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificateQuestion
  (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1).
  Skickar en fråga till Försäkringskassan för ett läkarintyg.
"""
Characteristics: #can-be-target

* vardReferensId 1..1 string "Identitet för denna fråga från vården"
  """
  Samma vardReferens-id kan förekomma i flera meddelanden (t.ex. påminnelse).
  För teknisk koppling bör varje ny fråga ha unikt id.
  """
* amne 1..1 CodeableConcept "Ämne som frågan gäller"
* amne from AmneVS (required)
* fraga 1..1 BackboneElement "Frågan"
* fraga.meddelandeText 1..1 string "Själva frågan"
* fraga.signeringsTidpunkt 1..1 dateTime "Signeringstidpunkt för frågan"
* avsantTidpunkt 1..1 dateTime "Tidpunkt då frågan skickades från vården"
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
* lakarutlatande 1..1 BackboneElement "Läkarintyget som frågan gäller"
* lakarutlatande.lakarutlatandeId 1..1 string "Unikt id för läkarintyget"
* lakarutlatande.signeringsTidpunkt 1..1 dateTime "Signeringstidpunkt för läkarintyget"
* lakarutlatande.patient 1..1 BackboneElement "Patienten"
* lakarutlatande.patient.personId 1..1 Identifier "Patientens personnummer eller samordningsnummer"
* lakarutlatande.patient.fullstandigtNamn 1..1 string "Patientens namn"


Logical: SendMedicalCertificateQuestion
Id: sendmedicalcertificatequestion
Title: "SendMedicalCertificateQuestion"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificateQuestion
  (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1).
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultatinformation"
* result.resultCode 1..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori"
* result.errorText 0..1 string "Beskrivande text för felet"
