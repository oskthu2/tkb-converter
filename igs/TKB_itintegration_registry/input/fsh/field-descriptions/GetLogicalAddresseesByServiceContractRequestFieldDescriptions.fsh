// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetLogicalAddresseesByServiceContractRequestFieldDescriptions
* serviceConsumerHsaId ^definition = "Tjänstekonsument mot vars anropsbehörighet svaret filtreras."
* serviceConsumerHsaId ^comment = "TKB-fält: `serviceConsumerHsaId` (`HSAid`, kardinalitet 1..1)."
* serviceContractNameSpace ^definition = "Det tjänstekontrakt som frågan gäller"
* serviceContractNameSpace ^comment = "TKB-fält: `serviceContractNameSpace` (`urn`, kardinalitet 1..1).

**Modellanteckning:** Type which describes a service contract."
* serviceContractNameSpace.ServiceContractNamespace ^comment = "TKB-fält: `../ServiceContractNamespace` (`anyURI`, kardinalitet 1..1)."
