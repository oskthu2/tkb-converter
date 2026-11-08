// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAlertInformationFieldDescriptions
* alertInformation ^definition = "Den uppmärksamhetsinformation som matchar begäran."
* alertInformation ^comment = "TKB-fält: `alertInformation` (`AlertInformationType`, kardinalitet 0..*)."
* alertInformation.alertInformationHeader ^definition = "Innehåller basinformation om dokumentet"
* alertInformation.alertInformationHeader ^comment = "TKB-fält: `../alertInformationHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.documentId ^definition = "Dokumentets identitet som är unik inom källsystemet.

Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* alertInformation.alertInformationHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.sourceSystemHSAId ^definition = "HSA-id för det system tillgängliggör informationen."
* alertInformation.alertInformationHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.documentTitle ^definition = "N/A"
* alertInformation.alertInformationHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (kardinalitet 0..0)."
* alertInformation.alertInformationHeader.documentTime ^definition = "N/A"
* alertInformation.alertInformationHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (kardinalitet 0..0)."
* alertInformation.alertInformationHeader.patientId ^definition = "Identifierare för patient."
* alertInformation.alertInformationHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional ^definition = "Information om den hälso- och sjukvårdsperson som verifierat informationen i dokumentet."
* alertInformation.alertInformationHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.legalAuthenticator ^definition = "Information om vem som signerat informationen i dokumentet."
* alertInformation.alertInformationHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* alertInformation.alertInformationHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt för signering."
* alertInformation.alertInformationHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för person som signerat dokumentet"
* alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namnen i klartext för signerande person."
* alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* alertInformation.alertInformationHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* alertInformation.alertInformationHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* alertInformation.alertInformationHeader.careContactId ^definition = "Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet"
* alertInformation.alertInformationHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1)."
* alertInformation.alertInformationHeader.nullified ^definition = "N/A"
* alertInformation.alertInformationHeader.nullified ^comment = "TKB-fält: `../../nullified` (kardinalitet 0..0)."
* alertInformation.alertInformationHeader.nullifiedReason ^definition = "N/A"
* alertInformation.alertInformationHeader.nullifiedReason ^comment = "TKB-fält: `../../nullifiedReason` (kardinalitet 0..0)."
* alertInformation.alertInformationBody ^comment = "TKB-fält: `../alertInformationBody` (`AlertInformation / BodyType`, kardinalitet 1..1)."
* alertInformation.alertInformationBody.typeOfAlertInformation ^definition = "Kod som anger vilken typ av uppmärksamhetssignal som avses.

Använd t.ex.  KV Uppmärksamhetstyp eller KV Informationstyp.

Se regel 2"
* alertInformation.alertInformationBody.typeOfAlertInformation ^comment = "TKB-fält: `../../typeOfAlertInformation` (`CVType`, kardinalitet 1..1)."
* alertInformation.alertInformationBody.ascertainedDate ^definition = "Datum då förhållandet som föranledde uppmärksamhetssignalen konstaterades. Om inget specifikt datum för detta finns i källsystemet används

samma tid som starttiden i attributet giltighetstid."
* alertInformation.alertInformationBody.ascertainedDate ^comment = "TKB-fält: `../../ascertainedDate` (`DateType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.verifiedTime ^definition = "Den tidpunkt då uppmärksamhetssignalen verifierades i det lokala systemet"
* alertInformation.alertInformationBody.verifiedTime ^comment = "TKB-fält: `../../verifiedTime` (`TimeStampType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.validityTimePeriod ^definition = "Tidsintervallet inom vilket uppmärksamhetssignalen är giltig. Sluttidpunkt kan vara aktuellt att ange då man i förväg bedömer att uppmärksamhetssignalen har en sluttidpunkt (t.ex. för behandlingar)."
* alertInformation.alertInformationBody.validityTimePeriod ^comment = "TKB-fält: `../../validityTimePeriod` (`TimePeriodType`, kardinalitet 1..1)."
* alertInformation.alertInformationBody.alertInformationComment ^definition = "Text som innehåller en kommentar av den ansvarige hälso- och sjukvårdspersonalen angående uppmärksamhetssignalen. Vid läkemedelsöverkänslighet kan kommentaren avse en anamnes,

