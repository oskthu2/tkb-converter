// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetFormTemplatesRequestFieldDescriptions
* clinicalProcessInterestIds ^definition = "Hälsoärenden."
* clinicalProcessInterestIds ^comment = "TKB-fält: `ClinicalProcessInterestIds` (kardinalitet 0..*)."
* healthcare_facility_CareUnit ^definition = "Hsa-Id (Vårdenhet/enhets-id). T.ex. se2321000016-1hz3"
* healthcare_facility_CareUnit ^comment = "TKB-fält: `Healthcare_Facility_CareUnit` (kardinalitet 1..1)."
* publishedStatus ^definition = "Indikerar vilken status en mall skall ha."
* publishedStatus ^comment = "TKB-fält: `PublishedStatus` (kardinalitet 0..*)."
* subjectOfCare ^definition = "Starkt autentiserad användares personnummer. T.ex. 191212121212 (yyyymmddnnnn). FormTemplate attributet \"anonymousForm\" styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt."
* subjectOfCare ^comment = "TKB-fält: `SubjectOfCare` (kardinalitet 0..1)."
* templateIds ^definition = "Typ av formulärmall. Kodverk. Om denna inte anges skall formulärtjänsten som default returnera ALLA tillgängliga formulärmallar för medborgaren."
* templateIds ^comment = "TKB-fält: `TemplateIds` (kardinalitet 0..*)."
