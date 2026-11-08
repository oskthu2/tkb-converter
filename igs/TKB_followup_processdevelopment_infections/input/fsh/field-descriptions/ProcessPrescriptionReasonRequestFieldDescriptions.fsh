// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessPrescriptionReasonRequestFieldDescriptions
* prescriptionReason.prescriptionCareUnitId ^definition = "Medicinskt ansvarig för ordinationsmoment."
* prescriptionReason.prescriptionCareUnitId ^comment = "TKB-fält: `prescriptionCareUnitId` (`IIType`, kardinalitet 1..1)."
* prescriptionReason.prescriptionReasonCareUnitId ^definition = "Medicinskt ansvarig för ordinationsorsak"
* prescriptionReason.prescriptionReasonCareUnitId ^comment = "TKB-fält: `prescriptionReasonCareUnitId` (`IIType`, kardinalitet 1..1)."
* prescriptionReason.prescriptionTime ^definition = "Tidpunkt då registreringen av ordinationsorsaken gjordes.

I de fall en ordination finns anges här

I annat fall lämnas detta fält tomt."
* prescriptionReason.prescriptionTime ^comment = "TKB-fält: `prescriptionTime` (`TimeStampType`, kardinalitet 0..1)."
* prescriptionReason.prescriptionReasonTime ^definition = "Tidpunkt för ordinationen."
* prescriptionReason.prescriptionReasonTime ^comment = "TKB-fält: `prescriptionReasonTime` (`TimeStampType`, kardinalitet 0..1)."
* prescriptionReason.prescriptionLocationId ^definition = "Registreringsenhet för ordinationsmoment."
* prescriptionReason.prescriptionLocationId ^comment = "TKB-fält: `prescriptionLocationId` (`IIType`, kardinalitet 0..1)."
* prescriptionReason.prescriptionReasonLocationId ^definition = "Registreringsenhet för ordinationsorsak"
* prescriptionReason.prescriptionReasonLocationId ^comment = "TKB-fält: `prescriptionReasonLocationId` (`IIType`, kardinalitet 0..1)."
* prescriptionReason.activityCode ^definition = "Information om en aktivitet som är relevant att registrera.

Kodverk: KVÅ, SnomedCT, IV Annan"
* prescriptionReason.activityCode ^comment = "TKB-fält: `activityCode` (`CVType`, kardinalitet 1..1)."
* prescriptionReason.activityId ^definition = "Unik identifierare för aktivitet"
* prescriptionReason.activityId ^comment = "TKB-fält: `activityId` (`IIType`, kardinalitet 1..1)."
* prescriptionReason.conditionId ^definition = "Id för patientens diagnos"
* prescriptionReason.conditionId ^comment = "TKB-fält: `conditionId` (`IIType`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* prescriptionReason.conditionCode ^definition = "Anger koden och klartext för patientens diagnos

Kodverk: SnomedCT, IV Annan, KSH97"
* prescriptionReason.conditionCode ^comment = "TKB-fält: `conditionCode` (`CVType`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* prescriptionReason.source ^definition = "Kod och klartext som anger hur infektionen uppstått. Anger om det är samhälls- eller vårdförvärvad infektion eller ej infektion (vid förebyggande profylax)

Kodverk: IV Smittväg"
* prescriptionReason.source ^comment = "TKB-fält: `source` (`CVType`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* prescriptionReason.prescriptionId ^definition = "Unik identifierare för ordinationen"
* prescriptionReason.prescriptionId ^comment = "TKB-fält: `prescriptionId` (`IIType`, kardinalitet 1..1)."
* prescriptionReason.substanceCode ^definition = "Hanterar information kring en läkemedelssubstans som är del av en läkemedelsordination

Kodverk: ATC"
* prescriptionReason.substanceCode ^comment = "TKB-fält: `substanceCode` (`CVType`, kardinalitet 1..1)."
* prescriptionReason.patient ^definition = "Patientuppgifter"
* prescriptionReason.patient ^comment = "TKB-fält: `patient` (`PatientType`, kardinalitet 1..1)."
* prescriptionReason.patient.id ^comment = "TKB-fält: `patient.id` (`IIType`, kardinalitet 1..1)."
* prescriptionReason.patient.birthTime ^definition = "Patientens födelseår. Anges enligt ÅÅÅÅMMDD, ÅÅÅÅMM eller ÅÅÅÅ"
* prescriptionReason.patient.birthTime ^comment = "TKB-fält: `patient.birthtime` (`DateType`, kardinalitet 1..1)."
* prescriptionReason.patient.gender ^definition = "Kod och klartext som anger patientens kön"
* prescriptionReason.patient.gender ^comment = "TKB-fält: `patient.gender` (`CVType`, kardinalitet 1..1)."