en beskrivning av den observerade reaktionen, en beskrivning av möjliga agens, föreliggande undersökningsresultat."
* alertInformation.alertInformationBody.alertInformationComment ^comment = "TKB-fält: `../../alertInformationComment` (`string`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.obsoleteTime ^definition = "Tidpunkt då uppmärksamhetssignalen registrerades som inaktuell i det lokala systemet. Används exempelvis om det uppmärksammade förhållandet bedöms som inte längre aktuellt trots att tidigare angiven gilitighetstid ej gått ut."
* alertInformation.alertInformationBody.obsoleteTime ^comment = "TKB-fält: `../../obsoleteTime` (`TimeStampType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.obsoleteComment ^definition = "Text som innehåller information om varför uppmärksamhetssignalen gjorts inaktuell."
* alertInformation.alertInformationBody.obsoleteComment ^comment = "TKB-fält: `../../obsoleteComment` (`string`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.hypersensitivity ^definition = "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges."
* alertInformation.alertInformationBody.hypersensitivity ^comment = "TKB-fält: `../../hypersensitivity` (`HyperSensitivityType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.hypersensitivity.typeOfHypersensitivity ^definition = "Kod som anger en precisering av vilken typ av överkänslighet som uppmärksamhetssignalen avser. Koden bör hämtas ur ICD10/SNOMED, [R13].

Exempel:

Läkemedelsöverkänslighet

Överkänslighet avs. födoämne

Överkänslighet avs. djur

Överkänslighet avs. växt

Överkänslighet av kemikalie"
* alertInformation.alertInformationBody.hypersensitivity.typeOfHypersensitivity ^comment = "TKB-fält: `../../../typeOfHypersensitivity` (`CVType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.hypersensitivity.degreeOfSeverity ^definition = "Kod som anger bedömning av överkänslighetens allvarlighet.

KV Allvarlighetsgrad (1.2.752.129.2.2.3.3), [R13]"
* alertInformation.alertInformationBody.hypersensitivity.degreeOfSeverity ^comment = "TKB-fält: `../../../degreeOfSeverity` (`CVType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.hypersensitivity.degreeOfCertainty ^definition = "Kod som innehåller en uppgift om med vilken visshet överkänsligheten är precis så som den har angivits.

KV Visshetsgrad (1.2.752.129.2.2.3.11)"
* alertInformation.alertInformationBody.hypersensitivity.degreeOfCertainty ^comment = "TKB-fält: `../../../degreeOfCertainty` (`CVType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity ^definition = "Mer detaljerad information om läkemedelsöverkänslighet."
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity ^comment = "TKB-fält: `../../../pharmaceuticalHypersensitivity` (`PharmaceuticalHypersensitivityType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.atcSubstance ^definition = "Kod och klartext som anger den substans, eller grupp av substanser, som kan förorsaka en överkänslighetsreaktion. ATC-kod på minst treställig nivå ska anges för en läkemedelsöverkänslighet med en allvarlighetsgrad livshotande eller skadande, [R13].

Om en ATC-kod ej kan anges ska attributen nonAtcSubstance

och nonATCSubstanceComment

användas."
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.atcSubstance ^comment = "TKB-fält: `../../../../atcSubstance` (`CVType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstance ^definition = "Text som anger benämning på aktiv substans som kan förorsaka en överkänslighetsreaktion.

Ska anges om attributet atcSubstance saknas."
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstance ^comment = "TKB-fält: `../../../../nonATCSubstance` (`string`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstanceComment ^definition = "Text som innehåller en förklaring till varför ej ATC-kod används.

