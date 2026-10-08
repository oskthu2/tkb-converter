// Genererad från TKB clinicalprocess:logistics:logistics 2.0.7 (Bitbucket-tagg 2.0.7)
// Kontrakt: GetCareContacts v2.0 — Request (GetCareContactsType i GetCareContactsResponder_2.0.xsd)
// Genererad: 2026-10-08

Invariant: getcarecontacts-request-sourcesystem-when-id
Description: "sourceSystemHSAId är tvingande om careContactId angivits."
Expression: "careContactId.exists() implies sourceSystemHSAId.exists()"
Severity: #error

Logical: GetCareContactsRequest
Id: getcarecontacts-request
Title: "GetCareContacts — Request"
Description: """
  Logisk modell för begäran i tjänstekontraktet GetCareContacts 2.0
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2).
  Representerar GetCareContactsType i GetCareContactsResponder_2.0.xsd.
"""
Characteristics: #can-be-target
* ^version = "2.0"
* obeys getcarecontacts-request-sourcesystem-when-id

* careUnitHSAId 0..* Identifier "Begränsning av sökning avseende vårdenheter"
    """
    Begränsning av sökning avseende vårdenheter vilket motsvarar careUnitHSAId i HealthcareProfessionalType.
    Typ HSAIdType (system = urn:oid:1.2.752.129.2.1.4.1).
    """
* patientId 1..1 Identifier "Id för patienten"
    """
    Typ PersonIdType. value sätts till patientens identifierare, angiven med 12 siffror utan avskiljare.
    system sätts till OID för typ av identifierare (fältet type i schemat):
    personnummer 1.2.752.129.2.1.3.1, samordningsnummer 1.2.752.129.2.1.3.3,
    reservnummer lokalt definierad OID, exempelvis SLL reservnummer 1.2.752.97.3.1.3.
    """
* timePeriod 0..1 BackboneElement "Begränsar sökningen till det angivna intervallet"
    """
    Typ DatePeriodType. Endast poster returneras där datumintervallet som bildas av authorTime,
    careContactTimePeriod.start och careContactTimePeriod.end i svaret helt eller delvis överlappar
    sökintervallet. Vid jämförelse konverteras datapostens tidpunkter till datum.
    """
  * start 1..1 date "Startdatum (ÅÅÅÅMMDD)"
  * end 1..1 date "Slutdatum (ÅÅÅÅMMDD)"
* sourceSystemHSAId 0..1 Identifier "Begränsar sökningen till det angivna källsystemet"
    """
    Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.
    Värdet måste överensstämma med logicalAddress i anropets tekniska kuvertering (SOAP-header),
    vilket innebär att aggregerande tjänster inte används när fältet anges.
    Fältet är tvingande om careContactId angivits. Typ HSAIdType.
    """
* careContactId 0..* string "Begränsar sökningen till angivna vårdkontakter"
    """
    Identitet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet.
    Identiteten är unik inom källsystemet.
    """
