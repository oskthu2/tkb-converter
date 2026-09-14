// Genererad från TKB infrastructure:itintegration:registry v2.0
// Kontrakt: GetSupportedServiceContracts v2.0
// Genererad: 2026-09-14

Logical: GetSupportedServiceContracts
Id: getsupportedservicecontracts
Title: "GetSupportedServiceContracts"
Description: """
  Logisk modell för tjänstekontraktet GetSupportedServiceContracts
  (RIV-TA urn:riv:infrastructure:itintegration:registry:GetSupportedServiceContracts:2).
  Representerar responsens informationsstruktur: en lista över
  tjänstekontrakt (namnrymder) som stöds av en specifik logisk adressat.
  Varje huvudversion uppträder som ett eget tjänstekontrakt (namnrymd).
"""
Characteristics: #can-be-target

* serviceContractNamespace 0..* uri "Tjänstekontrakt (namnrymd)"
    """
    Tjänstekontrakt som stöds av angiven logisk adress vid tidpunkten för
    anropet av GetSupportedServiceContracts. Om requestens
    serviceConsumerHsaId är angiven filtreras svaret enligt R1 (TKB
    avsnitt 7.2 "Övriga regler") till endast de kontrakt konsumenten har
    rättighet att använda.
    """
