// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetMaternityMedicalHistoryFieldDescriptions
* maternityMedicalRecord ^definition = "En moders mödravårdsjournal."
* maternityMedicalRecord ^comment = "TKB-fält: `maternityMedicalRecord` (`MaternityMedicalRecordType`, kardinalitet 0..*).

**Modellanteckning:** En moders mödravårdsjournal.
RIV-TA-typ: MaternityMedicalRecordType. Kardinalitet i TKB: 0..*."
* maternityMedicalRecord.maternityMedicalRecordHeader ^definition = "Innehåller basinformation om dokumentet."
* maternityMedicalRecord.maternityMedicalRecordHeader ^comment = "TKB-fält: `../maternityMedicalRecordHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.documentId ^definition = "Dokumentets identitet som är unik inom källsystemet.

Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* maternityMedicalRecord.maternityMedicalRecordHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.sourceSystemHSAId ^definition = "HSAid för det system som dokumentet är skapat i."
* maternityMedicalRecord.maternityMedicalRecordHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.documentTitle ^definition = "Titel som beskriver den information som sänds i dokumentet."
* maternityMedicalRecord.maternityMedicalRecordHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.documentTime ^definition = "Första tidpunkten då denna journalinformation skapades hos tjänsteproducenten."
* maternityMedicalRecord.maternityMedicalRecordHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.patientId ^definition = "Id för modern.

id sätts till patientens identifierare, anges med 12 siffror utan avskiljare.

Type sätts till OID för typ av identifierare.

För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).

För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).

För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)"
* maternityMedicalRecord.maternityMedicalRecordHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.authorTime ^definition = "Tidpunkt vid vilken journalinformationen skapades eller senast uppdaterades hos tjänsteproducenten. I de fall då journalinformationen skapats i ett annat informationssystem (t.ex. laboratoriesystem eller annan remittents journalsystem) är det tidpunkten då journalinformationen ursprungligen skapades som ska anges."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "Författarens HSA-id."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 1..1).

**Modellanteckning:** Författarens HSA-id.
RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Författarens namn."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1).

**Modellanteckning:** Författarens namn.
RIV-TA-typ: string. Kardinalitet i TKB: 0..1."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om författarens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** Information om författarens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.
RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
Delelement enligt TKB:
- code (string, 0..1): Befattningskod. Om code anges ska också codeSystem samt displayName anges.
- codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.
- codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.
- codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.
- displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges.
- originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som författaren är uppdragstagare på."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`)."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för den organisation som författaren är uppdragstagare på."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på den organisation som författaren är uppdragstagare på."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^definition = "Epost till enhet."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^definition = "Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:

”Storgatan 12

468 91 Lilleby”"
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för Vårdenhet. [Regel 1]"
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 1..1).

**Modellanteckning:** HSA-id för Vårdenhet. [Regel 1]
RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1."
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. [Regel 1]"
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt för signering."
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).

**Modellanteckning:** Tidpunkt för signering.
RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1."
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för person som signerat dokumentet."
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIDType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namnen i klartext för signerande person."
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorRoleCode ^definition = "Ska ej anges."
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorRoleCode ^comment = "TKB-fält: `../../../legalAuthenticatorRoleCode` (kardinalitet 0..0).

