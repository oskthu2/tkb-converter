// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetActivitiesRequestFieldDescriptions
* patientId ^definition = "Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare.

Regel 1.1"
* patientId ^comment = "TKB-fält: `patientId` (`IIType`, kardinalitet 1)."
* time ^definition = "Begränsar sökningen till det angivna intervallet. Om tidsattributet Activity.Time i svaret är en tidpunkt innebär begränsningen att endast poster returneras där Activity.Time i svaret ligger inom sökintervallets start- och sluttidpunkt.

Om tidsattributet Activity.Time i svaret är ett intervall innebär begränsningen att endast poster returneras där tidsintervallet som anges i attributet Activity.Time i svaret, överlappar med det angivna sökintervallet, dvs.

det bildade intervallets starttidpunkt ligger inom sökintervallets start- och sluttidpunkt

det bildade intervallets sluttidpunkt ligger inom sökintervallets start- och sluttidpunkt

det bildade intervallets starttidpunkt ligger före sökintervallets starttidpunkt och sluttidpunkt ligger efter sökintervallets sluttidpunkt

Om sökningen begränsas med detta attribut ska poster som saknar Activity.Time inte returneras. Om sökningen inte begränsas med detta attribut returneras även poster som saknar Activity.Time."
* time ^comment = "TKB-fält: `time` (`TimePeriodType`, kardinalitet 0..1)."
* activityCode ^definition = "Begränsar sökningen till en viss typ av aktivitet. Motsvarar activity.code i svaret."
* activityCode ^comment = "TKB-fält: `activityCode` (`CVType`, kardinalitet 0..*)."
* activityCode.code ^definition = "Kod för aktivitet"
* activityCode.code ^comment = "TKB-fält: `activityCode.code` (`String`, kardinalitet 1)."
* activityCode.codeSystem ^definition = "Kodsystem för angiven kod."
* activityCode.codeSystem ^comment = "TKB-fält: `activityCode.codeSystem` (`String`, kardinalitet 1)."
* activityCode.codeSystemName ^definition = "Del av standarddatatyp. Ska ignoreras i begäran."
* activityCode.codeSystemName ^comment = "TKB-fält: `activityCode.codeSystemName` (`String`, kardinalitet 0..0)."
* activityCode.codeSystemVersion ^definition = "Versionsnummer för använt kodsystem."
* activityCode.codeSystemVersion ^comment = "TKB-fält: `activityCode.codeSystemVersion` (`String`, kardinalitet 0..0)."
* activityCode.displayName ^definition = "Del av standarddatatyp. Ska ignoreras i begäran."
* activityCode.displayName ^comment = "TKB-fält: `activityCode.displayName` (`String`, kardinalitet 0..0)."
* activityId ^definition = "Ett unikt värde för själva aktiviteten som också refererar till vilket källsystem informationen kommer ifrån. Motsvarar activity/id i svaret."
* activityId ^comment = "TKB-fält: `activityId` (`IIType`, kardinalitet 0..*)."
* careGiverId ^definition = "Begränsar sökningen till aktivitet från en specifik vårdgivare. Motsvarar activityGroup/performerRole/careUnit/ careGiver i svaret."
* careGiverId ^comment = "TKB-fält: `careGiverId` (`IIType`, kardinalitet 0..1)."
* careUnitId ^definition = "Begränsar sökningen till en vårdenhet (se [R15] förytterligare information om begreppet vårdenhet) som har ansvar för dokumentationen av en aktivitet. Motsvarar activityGroup/performerRole/careUnit/ i svaret."
* careUnitId ^comment = "TKB-fält: `careUnitId` (`IIType`, kardinalitet 0..1)."
* interactionAgreementId ^definition = "Detta attribut används inte. Ange alltid UUID

2866a7c4-9c60-433f-9035-a4d779ffe7a1"
* interactionAgreementId ^comment = "TKB-fält: `interactionAgreementId` (`UUIDType`, kardinalitet 1..1)."
* sourceSystemId ^definition = "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. Motsvarar activityGroup/sourceSystem i svaret."
* sourceSystemId ^comment = "TKB-fält: `sourceSystemId` (`IIType`, kardinalitet 0..1)."
* relation ^definition = "Begränsar sökningen till aktiviteter med avseende på hur de är relaterade till andra uppgifter i journalsystem. Endast de poster med relationer som matchar villkoren i denna lista skall returneras. Om listan är tom filtreras inte aktiviteter på deras relationer. Motsvarar activityGroup/activity/relation i svaret.

Minst en av relation.typeCode och relation.id skall vara angiven."
* relation ^comment = "TKB-fält: `relation` (`RelationFilterType`, kardinalitet 0..*)."
* relation.id ^definition = "Begränsar sökningen till aktiviteter med den identitet som anges i sambandet/relationen. Detta ger exempelvis möjlighet att söka ut alla aktiviteter som har en relation till en viss observation."
* relation.id ^comment = "TKB-fält: `relation.id` (`IIType`, kardinalitet 0..1)."
* relation.typeCode ^definition = "Filtrera på relations-/sambandstyp"
* relation.typeCode ^comment = "TKB-fält: `relation.typeCode` (`CVType`, kardinalitet 0..1)."
* relation.typeCode.code ^definition = "Kod för relation/-sambandstyp"
* relation.typeCode.code ^comment = "TKB-fält: `relation.typeCode.code` (`String`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* relation.typeCode.codeSystem ^definition = "Kodsystem för relation-/sambandstyp"
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

caa-ga (aktivitet)"
* relation.referredInformationType ^comment = "TKB-fält: `relation. referredInformationType` (`String`, kardinalitet 1..1)."
