// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: PingForConfigurationFieldDescriptions
* pingVersion ^definition = "Version av den tjänstekomponent som svarar. Formatet och semantik är specifikt för respektive tjänsteproducent."
* pingVersion ^comment = "TKB-fält: `version` (`string`, kardinalitet 1..1)."
* pingDateTime ^definition = "Datum och klockslag när ett svar skapades, på tidigare angivet tidsformat, ned på sekundnivå. Exempel: 20110311121021"
* pingDateTime ^comment = "TKB-fält: `pingDateTime` (`TS (tidsformat, se avsnitt 4)`, kardinalitet 1..1).

**Modellanteckning:** Datum och klockslag när svaret skapades. Källdokumentets fälttyp är TS
(RIV-TA-lokal regex-begränsad sträng på formatet YYYYMMDDhhmmss, se
itintegration_monitoring_1.0.xsd), mappad till FHIR `instant`."
* configuration ^definition = "Lista med värden av miljövariabler från den svarande tjänstekomponenten. Ta med så mycket som möjligt som kan vara till hjälp vid felsökning och dialog kring vilken version som \"finns i andra änden\". Exempel kan vara JVM/.Net-version, operativsystem."
* configuration ^comment = "TKB-fält: `configuration` (`ConfigurationType`, kardinalitet 0..*)."
* configuration.configurationName ^definition = "Namn på miljövariabel"
* configuration.configurationName ^comment = "TKB-fält: `configuration.name` (`string`, kardinalitet 1..1)."
* configuration.configurationValue ^definition = "Värde på miljövariabel"
* configuration.configurationValue ^comment = "TKB-fält: `configuration.value` (`string`, kardinalitet 1..1)."