**Modellanteckning:** Ska ej anges.
RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0."
* maternityMedicalRecord.maternityMedicalRecordBody ^definition = "Kan bestå av antingen en registrationRecord, en pregnancyCheckupRecord eller en postDeliveryRecord."
* maternityMedicalRecord.maternityMedicalRecordBody ^comment = "TKB-fält: `../maternityMedicalRecordBody` (`MaternityMedicalRecordBodyType`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord ^definition = "Information som registreras vid inskrivningsbesöket."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord ^comment = "TKB-fält: `../../registrationRecord` (`RegistrationRecordType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.lastMenstrualPeriod ^definition = "Datum för senaste menstruation"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.lastMenstrualPeriod ^comment = "TKB-fält: `../../../lastMenstrualPeriod` (`DateType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.indicationPregnancy ^definition = "Datum för graviditetsindikation"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.indicationPregnancy ^comment = "TKB-fält: `../../../indicationPregnancy` (`DateType`, kardinalitet 0..1).

**Modellanteckning:** Datum för graviditetsindikation
RIV-TA-typ: DateType. Kardinalitet i TKB: 0..1."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.contraceptiveDiscontinued ^definition = "Datum för när moder upphört med preventivtablett"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.contraceptiveDiscontinued ^comment = "TKB-fält: `../../../contraceptiveDiscontinued` (`DateType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromLastMenstrualPeriod ^definition = "Beräknad förlossning enligt sista menstruation"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromLastMenstrualPeriod ^comment = "TKB-fält: `../../../expectedDayOfDeliveryFromLastMenstrualPeriod` (`DateType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromUltrasoundScan ^definition = "Beräknad förlossning enligt ultraljud"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromUltrasoundScan ^comment = "TKB-fält: `../../../expectedDayOfDeliveryFromUltrasoundScan` (`DateType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromEmbryonicTransfer ^definition = "Beräknad förlossning enligt embryonik transfer"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromEmbryonicTransfer ^comment = "TKB-fält: `../../../expectedDayOfDeliveryFromEmbryonicTransfer` (`DateType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length ^definition = "Längd vid inskrivning"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length ^comment = "TKB-fält: `../../../length` (`PQType`, kardinalitet 0..1).

**Modellanteckning:** Längd vid inskrivning
RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight ^definition = "Vikt vid inskrivning [massa]"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight ^comment = "TKB-fält: `../../../weight` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex ^definition = "BMI vid inskrivning [massa/yta]"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex ^comment = "TKB-fält: `../../../bodyMassIndex` (`PQType`, kardinalitet 0..1).

**Modellanteckning:** BMI vid inskrivning [massa/yta]
RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.infertility ^definition = "Antal år med ofrivillig barnlöshet (decimaltal)"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.infertility ^comment = "TKB-fält: `../../../infertility` (`decimal`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity ^definition = "Tidigare graviditeter och förlossningar"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity ^comment = "TKB-fält: `../../../previousGravidityAndParity` (`PreviousGravidityAndParityType`, kardinalitet 0..*)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.year ^definition = "År för tidigare graviditet eller förlossning"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.year ^comment = "TKB-fält: `../../../../year` (`int`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.month ^definition = "Månad för tidigare graviditet eller förlossning"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.month ^comment = "TKB-fält: `../../../../month` (`int`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.delivery ^definition = "Graviditet förlossning enligt kodverk:"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.delivery ^comment = "TKB-fält: `../../../../delivery` (`DeliveryCodeEnum`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.healthcareFacility ^definition = "Sjukhus"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.healthcareFacility ^comment = "TKB-fält: `../../../../healthcareFacility` (`string`, kardinalitet 0..1).

**Modellanteckning:** Sjukhus
RIV-TA-typ: string. Kardinalitet i TKB: 0..1."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.progress ^definition = "Förlopp"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.progress ^comment = "TKB-fält: `../../../../progress` (`string`, kardinalitet 0..1).

**Modellanteckning:** Förlopp
RIV-TA-typ: string. Kardinalitet i TKB: 0..1."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.sex ^definition = "Kön, giltiga värden 0,1,2 och 9 enligt kodverk med OID 1.2.752.129.2.2.1.1:

0 = okänt,

1 = man,

2 = kvinna,

9 = ej tillämpligt"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.sex ^comment = "TKB-fält: `../../../../sex` (`SexCodeEnum`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild ^definition = "Barnets vikt [massa]"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild ^comment = "TKB-fält: `../../../../weightOfChild` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.gestation ^definition = "Graviditetsvecka."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.gestation ^comment = "TKB-fält: `../../../../gestation` (`int`, kardinalitet 0..1).

**Modellanteckning:** Graviditetsvecka.
RIV-TA-typ: int. Kardinalitet i TKB: 0..1."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesThrombosis ^definition = "Trombos (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesThrombosis ^comment = "TKB-fält: `../../../diseasesThrombosis` (`bool`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesEndocineDiseases ^definition = "Endokrina sjukdomar (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesEndocineDiseases ^comment = "TKB-fält: `../../../diseasesEndocineDiseases` (`bool`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesRecurrentUrinaryTractInfections ^definition = "Upprepade urinvägsinfektioner (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesRecurrentUrinaryTractInfections ^comment = "TKB-fält: `../../../diseasesRecurrentUrinaryTractInfections` (`bool`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesDiabetesMellitus ^definition = "Diabetes mellitus (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesDiabetesMellitus ^comment = "TKB-fält: `../../../diseasesDiabetesMellitus` (`bool`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy ^definition = "Före inskrivning under graviditet: medicinering"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy ^comment = "TKB-fält: `../../../medicationDuringPregnacy` (`MedicationType`, kardinalitet 0..*)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.medicament ^definition = "Preparat"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.medicament ^comment = "TKB-fält: `../../../../medicament` (`string`, kardinalitet 1..1).

**Modellanteckning:** Preparat
RIV-TA-typ: string. Kardinalitet i TKB: 1..1."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.dosage ^definition = "Dosering i beskrivande text"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.dosage ^comment = "TKB-fält: `../../../../dosage` (`string`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.assessmentAtFirstContactStandardCare ^definition = "Bedömning vid 1:a besök: basprogram (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.assessmentAtFirstContactStandardCare ^comment = "TKB-fält: `../../../assessmentAtFirstContactStandardCare` (`bool`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord ^definition = "Graviditetskontroll"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord ^comment = "TKB-fält: `../../pregnancyCheckupRecord` (`PregnancyCheckupRecordType`, kardinalitet 0..1).

**Modellanteckning:** Graviditetskontroll
RIV-TA-typ: PregnancyCheckupRecordType. Kardinalitet i TKB: 0..1."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.completeWeeksOfGestation ^definition = "Fullgångna graviditetsveckor"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.completeWeeksOfGestation ^comment = "TKB-fält: `../../../completeWeeksOfGestation` (`int`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight ^definition = "Moderns vikt [massa]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight ^comment = "TKB-fält: `../../../weight` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight ^definition = "Symfys-fundus mått [längd]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight ^comment = "TKB-fält: `../../../symphysisFundalHeight` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin ^definition = "Hb (Hemoglobin) [massa

volym]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin ^comment = "TKB-fält: `../../../haemoglobin` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic ^definition = "Systoliskt blodtryck [tryck]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic ^comment = "TKB-fält: `../../../bloodPressureSystolic` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic ^definition = "Diastoliskt blodtryck [tryck]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic ^comment = "TKB-fält: `../../../bloodPressureDiastolic` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria ^definition = "Proteinuri - Protein i urinet [massa

volym]

Mängden protein ska alltså anges i g/l eller motsvarande. Använd INTE mätstickans kodning (0, 1+, 2+…)"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria ^comment = "TKB-fält: `../../../proteinuria` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria ^definition = "Glucosuri - Glucos i urinet [antal

volym]

Förväntad enhet är mmol/l. Använd INTE mätstickans kodning (0, 1+, 2+…)

OBS! U på svenska men y på engelska (ICD10)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria ^comment = "TKB-fält: `../../../glycosuria` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPosition ^definition = "Fosterläge enligt kodverk:

0 = head (huvud )

1 = breech (säte)

2 = oblique (snedläge)

3 = transverse (tvärläge)"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPosition ^comment = "TKB-fält: `../../../fetalPosition` (`FetalPositionCodeEnum`, kardinalitet 0..*)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPresentation ^definition = "Föregående fosterdel enligt kodverk:

0= mobile (rörligt),

1 = movable (ruckbart),

2 = fixed (fix)"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPresentation ^comment = "TKB-fält: `../../../fetalPresentation` (`FetalPresentationCodeEnum`, kardinalitet 0..*)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate ^definition = "Fosterljud, hjärtslag, ex. bpm [frekvens]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate ^comment = "TKB-fält: `../../../fetalHeartRate` (`PQType`, kardinalitet 0..*)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.typeOfLeave ^definition = "Typ av ledighet enligt kodverk

0 = Sjukskrivning,

1 = Havandekapsledighet,

2 = Föräldrarledighet"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.typeOfLeave ^comment = "TKB-fält: `../../../typeOfLeave` (`TypeOfLeaveCodeEnum`, kardinalitet 0..*)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration ^definition = "Läkemedel (även kostpreparat) som administrerats sedan registreringen

föregående ”checkup”."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration ^comment = "TKB-fält: `../../../medicationSinceRegistration` (`MedicationType`, kardinalitet 0..*)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.medicament ^definition = "Preparat"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.medicament ^comment = "TKB-fält: `../../../../medicament` (`string`, kardinalitet 1..1).

**Modellanteckning:** Preparat
RIV-TA-typ: string. Kardinalitet i TKB: 1..1."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.dosage ^definition = "Dosering i beskrivande text"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.dosage ^comment = "TKB-fält: `../../../../dosage` (`string`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord ^definition = "Efterskötning"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord ^comment = "TKB-fält: `../../postDeliveryRecord` (`PostDeliveryRecordType`, kardinalitet 0..1).

**Modellanteckning:** Efterskötning
RIV-TA-typ: PostDeliveryRecordType. Kardinalitet i TKB: 0..1."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord ^definition = "Efterskötningsjournal, moder"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord ^comment = "TKB-fält: `../../../motherPostDeliveryRecord` (`MotherPostDeliveryRecordType`, kardinalitet 1..1).

**Modellanteckning:** Efterskötningsjournal, moder
RIV-TA-typ: MotherPostDeliveryRecordType. Kardinalitet i TKB: 1..1."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.breastfeeding ^definition = "Ammar (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.breastfeeding ^comment = "TKB-fält: `../../../../breastfeeding` (`boolean`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic ^definition = "Systoliskt blodtryck [tryck]"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic ^comment = "TKB-fält: `../../../../bloodPressureSystolic` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic ^definition = "Diastoliskt blodtryck [tryck]"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic ^comment = "TKB-fält: `../../../../bloodPressureDiastolic` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin ^definition = "Haemoglobin, t.ex. g/L [massa

volym]"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin ^comment = "TKB-fält: `../../../../haemoglobin` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bodyTemperature ^definition = "Kroppstemperatur"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bodyTemperature ^comment = "TKB-fält: `../../../../bodyTemperature` (`decimal`, kardinalitet 0..1).

**Modellanteckning:** Kroppstemperatur
RIV-TA-typ: decimal. Kardinalitet i TKB: 0..1."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.scarsOK ^definition = "Sår/bristningar/klipp utan anmärkning (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.scarsOK ^comment = "TKB-fält: `../../../../scarsOK` (`boolean`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.sutureRemoved ^definition = "Suturer borttagna (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.sutureRemoved ^comment = "TKB-fält: `../../../../sutureRemoved` (`boolean`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.perineumComfortable ^definition = "Bäckenbotten utan anmärkning (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.perineumComfortable ^comment = "TKB-fält: `../../../../perineumComfortable` (`boolean`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.vulvaVaginaPortioOK ^definition = "vulvaVaginaPortio utan anmärkning (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.vulvaVaginaPortioOK ^comment = "TKB-fält: `../../../../vulvaVaginaPortioOK` (`boolean`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusContracted ^definition = "Uterus utan anmärkning (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusContracted ^comment = "TKB-fält: `../../../../uterusContracted` (`boolean`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusNote ^definition = "Kommentar till uterus med anmärkning. Kan endast anges då uterusContracted = false"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusNote ^comment = "TKB-fält: `../../../../uterusNote` (`string`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord ^definition = "Efterskötningsjournal, för barn ur samma graviditet"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord ^comment = "TKB-fält: `../../../childPostDeliveryRecord` (`ChildPostDeliveryRecordTypeType`, kardinalitet 1..*)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.ordinalNumber ^definition = "Ordningstal för barnet, med start på 1. Ju äldre barn desto lägre siffra."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.ordinalNumber ^comment = "TKB-fält: `../../../../ordinalNumber` (`integer`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight ^definition = "Barnets vikt [massa]"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight ^comment = "TKB-fält: `../../../../weight` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore1 ^definition = "Apgar (0..10) efter 1 minut"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore1 ^comment = "TKB-fält: `../../../../apgarScore1` (`int`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore5 ^definition = "Apgar (0..10) efter 5 minuter"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore5 ^comment = "TKB-fält: `../../../../apgarScore5` (`int`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore10 ^definition = "Apgar (0..10) efter 10 minuter"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore10 ^comment = "TKB-fält: `../../../../apgarScore10` (`int`, kardinalitet 0..1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1)."
* result.subCode ^definition = "Inga subkoder är specificerade."
* result.subCode ^comment = "TKB-fält: `../subcode` (`string`, kardinalitet 0..1)."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
