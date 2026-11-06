// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetLogicalAddresseesByServiceContractFieldDescriptions
* logicalAddressRecord ^comment = "TKB-fält: `logicalAddressRecord` (`LogicalAddresseeRecordType`, kardinalitet 0..*).

**Modellanteckning:** Post för en logisk adressat med tjänsteproducent för angivet
tjänstekontrakt och anropsbehörighet för angiven tjänstekonsument."
* logicalAddressRecord.logicalAddress ^definition = "Tjänstekontrakt som stöds av angiven tjänstekonsument vid tidpunkten för anropet av GetLogicalAddresseesByServiceContract."
* logicalAddressRecord.logicalAddress ^comment = "TKB-fält: `logicalAddressRecord. logicalAddress` (`Text`, kardinalitet 1..1)."
* logicalAddressRecord.filter ^comment = "TKB-fält: `logicalAddressRecord.filter` (`FilterType`, kardinalitet 0..*).

**Modellanteckning:** Behörighetsfilter för adressaten. Se invariant och TKB avsnitt 7.1
\"Övriga regler\" (R2) för fullständig matchningssemantik."
