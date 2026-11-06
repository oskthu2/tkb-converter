// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessPrescriptionReasonRequestFieldDescriptions
* prescriptionTime ^definition = "Tidpunkt då registreringen av ordinationsorsaken gjordes.

I de fall en ordination finns anges här

I annat fall lämnas detta fält tomt."
* prescriptionTime ^comment = "TKB-fält: `prescriptionTime` (`TimeStampType`, kardinalitet 0..1)."
* substanceCode ^definition = "Hanterar information kring en läkemedelssubstans som är del av en läkemedelsordination

Kodverk: ATC"
* substanceCode ^comment = "TKB-fält: `substanceCode` (`CVType`, kardinalitet 1..1)."
* prescriptionCareUnitId ^definition = "Medicinskt ansvarig för ordinationsmoment."
* prescriptionCareUnitId ^comment = "TKB-fält: `prescriptionCareUnitId` (`IIType`, kardinalitet 1..1)."
* prescriptionLocationId ^definition = "Registreringsenhet för ordinationsmoment."
* prescriptionLocationId ^comment = "TKB-fält: `prescriptionLocationId` (`IIType`, kardinalitet 0..1)."
* prescriptionReasonCareUnitId ^definition = "Medicinskt ansvarig för ordinationsorsak"
* prescriptionReasonCareUnitId ^comment = "TKB-fält: `prescriptionReasonCareUnitId` (`IIType`, kardinalitet 1..1)."
* prescriptionReasonLocationId ^definition = "Registreringsenhet för ordinationsorsak"
* prescriptionReasonLocationId ^comment = "TKB-fält: `prescriptionReasonLocationId` (`IIType`, kardinalitet 0..1)."
* conditionId ^definition = "Id för patientens diagnos"
* conditionId ^comment = "TKB-fält: `conditionId` (`IIType`, kardinalitet 0..1).

**Modellanteckning:** Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1"
* conditionCode ^definition = "Anger koden och klartext för patientens diagnos

Kodverk: SnomedCT, IV Annan, KSH97"
* conditionCode ^comment = "TKB-fält: `conditionCode` (`CVType`, kardinalitet 0..1)."
* source ^definition = "Kod och klartext som anger hur infektionen uppstått. Anger om det är samhälls- eller vårdförvärvad infektion eller ej infektion (vid förebyggande profylax)

Kodverk: IV Smittväg"
* source ^comment = "TKB-fält: `source` (`CVType`, kardinalitet 0..1)."
* activityCode ^definition = "Information om en aktivitet som är relevant att registrera.

Kodverk: KVÅ, SnomedCT, IV Annan"
* activityCode ^comment = "TKB-fält: `activityCode` (`CVType`, kardinalitet 1..1)."
* activityId ^definition = "Unik identifierare för aktivitet"
* activityId ^comment = "TKB-fält: `activityId` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1.
OBSERVERA: attributet har olika betydelse beroende på om mallen för Activity (profylax)
eller Condition (infektion) används."
* patient ^definition = "Patientuppgifter"
* patient ^comment = "TKB-fält: `patient` (`PatientType`, kardinalitet 1..1)."
* patient.patientId ^comment = "TKB-fält: `patient.id` (`IIType`, kardinalitet 1..1)."
* patient.birthTime ^definition = "Patientens födelseår. Anges enligt ÅÅÅÅMMDD, ÅÅÅÅMM eller ÅÅÅÅ"
* patient.birthTime ^comment = "TKB-fält: `patient.birthtime` (`DateType`, kardinalitet 1..1)."
* patient.gender ^definition = "Kod och klartext som anger patientens kön"
* patient.gender ^comment = "TKB-fält: `patient.gender` (`CVType`, kardinalitet 1..1).

**Modellanteckning:** Kodverk KV Kön, OID: 1.2.752.129.2.2.1.1
0 = not known, 1 = male, 2 = female, 9 = not applicable"
* prescriptionId ^definition = "Unik identifierare för ordinationen"
* prescriptionId ^comment = "TKB-fält: `prescriptionId` (`IIType`, kardinalitet 1..1).

**Modellanteckning:** Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1"
* prescriptionReasonTime ^definition = "Tidpunkt för ordinationen."
* prescriptionReasonTime ^comment = "TKB-fält: `prescriptionReasonTime` (`TimeStampType`, kardinalitet 0..1)."
