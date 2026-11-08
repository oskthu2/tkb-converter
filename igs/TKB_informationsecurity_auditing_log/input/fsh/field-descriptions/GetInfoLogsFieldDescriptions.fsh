// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetInfoLogsFieldDescriptions
* infoLogsResult ^definition = "Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista av vårdgivare samt resultatkod OK.

Vid eventuella fel i tjänsteanropet returneras inga vårdgivare. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande."
* infoLogsResult ^comment = "TKB-fält: `infoLogsResult` (`urn:riv:informationsecurity:auditing:log:2:InfoLogsResultType`, kardinalitet 1..1)."
* infoLogsResult.reportResult ^comment = "TKB-fält: `../reportResult` (`ReportResultType`, kardinalitet 1..1)."
* infoLogsResult.reportResult.result ^definition = "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
* infoLogsResult.reportResult.result ^comment = "TKB-fält: `../../result` (`ResultType`, kardinalitet 1..1)."
* infoLogsResult.reportResult.result.resultCode ^comment = "TKB-fält: `../../../resultCode` (`ResultCodeType`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED."
* infoLogsResult.reportResult.result.resultText ^comment = "TKB-fält: `../../../resultText` (`string`, kardinalitet 0..1)."
* infoLogsResult.reportResult.startInterval ^comment = "TKB-fält: `../../startInterval` (`dateTime`, kardinalitet 0..1)."
* infoLogsResult.reportResult.endInterval ^comment = "TKB-fält: `../../endInterval` (`dateTime`, kardinalitet 0..1)."
* infoLogsResult.reportResult.queuedReportId ^comment = "TKB-fält: `../../queuedReportId` (`Id`, kardinalitet 0..1)."
* infoLogsResult.reportResult.queueTime ^comment = "TKB-fält: `../../queueTime` (`int`, kardinalitet 0..1)."
* infoLogsResult.careProviders ^definition = "Datatyp som håller lista med vårdgivare. Kan vara en tom lista."
* infoLogsResult.careProviders ^comment = "TKB-fält: `../careProviders` (`CareProvidersType`, kardinalitet 0..1)."
* infoLogsResult.careProviders.careProvider ^definition = "Datatyp som representerar en vårdgivare."
* infoLogsResult.careProviders.careProvider ^comment = "TKB-fält: `../../careProvider` (`CareProviderType`, kardinalitet 0..*)."
* infoLogsResult.careProviders.careProvider.careProviderId ^comment = "TKB-fält: `../../../careProviderId` (`HsaId`, kardinalitet 1..1)."
* infoLogsResult.careProviders.careProvider.careProviderName ^comment = "TKB-fält: `../../../careProviderName` (`CareProviderName`, kardinalitet 0..1)."
