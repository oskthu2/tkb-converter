// Genererad från TKB clinicalprocess:healthcond:description 2.1.18 (Bitbucket-tagg 2.1.19)
// Kontrakt: GetCareDocumentation v2.1
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2
// Källa: fältreglerna i TKB avsnitt 7 (begäran), typer verifierade mot XSD:n i taggen
// Genererad: 2026-10-08


Invariant: getcaredocumentation-request-carecontact-requires-sourcesystem
Description: "sourceSystemHSAId ska anges om careContactId angivits (TKB, fältregler för begäran)."
Expression: "careContactId.exists() implies sourceSystemHSAId.exists()"
Severity: #error

Logical: GetCareDocumentationRequest
Id: getcaredocumentation-request
Title: "GetCareDocumentation — Request"
Description: "Logisk modell för begäran i tjänstekontraktet GetCareDocumentation version 2.1 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18."
Characteristics: #can-be-target

* ^version = "2.1"
* careUnitHSAId 0..* Identifier "Filtrering på vårdenhet vilket motsvarar careUnitHSAId i HealthcareProfessionalType" "Filtrering på vårdenhet vilket motsvarar careUnitHSAId i HealthcareProfessionalType. TKB-typ: HSAIdType. Kardinalitet: 0..*. OBS: elementet heter careUnitHSAid i XSD:n (GetCareDocumentationResponder_2.1.xsd / clinicalprocess_healthcond_description_2.1.xsd)."
* patientId 1..1 Identifier "Id för patienten där fältet id sätts till patientens identifierare" "Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. / 1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas, [R14]. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas, [R14] / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. TKB-typ: PersonIdType. Kardinalitet: 1..1."
* timePeriod 0..1 Period "Begränsar sökningen till det angivna intervallet" "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där någon av tidpunkterna documentTime, authorTime, signatureTime eller dissentingOpinion.authorTime i svaret ligger inom sökintervallets start- och slutdatum. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. TKB-typ: DatePeriodType. Kardinalitet: 0..1. Underelement i DatePeriodType: start (string, 1..1): Startdatum. Format ÅÅÅÅMMDD. | end (string, 1..1): Slutdatum. Format ÅÅÅÅMMDD."
  * start 1..1
  * end 1..1
* sourceSystemHSAId 0..1 Identifier "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet" "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. TKB-typ: HSAIdType. Kardinalitet: 0..1. OBS: elementet heter sourceSystemHSAid i XSD:n (GetCareDocumentationResponder_2.1.xsd / clinicalprocess_healthcond_description_2.1.xsd)."
* careContactId 0..* string "Begränsar sökningen till den hälso- och sjukvårdskontakt som föranlett den information som omfattas av …" "Begränsar sökningen till den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. sourceSystemHSAId måste anges om denna parameter anges. TKB-typ: string. Kardinalitet: 0..*."
* obeys getcaredocumentation-request-carecontact-requires-sourcesystem
