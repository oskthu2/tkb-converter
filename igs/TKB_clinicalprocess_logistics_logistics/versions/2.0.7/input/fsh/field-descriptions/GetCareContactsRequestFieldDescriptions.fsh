// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareContactsRequestFieldDescriptions
* careUnitHSAId ^definition = "Begränsning av sökning avseende vårdenheter vilket motsvarar careUnitHSAId i HealthcareProfessionalType."
* careUnitHSAId ^comment = "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*)."
* patientId ^definition = "Id för patienten.

value sätts till patientens identifierare.

Type sätts till OID för typ av identifierare. Anges med 12 siffror utan avskiljare.

För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).

För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).

För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)"
* patientId ^comment = "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1)."
* timePeriod ^definition = "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime, careContactTimePeriod.start och careContactTimePeriod.end i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs.

det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum

det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum

det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum

Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum."
* timePeriod ^comment = "TKB-fält: `timePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* timePeriod.start ^definition = "Startdatum. Format ÅÅÅÅMMDD."
* timePeriod.start ^comment = "TKB-fält: `.start` (`string`, kardinalitet 1..1)."
* timePeriod.end ^definition = "Slutdatum. Format ÅÅÅÅMMDD."
* timePeriod.end ^comment = "TKB-fält: `.end` (`string`, kardinalitet 1..1)."
* sourceSystemHSAId ^definition = "Begränsar sökningen till vårdkontakt som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.

Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).

Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges.

Fältet är tvingande om careContactId angivits."
* sourceSystemHSAId ^comment = "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1)."
* careContactId ^definition = "Begränsar sökningen till dokument som Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet."
* careContactId ^comment = "TKB-fält: `careContactId` (`string`, kardinalitet 0..*)."
