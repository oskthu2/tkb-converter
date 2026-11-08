// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetAccessLogsForPatientFieldDescriptions
* accessLogsResult ^definition = "Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts korrekt returneras en lista med patientinformation och resultatkod OK.

Vid eventuella fel i tjänsteanropet returneras ingen patientinformation. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande."
* accessLogsResult ^comment = "TKB-fält: `accessLogsResult` (`urn:riv:informationsecurity:auditing:log:2:AccessLogsResultType`, kardinalitet 1..1)."
* accessLogsResult.reportResult ^comment = "TKB-fält: `../reportResult` (`ReportResultType`, kardinalitet 1..1)."
* accessLogsResult.reportResult.result ^definition = "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
* accessLogsResult.reportResult.result ^comment = "TKB-fält: `../../result` (`ResultType`, kardinalitet 1..1)."
* accessLogsResult.reportResult.result.resultCode ^comment = "TKB-fält: `../../../resultCode` (`ResultCodeType`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED."
* accessLogsResult.reportResult.result.resultText ^comment = "TKB-fält: `../../../resultText` (`string`, kardinalitet 0..1)."
* accessLogsResult.reportResult.startInterval ^comment = "TKB-fält: `../../startInterval` (`dateTime`, kardinalitet 0..1)."
* accessLogsResult.reportResult.endInterval ^comment = "TKB-fält: `../../endInterval` (`dateTime`, kardinalitet 0..1)."
* accessLogsResult.reportResult.queuedReportId ^comment = "TKB-fält: `../../queuedReportId` (`Id`, kardinalitet 0..1)."
* accessLogsResult.reportResult.queueTime ^comment = "TKB-fält: `../../queueTime` (`int`, kardinalitet 0..1)."
* accessLogsResult.accesssLogs ^definition = "Datatyp som håller lista med Access loggar. Kan vara en tom lista."
* accessLogsResult.accesssLogs ^comment = "TKB-fält: `../accesssLogs` (`AccessLogsType`, kardinalitet 0..1)."
* accessLogsResult.accesssLogs.accessLog ^definition = "Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt."
* accessLogsResult.accesssLogs.accessLog ^comment = "TKB-fält: `../../accessLog` (`AccessLogType`, kardinalitet 0..*)."
* accessLogsResult.accesssLogs.accessLog.careProviderId ^comment = "TKB-fält: `../../../careProviderId` (`HsaId`, kardinalitet 1..1)."
* accessLogsResult.accesssLogs.accessLog.careProviderName ^comment = "TKB-fält: `../../../careProviderName` (`CareProviderName`, kardinalitet 0..1)."
* accessLogsResult.accesssLogs.accessLog.careUnitId ^comment = "TKB-fält: `../../../careUnitId` (`HsaId`, kardinalitet 1..1)."
* accessLogsResult.accesssLogs.accessLog.careUnitName ^comment = "TKB-fält: `../../../careUnitName` (`CareUnitName`, kardinalitet 0..1)."
* accessLogsResult.accesssLogs.accessLog.accessDate ^comment = "TKB-fält: `../../../accessDate` (`dateTime`, kardinalitet 1..1)."
* accessLogsResult.accesssLogs.accessLog.userId ^comment = "TKB-fält: `../../../userId` (`HsaId`, kardinalitet 1..1)."
* accessLogsResult.accesssLogs.accessLog.userName ^comment = "TKB-fält: `../../../userName` (`UserName`, kardinalitet 0..1)."
* accessLogsResult.accesssLogs.accessLog.userTitle ^comment = "TKB-fält: `../../../userTitle` (`UserTitle`, kardinalitet 0..1)."
* accessLogsResult.accesssLogs.accessLog.purpose ^comment = "TKB-fält: `../../../purpose` (`PurposeDescription`, kardinalitet 1..1)."
* accessLogsResult.accesssLogs.accessLog.resourceType ^comment = "TKB-fält: `../../../resourceType` (`ResourceTypeValue`, kardinalitet 1..1)."
