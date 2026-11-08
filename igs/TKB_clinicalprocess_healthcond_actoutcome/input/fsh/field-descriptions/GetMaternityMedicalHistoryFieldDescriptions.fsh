// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetMaternityMedicalHistoryFieldDescriptions
* maternityMedicalRecord ^definition = "En moders mödravårdsjournal."
* maternityMedicalRecord ^comment = "TKB-fält: `maternityMedicalRecord` (`MaternityMedicalRecordType`, kardinalitet 0..*)."
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
* maternityMedicalRecord.maternityMedicalRecordHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* maternityMedicalRecord.maternityMedicalRecordHeader.patientId ^definition = "Id för modern.

id sätts till patientens identifierare, anges med 12 siffror utan avskiljare.

Type sätts till OID för typ av identifierare.

För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).

För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).

För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)"
* maternityMedicalRecord.maternityMedicalRecordHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt för signering."
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för person som signerat dokumentet."
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIDType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody ^definition = "Kan bestå av antingen en registrationRecord, en pregnancyCheckupRecord eller en postDeliveryRecord."
* maternityMedicalRecord.maternityMedicalRecordBody ^comment = "TKB-fält: `../maternityMedicalRecordBody` (`MaternityMedicalRecordBodyType`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord ^definition = "Information som registreras vid inskrivningsbesöket."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord ^comment = "TKB-fält: `../../registrationRecord` (`RegistrationRecordType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.lastMenstrualPeriod ^definition = "Datum för senaste menstruation"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.lastMenstrualPeriod ^comment = "TKB-fält: `../../../lastMenstrualPeriod` (`DateType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.indicationPregnancy ^definition = "Datum för graviditetsindikation"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.indicationPregnancy ^comment = "TKB-fält: `../../../indicationPregnancy` (`DateType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.contraceptiveDiscontinued ^definition = "Datum för när moder upphört med preventivtablett"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.contraceptiveDiscontinued ^comment = "TKB-fält: `../../../contraceptiveDiscontinued` (`DateType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromLastMenstrualPeriod ^definition = "Beräknad förlossning enligt sista menstruation"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromLastMenstrualPeriod ^comment = "TKB-fält: `../../../expectedDayOfDeliveryFromLastMenstrualPeriod` (`DateType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromUltrasoundScan ^definition = "Beräknad förlossning enligt ultraljud"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromUltrasoundScan ^comment = "TKB-fält: `../../../expectedDayOfDeliveryFromUltrasoundScan` (`DateType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromEmbryonicTransfer ^definition = "Beräknad förlossning enligt embryonik transfer"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromEmbryonicTransfer ^comment = "TKB-fält: `../../../expectedDayOfDeliveryFromEmbryonicTransfer` (`DateType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length ^definition = "Längd vid inskrivning"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length ^comment = "TKB-fält: `../../../length` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight ^definition = "Vikt vid inskrivning [massa]"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight ^comment = "TKB-fält: `../../../weight` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex ^definition = "BMI vid inskrivning [massa/yta]"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex ^comment = "TKB-fält: `../../../bodyMassIndex` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.infertility ^definition = "Antal år med ofrivillig barnlöshet (decimaltal)"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.infertility ^comment = "TKB-fält: `../../../infertility` (`decimal`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity ^definition = "Tidigare graviditeter och förlossningar"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity ^comment = "TKB-fält: `../../../previousGravidityAndParity` (`PreviousGravidityAndParityType`, kardinalitet 0..*)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.year ^definition = "År för tidigare graviditet eller förlossning"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.year ^comment = "TKB-fält: `../../../../year` (`int`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.month ^definition = "Månad för tidigare graviditet eller förlossning"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.month ^comment = "TKB-fält: `../../../../month` (`int`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.delivery ^definition = "Graviditet förlossning enligt kodverk:"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.delivery ^comment = "TKB-fält: `../../../../delivery` (`DeliveryCodeEnum`, kardinalitet 0..1).

**Modellanteckning:** delivery Tillåtna värden: 0, 1, 2, 4, 5."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.healthcareFacility ^definition = "Sjukhus"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.healthcareFacility ^comment = "TKB-fält: `../../../../healthcareFacility` (`string`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.progress ^definition = "Förlopp"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.progress ^comment = "TKB-fält: `../../../../progress` (`string`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.sex ^definition = "Kön, giltiga värden 0,1,2 och 9 enligt kodverk med OID 1.2.752.129.2.2.1.1:

0 = okänt,

1 = man,

2 = kvinna,

9 = ej tillämpligt"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.sex ^comment = "TKB-fält: `../../../../sex` (`SexCodeEnum`, kardinalitet 0..1).

**Modellanteckning:** sex Tillåtna värden: 0, 1, 2, 9."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild ^definition = "Barnets vikt [massa]"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild ^comment = "TKB-fält: `../../../../weightOfChild` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.gestation ^definition = "Graviditetsvecka."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.gestation ^comment = "TKB-fält: `../../../../gestation` (`int`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesThrombosis ^definition = "Trombos (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesThrombosis ^comment = "TKB-fält: `../../../diseasesThrombosis` (`boolean`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesEndocineDiseases ^definition = "Endokrina sjukdomar (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesEndocineDiseases ^comment = "TKB-fält: `../../../diseasesEndocineDiseases` (`boolean`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesRecurrentUrinaryTractInfections ^definition = "Upprepade urinvägsinfektioner (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesRecurrentUrinaryTractInfections ^comment = "TKB-fält: `../../../diseasesRecurrentUrinaryTractInfections` (`boolean`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesDiabetesMellitus ^definition = "Diabetes mellitus (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesDiabetesMellitus ^comment = "TKB-fält: `../../../diseasesDiabetesMellitus` (`boolean`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy ^definition = "Före inskrivning under graviditet: medicinering"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy ^comment = "TKB-fält: `../../../medicationDuringPregnacy` (`MedicationType`, kardinalitet 0..*)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.medicament ^definition = "Preparat"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.medicament ^comment = "TKB-fält: `../../../../medicament` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.dosage ^definition = "Dosering i beskrivande text"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.dosage ^comment = "TKB-fält: `../../../../dosage` (`string`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.assessmentAtFirstContactStandardCare ^definition = "Bedömning vid 1:a besök: basprogram (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.assessmentAtFirstContactStandardCare ^comment = "TKB-fält: `../../../assessmentAtFirstContactStandardCare` (`boolean`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord ^definition = "Graviditetskontroll"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord ^comment = "TKB-fält: `../../pregnancyCheckupRecord` (`PregnancyCheckupRecordType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.completeWeeksOfGestation ^definition = "Fullgångna graviditetsveckor"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.completeWeeksOfGestation ^comment = "TKB-fält: `../../../completeWeeksOfGestation` (`int`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight ^definition = "Moderns vikt [massa]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight ^comment = "TKB-fält: `../../../weight` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight ^definition = "Symfys-fundus mått [längd]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight ^comment = "TKB-fält: `../../../symphysisFundalHeight` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin ^definition = "Hb (Hemoglobin) [massa

volym]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin ^comment = "TKB-fält: `../../../haemoglobin` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic ^definition = "Systoliskt blodtryck [tryck]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic ^comment = "TKB-fält: `../../../bloodPressureSystolic` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic ^definition = "Diastoliskt blodtryck [tryck]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic ^comment = "TKB-fält: `../../../bloodPressureDiastolic` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria ^definition = "Proteinuri - Protein i urinet [massa

volym]

Mängden protein ska alltså anges i g/l eller motsvarande. Använd INTE mätstickans kodning (0, 1+, 2+…)"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria ^comment = "TKB-fält: `../../../proteinuria` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria ^definition = "Glucosuri - Glucos i urinet [antal

volym]

Förväntad enhet är mmol/l. Använd INTE mätstickans kodning (0, 1+, 2+…)

OBS! U på svenska men y på engelska (ICD10)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria ^comment = "TKB-fält: `../../../glycosuria` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPosition ^definition = "Fosterläge enligt kodverk:

0 = head (huvud )

1 = breech (säte)

2 = oblique (snedläge)

3 = transverse (tvärläge)"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPosition ^comment = "TKB-fält: `../../../fetalPosition` (`FetalPositionCodeEnum`, kardinalitet 0..*).

**Modellanteckning:** fetalPosition Tillåtna värden: 0, 1, 2, 3."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPresentation ^definition = "Föregående fosterdel enligt kodverk:

0= mobile (rörligt),

1 = movable (ruckbart),

2 = fixed (fix)"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPresentation ^comment = "TKB-fält: `../../../fetalPresentation` (`FetalPresentationCodeEnum`, kardinalitet 0..*).

**Modellanteckning:** fetalPresentation Tillåtna värden: 0, 1, 2, 3."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate ^definition = "Fosterljud, hjärtslag, ex. bpm [frekvens]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate ^comment = "TKB-fält: `../../../fetalHeartRate` (`PQType`, kardinalitet 0..*)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.typeOfLeave ^definition = "Typ av ledighet enligt kodverk

0 = Sjukskrivning,

1 = Havandekapsledighet,

2 = Föräldrarledighet"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.typeOfLeave ^comment = "TKB-fält: `../../../typeOfLeave` (`TypeOfLeaveCodeEnum`, kardinalitet 0..*).

**Modellanteckning:** typeOfLeave Tillåtna värden: 0, 1, 2."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration ^definition = "Läkemedel (även kostpreparat) som administrerats sedan registreringen

föregående ”checkup”."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration ^comment = "TKB-fält: `../../../medicationSinceRegistration` (`MedicationType`, kardinalitet 0..*)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.medicament ^definition = "Preparat"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.medicament ^comment = "TKB-fält: `../../../../medicament` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.dosage ^definition = "Dosering i beskrivande text"
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.dosage ^comment = "TKB-fält: `../../../../dosage` (`string`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord ^definition = "Efterskötning"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord ^comment = "TKB-fält: `../../postDeliveryRecord` (`PostDeliveryRecordType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord ^definition = "Efterskötningsjournal, moder"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord ^comment = "TKB-fält: `../../../motherPostDeliveryRecord` (`MotherPostDeliveryRecordType`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic ^definition = "Systoliskt blodtryck [tryck]"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic ^comment = "TKB-fält: `../../../../bloodPressureSystolic` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic ^definition = "Diastoliskt blodtryck [tryck]"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic ^comment = "TKB-fält: `../../../../bloodPressureDiastolic` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin ^definition = "Haemoglobin, t.ex. g/L [massa

volym]"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin ^comment = "TKB-fält: `../../../../haemoglobin` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bodyTemperature ^definition = "Kroppstemperatur"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bodyTemperature ^comment = "TKB-fält: `../../../../bodyTemperature` (`decimal`, kardinalitet 0..1)."
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
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.breastfeeding ^definition = "Ammar (true/false)"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.breastfeeding ^comment = "TKB-fält: `../../../../breastfeeding` (`boolean`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord ^definition = "Efterskötningsjournal, för barn ur samma graviditet"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord ^comment = "TKB-fält: `../../../childPostDeliveryRecord` (`ChildPostDeliveryRecordTypeType`, kardinalitet 1..*)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.ordinalNumber ^definition = "Ordningstal för barnet, med start på 1. Ju äldre barn desto lägre siffra."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.ordinalNumber ^comment = "TKB-fält: `../../../../ordinalNumber` (`integer`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight ^definition = "Barnets vikt [massa]"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight ^comment = "TKB-fält: `../../../../weight` (`PQType`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight.value ^definition = "Mätetal mätt i enheten som anges av ”unit”."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight.value ^comment = "TKB-fält i PQType: `value` (`decimal-primitive`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight.unit ^definition = "Enhet enligt [http://unitsofmeasure.org/ucum.html UCUM]"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight.unit ^comment = "TKB-fält i PQType: `unit` (`string`, kardinalitet 1..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore1 ^definition = "Apgar (0..10) efter 1 minut"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore1 ^comment = "TKB-fält: `../../../../apgarScore1` (`int`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore5 ^definition = "Apgar (0..10) efter 5 minuter"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore5 ^comment = "TKB-fält: `../../../../apgarScore5` (`int`, kardinalitet 0..1)."
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore10 ^definition = "Apgar (0..10) efter 10 minuter"
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore10 ^comment = "TKB-fält: `../../../../apgarScore10` (`int`, kardinalitet 0..1)."
