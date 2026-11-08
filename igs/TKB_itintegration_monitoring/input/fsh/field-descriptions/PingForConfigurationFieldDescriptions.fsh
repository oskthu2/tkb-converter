// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: PingForConfigurationFieldDescriptions
* version ^definition = "Version av den tjänstekomponent som svarar. Formatet och semantik är specifikt för respektive tjänsteproducent."
* version ^comment = "TKB-fält: `version` (`string`, kardinalitet 1..1)."
* pingDateTime ^definition = "Datum och klockslag när ett svar skapades, på tidigare angivet tidsformat, ned på sekundnivå. Exempel: 20110311121021"
* pingDateTime ^comment = "TKB-fält: `pingDateTime` (`TS (tidsformat, se avsnitt 4)`, kardinalitet 1..1)."
* configuration ^definition = "Lista med värden av miljövariabler från den svarande tjänstekomponenten. Ta med så mycket som möjligt som kan vara till hjälp vid felsökning och dialog kring vilken version som \"finns i andra änden\". Exempel kan vara JVM/.Net-version, operativsystem."
* configuration ^comment = "TKB-fält: `configuration` (`ConfigurationType`, kardinalitet 0..*).

**Modellanteckning:** Optional list of environment information from the service component."
* configuration.name ^definition = "Namn på miljövariabel"
* configuration.name ^comment = "TKB-fält: `configuration.name` (`string`, kardinalitet 1..1)."
* configuration.value ^definition = "Värde på miljövariabel"
* configuration.value ^comment = "TKB-fält: `configuration.value` (`string`, kardinalitet 1..1)."
