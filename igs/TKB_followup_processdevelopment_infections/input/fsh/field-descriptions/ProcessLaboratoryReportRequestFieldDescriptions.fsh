// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessLaboratoryReportRequestFieldDescriptions
* orgUnitId ^definition = "Informationsspecifikation: Laboratoriesvar.har beställande.Enhet.enhets-id"
* orgUnitId ^comment = "TKB-fält: `orgUnitId` (`IIType`, kardinalitet 1..1)."
* reportId ^definition = "Informationsspecifikation: Laboratoriesvar.laboratoriesvars-id"
* reportId ^comment = "TKB-fält: `reportId` (`IIType`, kardinalitet 1..1)."
* testTime ^definition = "Informationsspecifikation: Provtagning.provtagningstidpunkt"
* testTime ^comment = "TKB-fält: `testTime` (`TimeStampType`, kardinalitet 1..1)."
* observationTime ^definition = "Informationsspecifikation: Mikrobiologiskt fynd.observationstidpunkt"
* observationTime ^comment = "TKB-fält: `observationTime` (`TimeStampType`, kardinalitet 1..1)."
* findingCode ^definition = "Informationsspecifikation: Mikrobiologiskt fynd.agenskod

Kodverk: NPU

Möjliga koder: ATCC09689 (Clostridium difficile)"
* findingCode ^comment = "TKB-fält: `findingCode` (`CVType`, kardinalitet 1..1)."
* patient ^definition = "Informationsspecifikation: Patient"
* patient ^comment = "TKB-fält: `patient` (`PatientType`, kardinalitet 1..1)."
