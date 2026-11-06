// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareDocumentationRequestFieldDescriptions
* careUnit ^definition = "Filtrering på vårdenhet vilket motsvarar accountableCareUnit i svaret.

root sätts till OID(1.2.752.129.2.1.4.1) för HSA

extension sätts till HSA-id på vårdenhet."
* careUnit ^comment = "TKB-fält: `careUnit` (`IIType`, kardinalitet 0..*)."
* healthcareProvider ^definition = "Filtrering på vårdgivare vilket motsvarar accountableHealthcareProvider i svaret.

root sätts till OID (1.2.752.129.2.1.4.1) för HSA

extension sätts till HSA-id på vårdgivare."
* healthcareProvider ^comment = "TKB-fält: `healthcareProvider` (`IIType`, kardinalitet 0..*)."
* patientId ^definition = "Id för patienten där fältet extension sätts till patientens identitetsbeteckning. Anges med 12 tecken utan avskiljare.

Tjänsteproducenten ska i svaret leverera all information om patienten på en begäran riktad mot någon av patientens identitetsbeteckningar, dvs. även information som har registrerats på andra till patienten kopplade identitetsbeteckningar (personnummer, samordningsnummer eller lokala reservnummer).

Fältet root sätts till OID för typ av identifierare.

1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.

2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.

3) Tjänsteproducenter ska även stödja sökning på lokal reservidentitet med hjälp av att ange lokalt definierade OID:ar för lokal reservidentitet, exempelvis SLL:s lokal reservidentitet (1.2.752.97.3.1.3).

OBS lokal reservidentitet kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för lokal reservidentitet.

En tjänstekonsument som vill begära mha. lokal reservidentitet måste därmed använda sig av systemadressering och ha vetskap om vilken OID för den specifika lokala reservidentitet som gäller vid anrop mot en specifik tjänsteproducent."
* patientId ^comment = "TKB-fält: `patientId` (`IIType`, kardinalitet 1..1)."
* datePeriod ^definition = "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där någon av tidpunkterna record.timestamp, author.timestamp, signature.timestamp i headern eller dissentingOpinion.authorTime i svaret ligger inom sökintervallets start- och slutdatum.

Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum."
* datePeriod ^comment = "TKB-fält: `datePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* sourceSystemId ^definition = "Begränsar sökningen till anteckningar som är skapade i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.

Fältet root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till källsystemets HSA-id.

Se även regel sourceSystemId."
* sourceSystemId ^comment = "TKB-fält: `sourceSystemId` (`IIType`, kardinalitet 0..1)."
* hasMoreReference ^definition = "Kan anges av tjänstekonsument när man tidigare fått ett hasMore-svar från tjänsteproducent att det finns ytterligare information att hämta.

Se även regel hasMoreReference."
* hasMoreReference ^comment = "TKB-fält: `hasMoreReference` (`string`, kardinalitet 0..1).

**Modellanteckning:** Kan anges av tjänstekonsument när man tidigare fått ett svar med hasMore.
Anropet måste då vara direktadresserat till den logiska adressen som angavs i hasMore."
