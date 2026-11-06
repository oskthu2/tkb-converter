// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetSupportedServiceContractsFieldDescriptions
* serviceContractNamespace ^definition = "Tjänstekontrakt som stöds av angiven logisk adress vid tidpunkten för anropet av GetSupportedServiceContracts."
* serviceContractNamespace ^comment = "TKB-fält: `serviceContractNamespace` (`urn`, kardinalitet 0..*).

**Modellanteckning:** Tjänstekontrakt som stöds av angiven logisk adress vid tidpunkten för
anropet av GetSupportedServiceContracts. Om requestens
serviceConsumerHsaId är angiven filtreras svaret enligt R1 (TKB
avsnitt 7.2 \"Övriga regler\") till endast de kontrakt konsumenten har
rättighet att använda."
