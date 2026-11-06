// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetLaboratoryOrderOutcomeRequestFieldDescriptions
* careUnitHSAId ^definition = "Filtrering på vårdenhet vilket motsvarar accountableCareUnit i svaret.

root sätts till OID (1.2.752.129.2.1.4.1) för HSA

extension sätts till HSA-id på vårdenhet"
* careUnitHSAId ^comment = "TKB-fält: `//*:careUnitHSAId` (`IIType`, kardinalitet 0..*)."
* careGiverHSAId ^definition = "Filtrering på vårdgivare vilket motsvarar accountableCareGiver i svaret.

root sätts till OID (1.2.752.129.2.1.4.1) för HSA

extension sätts till HSA-id på vårdgivare"
* careGiverHSAId ^comment = "TKB-fält: `//*:careGiverHSAId` (`IIType`, kardinalitet 0..*)."
* patientId ^definition = "Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare.

root sätts till OID för typ av personidentifierare.

För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.

För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.

För andra typer av personidentifierare sätts root till aktuell OID.

extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.

OBS lokal reservidentitet kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för lokal reservidentitet.

En tjänstekonsument som vill begära mha. lokal reservidentitet måste därmed använda sig av systemadressering och ha vetskap om vilken OID för den specifika lokala reservidentitet som gäller vid anrop mot en specifik tjänsteproducent."
* patientId ^comment = "TKB-fält: `//*:patientId` (`IIType`, kardinalitet 1..1).

**Regel 1.1:** När patientId.root är satt till OID för personnummer eller samordningsnummer så ska patientId.extension vara 12 tecken."
* datePeriod ^definition = "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där provtagningstidpunkten (`//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:timestamp`) i svaret ligger inom sökintervallets start- och slutdatumet.

Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse med tidpunkter ska hela det dygn som anges i slutdatum betraktas som en del av sökintervallet.

Om svaret omfattar analyser på flera prover tagna vid olika tidpunkter räcker det om någon av dessa ligger inom sökintervallet."
* datePeriod ^comment = "TKB-fält: `//*:datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* sourceSystemHSAId ^definition = "Begränsar sökningen till anteckningar som är skapade i angivet system.

root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)

extension sätts till källsystemets HSA-id."
* sourceSystemHSAId ^comment = "TKB-fält: `//*:sourceSystemHSAId` (`IIType`, kardinalitet 0..1).

**Regel 1.2:** Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).

Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges.

Ska anges vid begäran på reservnummer."
* specimenIdentifier ^definition = "Begränsar sökningen till angivna prov-identiteter."
* specimenIdentifier ^comment = "TKB-fält: `//*:specimenIdentifier` (`IIType`, kardinalitet 0..*)."
* referralIdentifier ^definition = "Begränsar sökningen till angivna remiss-identiteter"
* referralIdentifier ^comment = "TKB-fält: `//*:referralIdentifier` (`IIType`, kardinalitet 0..*)."
