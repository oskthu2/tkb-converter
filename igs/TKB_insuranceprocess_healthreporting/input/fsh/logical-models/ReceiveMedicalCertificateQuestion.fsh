// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: ReceiveMedicalCertificateQuestion v1.0
// Genererad: 2026-05-19

Logical: ReceiveMedicalCertificateQuestionRequest
Id: receivemedicalcertificatequestion-request
Title: "ReceiveMedicalCertificateQuestion — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet ReceiveMedicalCertificateQuestion
  (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateQuestion:1).
  Tar emot frågor från Försäkringskassan för ett läkarintyg.
"""
Characteristics: #can-be-target

* fkReferensId 1..1 string "Försäkringskassans referens-id"
  """
  Samma referens-id kan förekomma i flera meddelanden.
  Vid påminnelse ska referens-id vara samma som för den fråga påminnelsen gäller.
  """
* amne 1..1 CodeableConcept "Ämne som frågan gäller"
* amne from AmneVS (required)
* fraga 1..1 BackboneElement "Frågan"
* fraga.meddelandeText 1..1 string "Frågetext rörande det angivna läkarintyget"
* fraga.signeringsTidpunkt 1..1 dateTime "Signeringstidpunkt för frågan"
* avsantTidpunkt 1..1 dateTime "Tidpunkt då frågan skickades från Försäkringskassan"
* fkKontaktInfo 0..* BackboneElement "Rader med kontaktinformation"
* fkKontaktInfo.kontakt 1..1 string "Kontaktinformation för person som ställt frågan från FK"
* adressVard 1..1 BackboneElement "Vårdadress"
* adressVard.hosPersonal 1..1 BackboneElement "Vårdpersonal"
* adressVard.hosPersonal.personalId 1..1 Identifier "HSA-Id för Hos-person som utfärdade läkarintyget"
* adressVard.hosPersonal.fullstandigtNamn 1..1 string "Namn för Hos-person som utfärdade läkarintyget"
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
* fkMeddelanderubrik 0..1 string "Extra rubrik från Försäkringskassan"
* fkKomplettering 0..* BackboneElement "Komplettering"
* fkKomplettering.falt 1..1 string "Referens till fält på blanketten MU7263"
* fkKomplettering.text 1..1 string "Orsak till komplettering för detta fält"
* fkSistaDatumForSvar 0..1 date "Datum då FK senast vill ha svar"
* lakarutlatande 1..1 BackboneElement "Läkarintyget som frågan gäller"
* lakarutlatande.lakarutlatandeId 1..1 string "Unikt id för läkarintyget"
* lakarutlatande.signeringsTidpunkt 1..1 dateTime "Signeringstidpunkt för läkarintyget"
* lakarutlatande.patient 1..1 BackboneElement "Patienten"
* lakarutlatande.patient.personId 1..1 Identifier "Patientens personnummer eller samordningsnummer"
* lakarutlatande.patient.fullstandigtNamn 1..1 string "Patientens namn"


Logical: ReceiveMedicalCertificateQuestion
Id: receivemedicalcertificatequestion
Title: "ReceiveMedicalCertificateQuestion"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateQuestion
  (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateQuestion:1).
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultatinformation"
* result.resultCode 1..1 string "Resultatkod (OK, ERROR, INFO)"
* result.infoText 0..1 string "Extra information om anropets utgång"
* result.errorId 0..1 string "Felkategori"
* result.errorText 0..1 string "Beskrivande text för felet"
