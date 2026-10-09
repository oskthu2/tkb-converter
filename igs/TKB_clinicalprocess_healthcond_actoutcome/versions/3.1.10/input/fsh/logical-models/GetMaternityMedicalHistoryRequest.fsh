// Genererad från TKB clinicalprocess:healthcond:actoutcome 3.1.10 (Bitbucket-tagg 3.1.10)
// Kontrakt: GetMaternityMedicalHistory 2.0 (avsnitt 7.2)
// Genererad: 2026-10-08 ur fältregeltabellen i TKB:n

Logical: GetMaternityMedicalHistoryRequest
Id: getmaternitymedicalhistory-request
Title: "GetMaternityMedicalHistory — Begäran"
Description: """
  Logisk modell för tjänstekontraktet GetMaternityMedicalHistory 2.0
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistoryResponder:2).
  Representerar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.2.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* careUnitHSAid 0..* Identifier "Filtrering på Vårdenhet vilket motsvarar healthcareProfessionalCareUnitHSAId i accountableHealthcareProfession"
  """
  Filtrering på Vårdenhet vilket motsvarar healthcareProfessionalCareUnitHSAId i accountableHealthcareProfessional.
  RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..*.
  """
* patientId 1..1 Identifier "Id för patienten där fältet id sätts till patientens identifierare"
  """
  Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. / 1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent.
  RIV-TA-typ: PersonIdType. Kardinalitet i TKB: 1..1.
  """
* datePeriod 0..1 Period "Begränsar sökningen till det angivna intervallet"
  """
  Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna documentTime, authorTime och signatureTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatumet / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. / Obs I schemat är elementet felaktigt döpt till timePeriod, men är av rätt typ dvs DatePeriodType. / Elementnamnet ändras i nästa majorversion.
  RIV-TA-typ: DatePeriodType. Kardinalitet i TKB: 0..1.
  Delelement enligt TKB:
  - start (string, 1..1): Startdatum. Format ÅÅÅÅMMDD.
  - end (string, 1..1): Slutdatum. Format ÅÅÅÅMMDD.
  """
* sourceSystemHSAId 0..1 Identifier "Begränsar sökningen till mödravårdsjournal som är skapad i det angivna källsystemet"
  """
  Begränsar sökningen till mödravårdsjournal som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST.
  RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
  """
* careContactId 0..* string "Begränsar sökningen till hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet"
  """
  Begränsar sökningen till hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet
  RIV-TA-typ: string. Kardinalitet i TKB: 0..*.
  """
* obeys getmaternitymedicalhistory-request-sourcesystem-if-carecontact

Invariant: getmaternitymedicalhistory-request-sourcesystem-if-carecontact
Description: "sourceSystemHSAId ska anges om careContactId angivits."
Expression: "careContactId.exists() implies sourceSystemHSAId.exists()"
Severity: #error
