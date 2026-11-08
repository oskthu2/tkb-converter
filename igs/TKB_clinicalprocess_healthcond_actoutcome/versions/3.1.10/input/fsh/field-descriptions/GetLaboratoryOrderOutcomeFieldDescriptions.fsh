// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetLaboratoryOrderOutcomeFieldDescriptions
* laboratoryOrderOutcome ^definition = "Returnerar en patients laboratoriesvar."
* laboratoryOrderOutcome ^comment = "TKB-fält: `laboratoryOrderOutcome` (`LaboratoryOrderOutcomeType`, kardinalitet 0..*)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader ^definition = "Innehåller basinformation om dokumentet"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader ^comment = "TKB-fält: `../laboratoryOrderOutcomeHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentId ^definition = "Unik identifierare för undersökningsresultatet. Identitet ska vara unik inom källsystemet

Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.sourceSystemHSAId ^definition = "HSAid för det system som dokumentet är skapat i."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTitle ^definition = "Ska ej anges."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (kardinalitet 0..0)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTime ^definition = "Tidpunkten då laboratoriesvaret inkom till beställarens vårdinformationssystem"
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.patientId ^definition = "Id för patienten."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional ^definition = "Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, nedan kallad författare."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator ^definition = "Information om vem som signerat informationen i dokumentet. Det är normalt laboratorieläkeren som signerar laboratoriesvar.

Signering = signering av remissvar. Vidimering anges i attributet attested i bodyn."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.careContactId ^definition = "Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullified ^definition = "Ska ej anges."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullified ^comment = "TKB-fält: `../../nullified` (kardinalitet 0..0)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullifiedReason ^definition = "Ska ej anges."
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullifiedReason ^comment = "TKB-fält: `../../nullifiedReason` (kardinalitet 0..0)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody ^comment = "TKB-fält: `../laboratoryOrderOutcomeBody` (`LaboratoryOrderOutcomeBodyType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultType ^definition = "Text som anger vilken typ av svar som avses.

DEF = Definitivsvar

TILL = Tilläggssvar

