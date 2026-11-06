// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareContactsRequestFieldDescriptions
* careUnitHSAId ^definition = "Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType."
* careUnitHSAId ^comment = "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*)."
* careGiverHSAId ^definition = "Filtrering på informationsägande vårdgivare, vilket motsvarar careGiverHSAId i healthcareProfessionalType"
* careGiverHSAId ^comment = "TKB-fält: `careGiverHSAId` (`HSAIdType`, kardinalitet 0..*)."
* patientId ^definition = "Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.

Fältet type sätts till OID för typ av identifierare.

1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.

2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.

3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3).

OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer.

En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer- OID som gäller vid anrop mot en specifik tjänsteproducent."
* patientId ^comment = "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1)."
* datePeriod ^definition = "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime, careContactTimePeriod.start och careContactTimePeriod.end i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs.

det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum

det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum

det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum

careContactTimePeriod.start ligger före eller inom sökintervallets start- och slutdatum samt careContactTimePeriod.end saknas.

careContactTimePeriod.end ligger inom eller efter sökintervallets start- och slutdatum samt careContactTimePeriod.start saknas.

Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum."
* datePeriod ^comment = "TKB-fält: `datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* datePeriod.start ^definition = "Startdatum. Format ÅÅÅÅMMDD."
* datePeriod.start ^comment = "TKB-fält: `../start` (`string`, kardinalitet 1..1)."
* datePeriod.end ^definition = "Slutdatum. Format ÅÅÅÅMMDD."
* datePeriod.end ^comment = "TKB-fält: `../end` (`string`, kardinalitet 1..1)."
* sourceSystemHSAId ^definition = "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.

Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).

Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges.

Fältet är tvingande om careContactId angivits.

Fältet är tvingande vid begäran på reservnummer."
* sourceSystemHSAId ^comment = "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1)."
* careContactId ^definition = "Begränsar sökningen till den/de vårdkontakter vars id anges. Motsvarar documentId i careContactHeader i svaret."
* careContactId ^comment = "TKB-fält: `careContactId` (`string`, kardinalitet 0..*)."
