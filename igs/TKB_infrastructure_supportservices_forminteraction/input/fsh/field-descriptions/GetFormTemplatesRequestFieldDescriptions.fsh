// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetFormTemplatesRequestFieldDescriptions
* healthcareFacilityCareUnit ^definition = "Hsa-Id (Vårdenhet/enhets-id).

T.ex. se2321000016-1hz3"
* healthcareFacilityCareUnit ^comment = "TKB-fält: `Healthcare_Facility_CareUnit` (kardinalitet 1..1)."
* publishedStatus ^definition = "Indikerar vilken status en mall skall ha."
* publishedStatus ^comment = "TKB-fält: `PublishedStatus` (kardinalitet 0..*).

**Modellanteckning:** Filtreringsparameter för mallens publiceringsstatus. Valfri, kan ange flera."
* subjectOfCare ^definition = "Starkt autentiserad användares personnummer.

T.ex. 191212121212 (yyyymmddnnnn)

FormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt."
* subjectOfCare ^comment = "TKB-fält: `SubjectOfCare` (kardinalitet 0..1)."
* templateId ^definition = "Typ av formulärmall. Kodverk. Om denna inte anges skall formulärtjänsten som default returnera ALLA tillgängliga formulär för medborgaren."
* templateId ^comment = "TKB-fält: `TemplateId` (kardinalitet 0..*).

**Modellanteckning:** Filtrerar svar på specifik formulärtyp. Om ej angiven returneras ALLA tillgängliga mallar."
* clinicalProcessInterestId ^definition = "Hälsoärende."
* clinicalProcessInterestId ^comment = "TKB-fält: `ClinicalProcessInterestId` (kardinalitet 0..*).

**Modellanteckning:** Globalt/nationellt hälsoärende ID. Filtrerar formulär kopplade till ett eller flera hälsoärenden."
