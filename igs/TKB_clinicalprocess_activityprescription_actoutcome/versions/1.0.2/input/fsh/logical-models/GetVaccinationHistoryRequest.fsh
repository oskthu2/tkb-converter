// Genererad från TKB clinicalprocess:activityprescription:actoutcome 1.0 (Bitbucket-tagg 1.0.2)
// Kontrakt: GetVaccinationHistory v1.0 — Request
// Källa: GetVaccinationHistoryResponder_1.0.xsd (GetVaccinationHistoryType)
// Genererad: 2026-10-08

Invariant: getvaccinationhistory-request-sourcesystem
Description: "sourceSystemHSAid är tvingande om careContactId angivits (TKB 1.0, fältregler för sourceSystemHSAId)"
Expression: "careContactId.exists() implies sourceSystemHSAid.exists()"
Severity: #error

Invariant: getvaccinationhistory-request-timeperiod
Description: "Minst ett av start och end ska anges (DatePeriodType)"
Expression: "start.exists() or end.exists()"
Severity: #error

Logical: GetVaccinationHistoryRequest
Id: getvaccinationhistory-request
Title: "GetVaccinationHistory — Request"
Description: """
  Logisk modell för begäran i tjänstekontraktet GetVaccinationHistory 1.0
  (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:1).
  Elementnamnen följer XML-schemat GetVaccinationHistoryResponder_1.0.xsd.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* obeys getvaccinationhistory-request-sourcesystem
* careUnitHSAid 0..* Identifier "Filtrering på vårdenhet (HSAIdType)"
  """
  Filtrering på Vårdenhet vilket motsvarar careUnitHSAid i HealthCareProfessionalType. Journalposter som saknar
  märkning med vårdenhet ingår inte i svaret om detta fält använts i anropet.
  I TKB:ns tabell heter fältet careUnitHSAId; schemat använder careUnitHSAid.
  """
* patientId 1..1 Identifier "Id för patienten (PersonIdType)"
  """
  value (id) sätts till patientens identifierare, 12 tecken utan avskiljare.
  system (type) sätts till OID för typ av identifierare: personnummer 1.2.752.129.2.1.3.1,
  samordningsnummer 1.2.752.129.2.1.3.3, reservnummer lokalt definierat (t.ex. SLL 1.2.752.97.3.1.3).
  """
* timePeriod 0..1 Period "Begränsning av sökningen i tid (DatePeriodType)"
  """
  Resultatet innehåller de poster som i något av tidsfälten i vaccinationMedicalRecordHeader eller
  vaccinationMedicalRecordBody.registrationRecord.date anger en tidpunkt inom det sökta intervallet
  (start- och slutpunkt inkluderas). Datum anges på formatet ÅÅÅÅMMDD.
  """
  * obeys getvaccinationhistory-request-timeperiod
* sourceSystemHSAid 0..1 Identifier "Begränsar sökningen till angivet källsystem (HSAIdType)"
  """
  Begränsar sökningen till dokument som är skapade i angivet system. Värdet måste överensstämma med
  logicalAddress i anropets tekniska kuvertering (SOAP-header), så aggregerande tjänster används inte när fältet anges.
  Fältet är tvingande om careContactId angivits. I TKB:ns tabell heter fältet sourceSystemHSAId.
  """
* careContactId 0..* string "Begränsar sökningen till angiven vård- och omsorgskontakt"
  """
  Begränsar sökningen till den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet.
  Identiteten är unik inom källsystemet.
  """
