// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetImagingOutcomeRequestFieldDescriptions
* careUnitHSAId ^definition = "Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType."
* careUnitHSAId ^comment = "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*)."
* patientId ^definition = "Id för patienten.

id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.

Type sätts till OID för typ av identifierare.

För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).

För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).

För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)"
* patientId ^comment = "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1)."
* datePeriod ^definition = "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime, resultTime samt remissens authorTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs.

det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum

det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum

det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum

Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum."
* datePeriod ^comment = "TKB-fält: `datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* sourceSystemHSAId ^definition = "Begränsar sökningen till dokument som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.

Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).

Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges.

Ska anges om careContactId angivits.

Ska anges vid begäran på reservnummer.

Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST

Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST."
* sourceSystemHSAId ^comment = "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1)."
* careContactId ^definition = "Begränsar sökningen till den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet."
* careContactId ^comment = "TKB-fält: `careContactId` (`string`, kardinalitet 0..*)."