Ska anges om attributet atcSubstance saknas."
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstanceComment ^comment = "TKB-fält: `../../../../nonATCSubstanceComment` (`string`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.pharmaceuticalProductId ^definition = "Identifierare för aktuell läkemedelsprodukt som kan orsaka överkänslighet.

NPL-id (1.2.752.129.2.1.5.1)."
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.pharmaceuticalProductId ^comment = "TKB-fält: `../../../../pharmaceuticalProductId` (`CVType`, kardinalitet 0..*)."
* alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity ^definition = "Mer detaljerad information om överkänsligheten. Kan användas för annan överkänslighet än läkemedelsöverkänslighet."
* alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity ^comment = "TKB-fält: `../../../otherHypersensitivity` (`OtherHypersensitivityType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgent ^definition = "Text som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion.

Bör anges."
* alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgent ^comment = "TKB-fält: `../../../../hypersensitivityAgent` (`string`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgentCode ^definition = "Text som anger den kod som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion. Exempelvis kan LMK-kod för överkänslighet födoämne eller CAS-kod för överkänslighet kemikalie användas. Kan användas för annan överkänslighet än läkemedelsöverkänslighet."
* alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgentCode ^comment = "TKB-fält: `../../../../hypersensitivityAgentCode` (`CVType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.seriousDisease ^definition = "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges."
* alertInformation.alertInformationBody.seriousDisease ^comment = "TKB-fält: `../../seriousDisease` (`SeriousDiseaseType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.seriousDisease.disease ^definition = "Kod som beskriver en allvarlig sjukdom som hälso- och sjukvårdstagaren har och som en hälso- och sjukvårdspersonen vill göra andra uppmärksammade på (avsaknad av kunskap om att hälso- och sjukvårdstagaren har denna sjukdom skulle kunna innebära ett allvarligt hot för liv eller hälsa för hälso- och sjukvårdstagaren). Bör anges enligt ICD10/SNOMED, [R13]."
* alertInformation.alertInformationBody.seriousDisease.disease ^comment = "TKB-fält: `../../../disease` (`CVType`, kardinalitet 1..1)."
* alertInformation.alertInformationBody.treatment ^definition = "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation))."
* alertInformation.alertInformationBody.treatment ^comment = "TKB-fält: `../../treatment` (`TreatmentType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.treatment.treatmentDescription ^definition = "Text som beskriver en allvarlig behandling som hälso- och sjukvårdstagaren genomgår och som en hälso- och sjukvårdspersonal vill göra andra uppmärksammade på (avsaknad av kunskap om att hälso- och sjukvårdstagaren har denna behandling skulle kunna innebära ett allvarligt hot för liv eller hälsa för hälso- och sjukvårdstagaren)."
* alertInformation.alertInformationBody.treatment.treatmentDescription ^comment = "TKB-fält: `../../../treatmentDescription` (`string`, kardinalitet 1..1)."
* alertInformation.alertInformationBody.treatment.treatmentCode ^definition = "En preciserad uppgift om behandlingen. Bör anges med KVÅ-kod (1.2.752.116.1.3.2.1.4)"
* alertInformation.alertInformationBody.treatment.treatmentCode ^comment = "TKB-fält: `../../../treatmentCode` (`CVType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.treatment.pharmaceuticalTreatment ^definition = "Kod och klartext som anger uppgift om den eller de läkemedel som används vid en uppmärksammad behandling.

