// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessLaboratoryReportRequestFieldDescriptions
* laboratoryReport.orgUnitId ^definition = "Informationsspecifikation: Laboratoriesvar.har beställande.Enhet.enhets-id"
* laboratoryReport.orgUnitId ^comment = "TKB-fält: `orgUnitId` (`IIType`, kardinalitet 1..1)."
* laboratoryReport.reportId ^definition = "Informationsspecifikation: Laboratoriesvar.laboratoriesvars-id"
* laboratoryReport.reportId ^comment = "TKB-fält: `reportId` (`IIType`, kardinalitet 1..1)."
* laboratoryReport.testTime ^definition = "Informationsspecifikation: Provtagning.provtagningstidpunkt"
* laboratoryReport.testTime ^comment = "TKB-fält: `testTime` (`TimeStampType`, kardinalitet 1..1)."
* laboratoryReport.observationTime ^definition = "Informationsspecifikation: Mikrobiologiskt fynd.observationstidpunkt"
* laboratoryReport.observationTime ^comment = "TKB-fält: `observationTime` (`TimeStampType`, kardinalitet 1..1)."
* laboratoryReport.findingCode ^definition = "Informationsspecifikation: Mikrobiologiskt fynd.agenskod

Kodverk: NPU

Möjliga koder: ATCC09689 (Clostridium difficile)"
* laboratoryReport.findingCode ^comment = "TKB-fält: `findingCode` (`CVType`, kardinalitet 1..1)."
* laboratoryReport.patient ^definition = "Informationsspecifikation: Patient"
* laboratoryReport.patient ^comment = "TKB-fält: `patient` (`PatientType`, kardinalitet 1..1)."
