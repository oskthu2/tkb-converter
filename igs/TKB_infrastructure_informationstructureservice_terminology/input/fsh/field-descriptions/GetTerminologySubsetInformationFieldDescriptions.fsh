// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetTerminologySubsetInformationFieldDescriptions
* SubsetInformation ^comment = "TKB-fält: `SubsetInformation` (`SubsetInformationType`, kardinalitet 0..*)."
* SubsetInformation.SubsetIdentity ^definition = "Identifierare av urval (XML-attribut.)"
* SubsetInformation.SubsetIdentity ^comment = "TKB-fält: `../SubsetIdentity` (`SubsetIdentityType`, kardinalitet 1..1)."
* SubsetInformation.Name ^definition = "Namn som representerar urval (XML-attribut.)"
* SubsetInformation.Name ^comment = "TKB-fält: `../Name` (`SubsetNameType`, kardinalitet 1..1)."
* SubsetInformation.Version ^definition = "Version för urval (XML-attribut.)"
* SubsetInformation.Version ^comment = "TKB-fält: `../Version` (`SubsetVersionType`, kardinalitet 1..1)."
* ResultCode ^comment = "TKB-fält: `ResultCode` (`ResultCodeEnum`, kardinalitet 1..1).

**Modellanteckning:** ResultCode Tillåtna värden: OK, ERROR, INFO."
* comment ^comment = "TKB-fält: `comment` (`string`, kardinalitet 0..1)."