ATC-kod (1.2.752.129.2.2.3.1.1), [R13]."
* alertInformation.alertInformationBody.treatment.pharmaceuticalTreatment ^comment = "TKB-fält: `../../../pharmaceuticalTreatment` (`CVType`, kardinalitet 0..*)."
* alertInformation.alertInformationBody.communicableDisease ^definition = "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation))."
* alertInformation.alertInformationBody.communicableDisease ^comment = "TKB-fält: `../../communicableDisease` (`CommunicableDiseaseType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.communicableDisease.communicableDiseaseCode ^definition = "Kod. Om code anges måste också codeSystem och displayName också anges."
* alertInformation.alertInformationBody.communicableDisease.communicableDiseaseCode ^comment = "TKB-fält: `../../../../code` (`string`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* alertInformation.alertInformationBody.communicableDisease.routeOfTransmission ^definition = "Kod som anger hur den uppmärksammade sjukdomen smittar. Obligatorisk uppgift om det styrs av författning. KV Smittväg."
* alertInformation.alertInformationBody.communicableDisease.routeOfTransmission ^comment = "TKB-fält: `../../../routeOfTransmission` (`CVType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.restrictionOfCare ^definition = "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). Denna klass skiljer sig sig något från motsvarigheten i Varning2-infospec."
* alertInformation.alertInformationBody.restrictionOfCare ^comment = "TKB-fält: `../../restrictionOfCare` (`RestrictionOfCareType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.restrictionOfCare.restrictionOfCareComment ^definition = "Text som innehåller information om ett uppmärskammat förhållande som inte avser överkänslighet, annat medicinskt tillstånd, behandling eller arbetsmiljörisk."
* alertInformation.alertInformationBody.restrictionOfCare.restrictionOfCareComment ^comment = "TKB-fält: `../../../restrictionOfCareComment` (`string`, kardinalitet 1..1)."
* alertInformation.alertInformationBody.unstructuredAlertInformation ^definition = "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation))."
* alertInformation.alertInformationBody.unstructuredAlertInformation ^comment = "TKB-fält: `../../unstructuredAlertInformation` (`UnstructuredAlertInformationType`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationHeading ^definition = "Text som innehåller en beskrivande rubrik för en tidigare utfärdad varning. Ska anges om typ av uppmärksamhetssignal = historisk varning. Avser tidigare varningsinformation i systemet vilken inte har preciserats enligt NPÖ-strukturen."
* alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationHeading ^comment = "TKB-fält: `../../../unstructuredAlertInformationHeading` (`string`, kardinalitet 1..1)."
* alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationContent ^definition = "Text som beskriver vad varningen gäller, samt viss administrativ information. Ska anges om typ av uppmärksamhetssignal = historisk varning. Avser tidigare varningsinformation i systemet vilken inte har preciserats enligt NPÖ-strukturen."
* alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationContent ^comment = "TKB-fält: `../../../unstructuredAlertInformationContent` (`string`, kardinalitet 1..1)."
* alertInformation.alertInformationBody.relatedAlertInformation ^definition = "Information om samband uppmärksamhetssignal"
* alertInformation.alertInformationBody.relatedAlertInformation ^comment = "TKB-fält: `../../relatedAlertInformation` (`RelatedAlertInformationType`, kardinalitet 0..*)."
* alertInformation.alertInformationBody.relatedAlertInformation.typeOfAlertInformationRelationship ^definition = "Text som anger vilken typ av samband som avses. KV Samband (1.2.752.129.2.2.2.4), [R13]."
* alertInformation.alertInformationBody.relatedAlertInformation.typeOfAlertInformationRelationship ^comment = "TKB-fält: `../../../typeOfAlertInformationRelationship` (`CVType`, kardinalitet 1..1)."
* alertInformation.alertInformationBody.relatedAlertInformation.relationComment ^definition = "Text som innehåller en kommentar till det aktuella sambandet"
* alertInformation.alertInformationBody.relatedAlertInformation.relationComment ^comment = "TKB-fält: `../../../relationComment` (`string`, kardinalitet 0..1)."
* alertInformation.alertInformationBody.relatedAlertInformation.documentId ^definition = "Lokalt unik identitet för relaterad uppmärksamhetssignal"
* alertInformation.alertInformationBody.relatedAlertInformation.documentId ^comment = "TKB-fält: `../../../documentId` (`string`, kardinalitet 1..*)."
* result ^definition = "Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
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
