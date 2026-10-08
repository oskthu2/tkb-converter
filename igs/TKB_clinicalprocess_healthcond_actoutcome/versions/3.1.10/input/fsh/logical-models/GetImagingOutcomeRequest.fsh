// Genererad från TKB clinicalprocess:healthcond:actoutcome 3.1.10 (Bitbucket-tagg 3.1.10)
// Kontrakt: GetImagingOutcome 1.0 (avsnitt 7.4)
// Genererad: 2026-10-08 ur fältregeltabellen i TKB:n

Logical: GetImagingOutcomeRequest
Id: getimagingoutcome-request
Title: "GetImagingOutcome — Begäran"
Description: """
  Logisk modell för tjänstekontraktet GetImagingOutcome 1.0
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcomeResponder:1).
  Representerar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.4.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* careUnitHSAId 0..* Identifier "Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType."
  """
  Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType.
  RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..*.
  """
* patientId 1..1 Identifier "Id för patienten"
  """
  Id för patienten. / id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)
  RIV-TA-typ: PersonIdType. Kardinalitet i TKB: 1..1.
  """
* datePeriod 0..1 Period "Begränsar sökningen till det angivna intervallet"
  """
  Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime, resultTime samt remissens authorTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum.
  RIV-TA-typ: DatePeriodType. Kardinalitet i TKB: 0..1.
  Delelement enligt TKB:
  - start (string, 1..1): Startdatum. Format ÅÅÅÅMMDD.
  - end (string, 1..1): Slutdatum. Format ÅÅÅÅMMDD.
  """
* sourceSystemHSAId 0..1 Identifier "Begränsar sökningen till dokument som är skapad i det angivna källsystemet"
  """
  Begränsar sökningen till dokument som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST.
  RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
  """
* careContactId 0..* string "Begränsar sökningen till den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokument"
  """
  Begränsar sökningen till den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.
  RIV-TA-typ: string. Kardinalitet i TKB: 0..*.
  """
* obeys getimagingoutcome-request-sourcesystem-if-carecontact

Invariant: getimagingoutcome-request-sourcesystem-if-carecontact
Description: "sourceSystemHSAId ska anges om careContactId angivits."
Expression: "careContactId.exists() implies sourceSystemHSAId.exists()"
Severity: #error
