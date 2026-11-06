// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetRequestActivitiesRequestFieldDescriptions
* careUnitHSAId ^definition = "Filtrering på vårdenhet vilket motsvarar accountableCareUnit i svaret.

root sätts till OID (1.2.752.129.2.1.4.1) för HSA

extension sätts till HSA-id på vårdenhet."
* careUnitHSAId ^comment = "TKB-fält: `careUnitHSAId` (`IIType`, kardinalitet 0..*)."
* careGiverHSAId ^definition = "Filtrering på vårdgivare vilket motsvarar accountableHealthcareProvider i svaret.

root sätts till OID (1.2.752.129.2.1.4.1) för HSA

extension sätts till HSA-id på vårdgivare."
* careGiverHSAId ^comment = "TKB-fält: `careGiverHSAId` (`IIType`, kardinalitet 0..*)."
* patientId ^definition = "Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare.

root sätts till OID för typ av personidentifierare.

För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.

För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.

För andra typer av personidentifierare sätts root till aktuell OID.

extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.

OBS lokal reservidentitet kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för lokal reservidentitet.

En tjänstekonsument som vill begära mha. lokal reservidentitet måste därmed använda sig av systemadressering och ha vetskap om vilken OID för den specifika lokala reservidentitet som gäller vid anrop mot en specifik tjänsteproducent."
* patientId ^comment = "TKB-fält: `patientId` (`IIType`, kardinalitet 1..1)."
* datePeriod ^definition = "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att samtliga statusrader för en remiss ska returneras där minst en av statusradernas body.eventTime ligger inom sökintervallets start- och slutdatum eller där en av statusradernas body.eventTime ligger före och en annan efter.

Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum.

OBS! Datumet gäller för remissen, dvs om någon statusrad faller inom intervallet så ska alla statusrader för denna remiss returneras."
* datePeriod ^comment = "TKB-fält: `datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* sourceSystemHSAId ^definition = "Källsystemets id

Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.

Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).

Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges.

systemHSAId.root = 1.2.752.129.2.1.4.1

(HSA-id OID)

Ska anges vid begäran på reservnummer."
* sourceSystemHSAId ^comment = "TKB-fält: `sourceSystemHSAId` (`IIType`, kardinalitet 0..1)."
* typeOfRequest ^definition = "Remisstyp

Kod som anger vilken typ av remiss som avses.

KV framställantyp

OID: 1.2.752.129.2.2.2.24

Giltiga värden:

1 = röntgenremiss

2 = labbremiss

4 = allmänremiss

Se [R5]."
* typeOfRequest ^comment = "TKB-fält: `typeOfRequest` (`CVType`, kardinalitet 0..*)."
