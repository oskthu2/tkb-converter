// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetDiagnosisRequestFieldDescriptions
* careUnitHSAId ^definition = "Filtrering på vårdenhet vilket motsvarar careUnitHSAId i healthcareProfessionalType."
* careUnitHSAId ^comment = "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*)."
* patientId ^definition = "Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.

Fältet type sätts till OID för typ av identifierare.

1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas), [R14].

2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas), [R14].

3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14].

OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer.

En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent."
* patientId ^comment = "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1)."
* timePeriod ^definition = "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där någon av tidpunkterna authorTime, signatureTime eller diagnosisTime i svaret ligger inom sökintervallets start- och slutdatum.

Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum."
* timePeriod ^comment = "TKB-fält: `timePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* sourceSystemHSAId ^definition = "Begränsar sökningen till diagnoser som tillgängliggörs av angivet källsystem.

Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).

Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges.

Ska anges om careContactId angivits.

Ska anges vid begäran på reservnummer.

Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST

Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST."
* sourceSystemHSAId ^comment = "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1)."
* careContactId ^definition = "Begränsar sökningen till de diagnoser som dokumenterades vid hälso- och sjukvårdskontakt."
* careContactId ^comment = "TKB-fält: `careContactId` (`string`, kardinalitet 0..*)."
