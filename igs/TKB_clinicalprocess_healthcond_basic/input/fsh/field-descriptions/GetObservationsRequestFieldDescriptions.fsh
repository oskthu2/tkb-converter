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
* time.start ^definition = "Startdatum. Format ÅÅÅÅMMDDttmmss."
* time.start ^comment = "TKB-fält: `time.start` (`TimeStampType`, kardinalitet 0..1)."
* time.end ^definition = "Slutdatum. Format ÅÅÅÅMMDDttmmss."
* time.end ^comment = "TKB-fält: `time.end` (`TimeStampType`, kardinalitet 0..1)."
* observationType ^definition = "Begränsning av sökning avseende observationen till en viss typ av värde som man vill titta närmare på, t.ex. kliniskt fynd eller diagnoser."
* observationType ^comment = "TKB-fält: `observationType` (`CVType`, kardinalitet 0..*).

**Modellanteckning:** Begränsning av sökning avseende observationen till en viss typ av värde, t.ex. kliniskt fynd eller diagnoser.
code och codeSystem anges (1..1). codeSystemName, codeSystemVersion och displayName ska ignoreras
i begäran och ej skickas (0..0)."
* observationId ^definition = "Ett unikt värde för själva observationen som också refererar till vilket källsystem informationen kommer ifrån. Motsvarar observation/id i svaret."
* observationId ^comment = "TKB-fält: `observationId` (`IIType`, kardinalitet 0..*).

**Modellanteckning:** Motsvarar observation/id i svaret.
- root: källsystemets HSA-id.
- extension: den i källsystemet unika identiteten för observationen."
* careGiverId ^definition = "Används när man vill söka hos en specifik vårdgivare."
* careGiverId ^comment = "TKB-fält: `careGiverId` (`IIType`, kardinalitet 0..1).

**Modellanteckning:** - root: OID för HSA-id, 1.2.752.129.2.1.4.1.
- extension: HSA-id för vårdgivaren från vilken observationer ska returneras."
* careUnitId ^definition = "Begränsning av sökning mha HSAid för (PDL) vårdenhet som har ansvar för dokumentationen av obdervationen/observationerna."
* careUnitId ^comment = "TKB-fält: `careUnitId` (`IIType`, kardinalitet 0..1).

**Modellanteckning:** - root: OID för HSA-id, 1.2.752.129.2.1.4.1.
- extension: HSA-id för PDL-vårdenheten."
* interactionAgreementId ^definition = "Detta attribut används inte. Ange UUID

2866a7c4-9c60-433f-9035-a4d779ffe7a1"
* interactionAgreementId ^comment = "TKB-fält: `interactionAgreementId` (`UUIDType`, kardinalitet 1..1)."
* sourceSystemHSAId ^definition = "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.  Motsvarar observationGroup/sourceSystem i svaret."
* sourceSystemHSAId ^comment = "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1)."
* relation ^definition = "Endast de poster med relationer som matchar villkoren i denna lista skall returneras. Om listan är tom filtreras inte observationer på deras relationer."
* relation ^comment = "TKB-fält: `relation` (`RelationFilterType`, kardinalitet 0..*)."
* relation.relationId ^definition = "Filtrera poster på den identitet som anges i sambandet/relationen. Detta ger exempelvis möjlighet att söka ut alla observationer som har en relation till en viss aktivitet."
* relation.relationId ^comment = "TKB-fält: `relation.id` (`IIType`, kardinalitet 0..1).

**Modellanteckning:** - root: HSA-id för den vårdgivare som är ansvarig för informationen som sambandet pekar ut.
- extension: id som är unikt inom vårdgivaren oavsett vilket källsystem informationen lagras inom."
* relation.typeCode ^definition = "Filtrera på sambandstyp"
* relation.typeCode ^comment = "TKB-fält: `relation.typeCode` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** code och codeSystem för sambandstyp. codeSystemName, codeSystemVersion och displayName ska ej skickas."
* relation.referredInformationType ^definition = "Den typ av uppgift i patientjournal som sambandet pekar ut. Detta är en kod från Categorization i engagemangsindexposten. I denna version av tjänstekontraktet är följande typer möjliga:

chb-o  (observation)

caa-a (aktivitet)"
* relation.referredInformationType ^comment = "TKB-fält: `relation. referredInformationType` (`String`, kardinalitet 1..1)."