Den senaste statusen är den som ska skickas med."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultType ^comment = "TKB-fält: `../../resultType` (`string`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.registrationTime ^definition = "Tidpunkt då informationen om undersökningsresultatet lagrades i källsystemet.Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.registrationTime ^comment = "TKB-fält: `../../registrationTime` (`TimeStampType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.discipline ^definition = "Text som anger vilken typ av labenhet som undersökningsresultatet härrör från.

Tillåtet värde är \"Klinisk kemi\""
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.discipline ^comment = "TKB-fält: `../../discipline` (`string`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultReport ^definition = "Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultReport ^comment = "TKB-fält: `../../resultReport` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultComment ^definition = "Text som innehåller en kommentar avseende hela det lämnade svaret"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultComment ^comment = "TKB-fält: `../../resultComment` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional ^definition = "Information om den hälso-och sjukvårdspersonal som är ansvarig (”ansvarig labbläkare”) för undersökningsresultatet (svaret)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis ^definition = "Information om analystjänster som ligger till grund för ett undersökningsresultat"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis ^comment = "TKB-fält: `../../analysis` (`AnalysisType`, kardinalitet 0..*)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisId ^definition = "Unik identifierare för analystjänsten"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisId ^comment = "TKB-fält: `../../../analysisId` (`IIType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisTime ^definition = "Tidsangivelse för åtgärdens utförande. Här anges tiden för provtagningen.

Om start eller end saknas, ska det vid tidsurval tolkas som att båda är satta till samma tidpunkt."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisTime ^comment = "TKB-fält: `../../../analysisTime` (`TimePeriodType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisCode ^definition = "Kod och klartext som anger vilken åtgärd som avses, enligt kodverket NPU. Ett av attributen analysisCode och analysisText ska anges."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisCode ^comment = "TKB-fält: `../../../analysisCode` (`CVType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisText ^definition = "Text som anger vilken åtgärd som avses, om analysen ej finns kodad enligt NPU. Attributet åtgärdskod text används endast för svar som ej kan kodas enligt NPU. I åtgärdskod text anges endast analysens namn i klartext, dvs inga lokala koder. Ett av attributen analysisCode och analysisText ska anges."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisText ^comment = "TKB-fält: `../../../analysisText` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisStatus ^definition = "Text som anger åtgärdens status. Då det är möjligt ska KV åtgärdsstatus följas. Exempel från KV åtgärdsstatus:

Planerad, Pågående, Avklarad"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisStatus ^comment = "TKB-fält: `../../../analysisStatus` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisComment ^definition = "Text som innehåller en kommentar som avser den utförda analysen."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisComment ^comment = "TKB-fält: `../../../analysisComment` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.specimen ^definition = "Text som beskriver vilket typ av material som användes vid analysen. Ange provmaterial i klartext. Exempel: Plasma

Både provmaterial och lokalisation bör anges i klartext när så är lämpligt för aktuell undersökning. Exempel: Var höger fot\"."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.specimen ^comment = "TKB-fält: `../../../specimen` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.method ^definition = "Text som beskriver den metod som använts i analystjänsten."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.method ^comment = "TKB-fält: `../../../method` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis ^definition = "Anger samband med annan utförd analystjänst."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis ^comment = "TKB-fält: `../../../relationToAnalysis` (`RelationToAnalysisType`, kardinalitet 0..*)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis.analysisId ^definition = "Unik identifierare för analystjänsten."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis.analysisId ^comment = "TKB-fält: `../../../../analysisId` (`IIType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome ^definition = "Information om ett resultatet/utfallet av en analystjänst."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome ^comment = "TKB-fält: `../../../analysisOutcome` (`AnalysisOutcomeType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeValue ^definition = "Det specifika värdet för resultatet/utfallet."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeValue ^comment = "TKB-fält: `../../../../outcomeValue` (`string`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeUnit ^definition = "Text som anger i förekommande fall enheten för det angivna värdet"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeUnit ^comment = "TKB-fält: `../../../../outcomeUnit` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.observationTime ^definition = "Tidpunkt då iakttagelsen av resultatet gjordes"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.observationTime ^comment = "TKB-fält: `../../../../observationTime` (`TimeStampType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.pathologicalFlag ^definition = "Kod som anger om resultatet ligger utanför referensintervall. Sant = Ja, resultatet ligger utanför referens-intervall

Falskt = Nej, resultatet ligger inte utanför referens-intervall."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.pathologicalFlag ^comment = "TKB-fält: `../../../../pathologicalFlag` (`boolean`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeDescription ^definition = "Text som innehåller en kommentar avseende resultatet/utfallet."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeDescription ^comment = "TKB-fält: `../../../../outcomeDescription` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referenceInterval ^definition = "Text som innehåller det referensintervall som använts i analysen."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referenceInterval ^comment = "TKB-fält: `../../../../referenceInterval` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referencePopulation ^definition = "Text som beskriver den population som referensintervallet gäller för."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referencePopulation ^comment = "TKB-fält: `../../../../referencePopulation` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested ^definition = "Information om vidimering av enskild analys med tillhörande resultat. Finns attested är analysen vidimerad. Med vidimerad menas att information om analysen har lästs och den som läst har tagit ansvar."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested ^comment = "TKB-fält: `../../../attested` (`AttestedType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attestedTime ^definition = "Tidpunkten för vidimering"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attestedTime ^comment = "TKB-fält: `../../../../attestedTime` (`TimeStampType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterHSAId ^definition = "HSA-id för person som vidimerat"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterHSAId ^comment = "TKB-fält: `../../../../attesterHSAId` (`HSAIdType`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterName ^definition = "Namn på person som vidimerat"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterName ^comment = "TKB-fält: `../../../../attesterName` (`string`, kardinalitet 0..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order ^definition = "Information om en vårdbegäran som ligger till grund för svaret"
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order ^comment = "TKB-fält: `../../order` (`OrderType`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderId ^definition = "Unik identifierare för laboratorieremiss. Om laboratorieremiss (och således även unik identifierare) saknas, exempelvis då analys utförts på vårdavdelning anges en tom sträng."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderId ^comment = "TKB-fält: `../../../orderId` (`string`, kardinalitet 1..1)."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderReason ^definition = "Text som anger aktuell frågeställning."
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderReason ^comment = "TKB-fält: `../../../orderReason` (`string`, kardinalitet 0..1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).

**Modellanteckning:** errorCode Tillåtna värden: INVALID_REQUEST."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.subCode ^definition = "Inga subkoder är specificerade."
* result.subCode ^comment = "TKB-fält: `../subcode` (`string`, kardinalitet 0..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
