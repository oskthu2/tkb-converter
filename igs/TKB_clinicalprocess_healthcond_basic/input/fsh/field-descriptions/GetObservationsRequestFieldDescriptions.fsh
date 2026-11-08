// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetObservationsRequestFieldDescriptions
* patientId ^definition = "Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare.

Regel 1.1"
* patientId ^comment = "TKB-fält: `patientId` (`IIType`, kardinalitet 1)."
* time ^definition = "Begränsar sökningen till det angivna intervallet. Om tidsattributet Observation.Time i svaret är en tidpunkt innebär begränsningen att endast poster returneras där Observation.Time i svaret ligger inom sökintervallets start- och sluttidpunkt.

Om tidsattributet Observation.Time i svaret är ett intervall innebär begränsningen att endast poster returneras där tidsintervallet som anges i attributet Observation.Time i svaret, överlappar med det angivna sökintervallet, dvs.

det bildade intervallets starttidpunkt ligger inom sökintervallets start- och sluttidpunkt

det bildade intervallets sluttidpunkt ligger inom sökintervallets start- och sluttidpunkt

det bildade intervallets starttidpunkt ligger före sökintervallets starttidpunkt och sluttidpunkt ligger efter sökintervallets sluttidpunkt"
* time ^comment = "TKB-fält: `time` (`TimePeriodType`, kardinalitet 0..1)."
* observationType ^definition = "Begränsning av sökning avseende observationen till en viss typ av värde som man vill titta närmare på, t.ex. kliniskt fynd eller diagnoser."
* observationType ^comment = "TKB-fält: `observationType` (`CVType`, kardinalitet 0..*)."
* observationType.code ^definition = "Kod för observationstyp"
* observationType.code ^comment = "TKB-fält: `observationType.code` (`String`, kardinalitet 1)."
* observationType.codeSystem ^definition = "Kodsystem för angiven kod för observationstyp."
* observationType.codeSystem ^comment = "TKB-fält: `observationType.codeSystem` (`String`, kardinalitet 1)."
* observationType.codeSystemName ^definition = "Ska ignoreras i begäran och ej skickas."
* observationType.codeSystemName ^comment = "TKB-fält: `observationType.codeSystemName` (`String`, kardinalitet 0..0)."
* observationType.codeSystemVersion ^definition = "Ska ignoreras i begäran och ej skickas."
* observationType.codeSystemVersion ^comment = "TKB-fält: `observationType.codeSystemVersion` (`String`, kardinalitet 0..0)."
* observationType.displayName ^definition = "Ska ignoreras i begäran och ej skickas."
* observationType.displayName ^comment = "TKB-fält: `observationType.displayName` (`String`, kardinalitet 0..0)."
* observationId ^definition = "Ett unikt värde för själva observationen som också refererar till vilket källsystem informationen kommer ifrån. Motsvarar observation/id i svaret."
* observationId ^comment = "TKB-fält: `observationId` (`IIType`, kardinalitet 0..*)."
* careGiverId ^definition = "Används när man vill söka hos en specifik vårdgivare."
* careGiverId ^comment = "TKB-fält: `careGiverId` (`IIType`, kardinalitet 0..1)."
* careUnitId ^definition = "Begränsning av sökning mha HSAid för (PDL) vårdenhet som har ansvar för dokumentationen av obdervationen/observationerna."
* careUnitId ^comment = "TKB-fält: `careUnitId` (`IIType`, kardinalitet 0..1)."
* interactionAgreementId ^definition = "Detta attribut används inte. Ange UUID

2866a7c4-9c60-433f-9035-a4d779ffe7a1"
* interactionAgreementId ^comment = "TKB-fält: `interactionAgreementId` (`UUIDType`, kardinalitet 1..1)."
* sourceSystemHSAId ^definition = "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.  Motsvarar observationGroup/sourceSystem i svaret."
* sourceSystemHSAId ^comment = "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1)."
* relation ^definition = "Endast de poster med relationer som matchar villkoren i denna lista skall returneras. Om listan är tom filtreras inte observationer på deras relationer."
* relation ^comment = "TKB-fält: `relation` (`RelationFilterType`, kardinalitet 0..*)."
* relation.id ^definition = "Filtrera poster på den identitet som anges i sambandet/relationen. Detta ger exempelvis möjlighet att söka ut alla observationer som har en relation till en viss aktivitet."
* relation.id ^comment = "TKB-fält: `relation.id` (`IIType`, kardinalitet 0..1)."
* relation.typeCode ^definition = "Filtrera på sambandstyp"
* relation.typeCode ^comment = "TKB-fält: `relation.typeCode` (`CVType`, kardinalitet 0..1)."
* relation.typeCode.code ^definition = "Kod för sambandstyp"
* relation.typeCode.code ^comment = "TKB-fält: `relation.typeCode.code` (`String`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* relation.typeCode.codeSystem ^definition = "Kodsystem för sambandstyp"
* relation.typeCode.codeSystem ^comment = "TKB-fält: `relation.typeCode.codeSystem` (`String`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* relation.typeCode.codeSystemName ^definition = "Ska ignoreras i begäran och ej skickas."
* relation.typeCode.codeSystemName ^comment = "TKB-fält: `relation.typeCode.codeSystemName` (`String`, kardinalitet 0..0)."
* relation.typeCode.codeSystemVersion ^definition = "Versionsnummer för använt kodsystem."
* relation.typeCode.codeSystemVersion ^comment = "TKB-fält: `relation.typeCode.codeSystemVersion` (`String`, kardinalitet 0..0)."
* relation.typeCode.displayName ^definition = "Ska ignoreras i begäran och ej skickas."
* relation.typeCode.displayName ^comment = "TKB-fält: `relation.typeCode.displayname` (`String`, kardinalitet 0..0)."
* relation.referredInformationType ^definition = "Den typ av uppgift i patientjournal som sambandet pekar ut. Detta är en kod från Categorization i engagemangsindexposten. I denna version av tjänstekontraktet är följande typer möjliga:

chb-o  (observation)

caa-a (aktivitet)"
* relation.referredInformationType ^comment = "TKB-fält: `relation. referredInformationType` (`String`, kardinalitet 1..1)."
