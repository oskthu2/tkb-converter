// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetConceptsRequestFieldDescriptions
* SubsetIdentity ^definition = "Identifierare som representerar urvalet"
* SubsetIdentity ^comment = "TKB-fält: `SubsetIdentity` (`string`, kardinalitet 1..1)."
* LocalOrganizationExtensionId ^definition = "Id för system eller organisation"
* LocalOrganizationExtensionId ^comment = "TKB-fält: `LocalOrganizationExtensionId` (`LocalOrganizationExtensionIdType`, kardinalitet 0..1)."
* CodeSystem ^definition = "Kodsystem som sökt concept tillhör"
* CodeSystem ^comment = "TKB-fält: `CodeSystem` (`ConceptCodeSystemType`, kardinalitet 0..1)."
* Code ^definition = "Kod för sökt concept"
* Code ^comment = "TKB-fält: `Code` (`ConceptCodeType`, kardinalitet 0..1)."
* Term ^definition = "Term för sökt concept"
* Term ^comment = "TKB-fält: `Term` (`ConceptTermType`, kardinalitet 0..1)."
* ConceptsResponseThreshold ^definition = "Antal concepts som maximalt returneras i svaret"
* ConceptsResponseThreshold ^comment = "TKB-fält: `ConceptsResponseThreshold` (`int`, kardinalitet 0..1)."
* TermType ^definition = "Type of term"
* TermType ^comment = "TKB-fält: `TermType` (`string`, kardinalitet 1..1)."
