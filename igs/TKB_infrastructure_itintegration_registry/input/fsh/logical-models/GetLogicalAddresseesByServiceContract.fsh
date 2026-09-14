// Genererad från TKB infrastructure:itintegration:registry v2.0
// Kontrakt: GetLogicalAddresseesByServiceContract v2.0
// Genererad: 2026-09-14

Invariant: getlogicaladdresseesbyservicecontract-filter-authorization
Description: """
  R2 (TKB avsnitt 7.1, "Övriga regler"): behörighetsfiltrering är en
  flerstegsregel över listan av filter-poster (saknas filter-poster ska
  anropet tillåtas; annars måste meddelandets serviceDomain matcha en
  filter-post, och om den matchande posten har categorization måste
  meddelandets categorization matcha en av dessa). Detta kräver iteration
  över en lista med kombinerad AND/OR-logik mellan filter-poster och kan
  inte uttryckas fullständigt som en enkel FHIRPath-invariant på fältnivå.
  Se QUESTIONS.md för domänexpert-verifiering av en ev. förenklad
  FHIRPath-representation.
"""
Severity: #warning

Logical: GetLogicalAddresseesByServiceContract
Id: getlogicaladdresseesbyservicecontract
Title: "GetLogicalAddresseesByServiceContract"
Description: """
  Logisk modell för tjänstekontraktet GetLogicalAddresseesByServiceContract
  (RIV-TA urn:riv:infrastructure:itintegration:registry:GetLogicalAddresseesByServiceContract:2).
  Representerar responsens informationsstruktur: en lista över logiska
  adressater som har en tjänsteproducent för angivet tjänstekontrakt och
  anropsbehörighet för angiven tjänstekonsument.
"""
Characteristics: #can-be-target

* logicalAddressRecord 0..* BackboneElement "Logisk adressat som matchar frågan"
    """
    Post för en logisk adressat med tjänsteproducent för angivet
    tjänstekontrakt och anropsbehörighet för angiven tjänstekonsument.
    """
  * obeys getlogicaladdresseesbyservicecontract-filter-authorization
* logicalAddressRecord.logicalAddress 1..1 string "Logisk adress"
    """
    Tjänstekontrakt som stöds av angiven tjänstekonsument vid tidpunkten
    för anropet av GetLogicalAddresseesByServiceContract.
    Kardinalitet: Obligatorisk.
    """
* logicalAddressRecord.filter 0..* BackboneElement "Behörighetsfilter"
    """
    Behörighetsfilter för adressaten. Se invariant och TKB avsnitt 7.1
    "Övriga regler" (R2) för fullständig matchningssemantik.
    """
* logicalAddressRecord.filter.serviceDomain 1..1 uri "Tjänstedomän"
    """
    Namnrymd för Tjänstedomän enligt RIVTA-förvaltningens förvaltade
    tjänstedomäner, på formatet <regelverk>:<huvuddomän>:<underdomän>.
    Anges utan versionsnummer. Exempel: "urn:riv:crm:scheduling".
    Kardinalitet: Obligatorisk.
    """
* logicalAddressRecord.filter.categorization 0..* string "Kategorisering"
    """
    Kodverk enligt tjänstedomänens dokumentation. Matchning görs enligt
    R3 (TKB avsnitt 7.1) utan hänsyn till versaler/gemener (IgnoreCase).
    """
