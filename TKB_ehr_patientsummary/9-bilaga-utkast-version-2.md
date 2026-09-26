# 9 Bilaga: utkast version 2 - ehr: patientsummary v1.0.0

* [**Table of Contents**](toc.md)
* **9 Bilaga: utkast version 2**

## 9 Bilaga: utkast version 2

# 9 Bilaga: utkast till ehr:patientsummary:2

Källan innehåller ytterligare ett dokument, [Tjanstekontraktsbeskrivning_ehr_patientsummary2_v1.2.docx](Tjanstekontraktsbeskrivning_ehr_patientsummary2_v1.2.docx) (utgåva PA1, 2012-11-30). Det är ett arbetsutkast till en version 2 av domänen med tjänsten **careDocumentation** (vård- och omsorgsdokument). Utkastet innehåller i stora delar mallens instruktionstext, och det finns inga scheman för det i källan. Det återges här i sin helhet men ingår inte i de logiska modellerna (se QUESTIONS.md).

### Dokumentinformation

ehr:patientsummary:2 Tjänstekontraktsbeskrivning Utgåva PA1 2012-11-30 Revisionshistorik

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| PA1 | 2012-12-03 | Arbetsdokument: Vårddokumentation tillagd | FS, MA |   |

### Inledning

Tjänstekontraktsbeskrivningen är ett teknik-oberoende, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt . Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL- filer). I detta avsnitt redovisas tjänstedomänens syfte, namn, namnrymd samt funktionella och informatinsmässiga omfattning. Det görs enligt följande standardtext: Detta är beskrivningen av tjänstekontrakten i tjänstedomänen `<tjänstedomänens beteckning enligt namnrymdsnotation>` (huvuddomän ”`<fullt utskriven huvuddomän på engelska>`”, underdomän ”`<fullt utskriven underdomän på engelska>`”). Den svenska benämningen är ”`<samma namn som i rubriken>`”. Tjänstedomänen omfattning är `<vilken aktivitet/process och intressent>` mot en `<typ av informationsägande verksamhet>`. Den kravställande processen är `<intressenten>`s behov av `<beskriv i termer av funktion och information och hänvisa till process-aktiviteter beskrivna enl. RIV-metoden>`. Beskriv kortfattat stegen i den process/flöde som tjänstekontrakten sammantaget stödjer så att samspelet mellan tjänstekontrakten blir tydligt. Gärna i form av en tekniskt anpassad flödesmodell ur RIV-specifikationen (dataflödesdiagram), t.ex. på det sätt som görs i T-bokens verksamhetsvy. Genom beskrivningen ska det vara helt tydligt varför tjänstekontrakten finns, vilken process (specifik eller abstrakt) som det syftar till att betjäna. Tjänstekontrakt beskrivs i första hand ur konsument-perspektivet. Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument. Ange också uppgifter kring projektet som utvecklat tjänstekontrakten i denna revision av tjänstedomänen enligt följande uppställning (till form och innehåll):

### Generella regler

Beskriv format-regler och behandlingsregler som är gemensamma för tjänstekontrakten i domänen. Exempel nedan.

### Format för Datum

Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

### Format för tidpunkter

Flera av tjänsterna handlar om att utbyta information om tidpunkter. Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDttmmss”.

### Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Felhantering

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av konsumenten. Informationen är inte riktad till användaren. Vid ett logiskt fel i de uppdaterande tjänsterna levereras resultCode, resultText. resultCode kan vara: OK transaktionen har utförts enligt uppdraget i frågemeddelandet. INFO transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel på detta kan vara ”kom fastande”. ERROR transaktionen har INTE kunnat utföras enligt p.g.a. logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara ”tiden har bokats av annan patient

### Gemensamma informationskomponenter

I tjänstekontraktsbeskrivningarna används ett antal komponenter som är gemensamma för vissa meddelande, och dessa beskrivs i detta avsnitt.

| | | | |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCode | Se ovan | 1..1 |
| resultText | ST | Ej obligatoriskt felmeddelande som innehåller information om felet som uppstod. Om resultatkoden är "OK" så är detta fält tomt. | 0..1 |

| | | | |
| :--- | :--- | :--- | :--- |
| authorTime | TS | Tidpunkt då dokumentet skapades | 1..1 |
| authorID | II | HSA-id för författare. OID för HSA används (1.2.752.129.2.2.1.4) |   |
| authorRoleCode | II | Kod för författarens befattning, enligt kodverket Befattning (OID 1.2.752.129.2.2.1.4) | 1..1 |
| authorName | ST | Namn på författaren |   |
| authorOrganizationID | HSAIdType | HSA-id för den enhet som författaren är uppdragstagare hos | 1..1 |
| authorOrganizationName | ST | Namn på den enhet som författaren är uppdragstagare hos | 0..1 |
| authorOrganizationTelecom | ST | Telefonnummer till den enhet som författaren är uppdragstag hos | 0..1 |
| authorOrganizationAddress | ST | Adress till den enhet som författaren är uppdragstagare hos | 0..1 |
| careProviderId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för | 1..1 |

| | | | |
| :--- | :--- | :--- | :--- |
| custodianID | HSAIdType | HSA-id för PDL-enhet | 1..1 |

| | | | |
| :--- | :--- | :--- | :--- |
| signatureTime | TS | Tidpunkt för signering, RIV: Vård- och omsorgsdokument.signeringstidpunkt | 1..1 |
| assignedEntity | assignedEntityType | Information om person som signerat dokument | 0..1 |

| | | | |
| :--- | :--- | :--- | :--- |
| assignedEntityID | HSAIdType | Information om person som signerat dokument | 1..1 |
| representedOrganizationID | HSAIdType | HSA-id för den organisation som personen har uppdrag för | 1..1 |

| | | | |
| :--- | :--- | :--- | :--- |
| authorizationCode | II | Kod för typ av menprövning. Värden från kodverket KV (Detta kodverk skall definieras). | 1..1 |

| | | | |
| :--- | :--- | :--- | :--- |
| encounterID | II | Unik identifierare för vård- och omsorgskontakt. OID kan sättas till 1.2.752.129.2.1.2.1 (Icke-nationell identifierare Org+lokalt unikt id) | 1..1 |
| encounterTime | TS | Tidpunkt för vård- och omsorgskontakt | 1..1 |

### careDocumentation (Vård- och omsorgsdokument)

careDocumentation returnerar en patients vårddokument, så som anteckningar av typerna utredning, åtgärd/behandling, sammanfattning, samordning, inskrivning, slutanteckning (vilket även inkluderar epikris), anteckning utan fysiskt möte, slutenvårdsanteckning samt besöksanteckning. Beskrivning av tjänstekontraktet. Detta avsnitt repeteras för varje tjänstekontrakt som ingår i tjänstedomänen. Detta är en instruktion till den som ska realisera tjänstekontrakt i tjänstedomänen. Denna beskrivning, nedanstående detaljer, de generella reglerna, testfallen och de maskinläsbara specifkationerna (WSDL, XSD, ..) ska sammantaget ge ett komplett underlag för den som ska realisera en tjänsteproducent, så väl som underlag för den som ska relaisera en tjänstekonsument. Tjänstekonsumenten ska inte behöva förhålla sig till producent/system-specifika förutsättningar.

### Frivillighet

Beskriv under vilka förutsättningar detta tjänstekontrakt är obligatoriskt för den informationsägande verksamheten. Om tjänstekontraktet alltid ska finnas när man är med i domänen anges ”Obligatoriskt”. I annat fall beskrivs när det är frivilligt och ev. beroenden till andra tjänstekontrakt ur ett process-perspektiv.

### Version

Ange huvudversion och underversion på formen `<huvudversion>`.`<underversion>` där innebörden av huvudversion och underversion överensstämmer med definition i RIV Tekniska Anvisningar.

### SLA-krav

SLA krav anger krav som alla producenter måste följa. Utgångspunkten är att det ska kunna finnas en nationell virtuell tjänst som ska uppvisa ett enhetligt SLA för konsumenter. På så sätt blir SLA krav en naturlig del av tjänstekontraktet. Redovisa kraven som måste vara uppfyllda av en tjänsteproducent i tabellen nedan. Inled med en kommentar om det finns något övergripande att tillägga utöver tabellens innehåll

### Fältregler

Ange regler i tabellen som gäller för fälten i begäran och Svar. Observera att reglerna ange vad som gäller inom ramen för just denna tjänst. Ofta används en för tjänstedomänen gemensam informationsstruktur för att specificera flera tjänstekontrakt inom domänen. I informationsstrukturen är många av fälten frivilliga, men i användningen i en specifik tjänstekontrakt blir förmodligen några av fälten obligatoriska. Samtliga fält beskrivs med de namn som används i den tekniska beskrivningen (engelska). Beskrivningen följer namn och struktur i den maskinläsbara representationen (tjänsteschema, meddelande-scheman).

### Begäran (Request)

| | | | |
| :--- | :--- | :--- | :--- |
| logicalAddress | ST | Adresseringsparameter. Adressen till tjänsteproducent | 1..1 |
| authorOrganizationID | HSAIdType | HSA-Id för e-tjänsteproducent, motsvarar authorOrganizationID i authorType | 1..1 |
| patientID | II | Patiententes identitet, nationellt unikt person-id. | 1..1 |
| timePeriod | IVL_TS | Begränsning av sökningen i tid, baserat på kliniskt / relevanta datum. Händelser anses ligga inom intervallet, om de till någon del ligger inom intervallet. (Start- och slutpunkt inkluderas i intervallet.) Formatet för start- respektive slutdatum är ÅÅÅÅMMDD. | 0..1 |

### Svar (Response)

| | | | |
| :--- | :--- | :--- | :--- |
| careDocumentation | careDocumentationType | De vård- och omsorgsdokument som matchar begäran. | 0..* |
| result | resultType | Fel-, varnings- och/eller informationsmeddelanden. | 1..1 |

| | | | |
| :--- | :--- | :--- | :--- |
| careDocumentationHeader | careDocumentationHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| careDocumentationBody | careDocumentationBodyType | Representerar den narrativa delen av dokumentet | 1..1 |

| | | | |
| :--- | :--- | :--- | :--- |
| careDocumentID | II | Vårddokumentets unika identifierare. OID kan sättas till 1.2.752.129.2.1.2.1 (Icke-nationell identifierare Org+lokalt unikt id) | 1..1 |
| careDocumentTitle | ST | Titel på dokumentet/anteckningen | 0..1 |
| careDocumentTime | TS | Tidpunkt då dokumentet skapades | 1..1 |
| patientID | II | Patientens ID. Root sätts till typ av patientidentifierare. Bland tillåtna typer finns: personnummer (1.2.752.129.2.1.3.1), samordningsnummer (1.2.752.129.2.1.3.3), reservnummer SLL (1.2.752.97.3.1.3) | 1..1 |
| author | authorType | Information om författare till dokumentet | 1..1 |
| custodian | custodianType | Information om PDL-enhet som har ansvar för informationen | 1..1 |
| legalAuthenticator | legalAuthenticatorType | Information om signering | 1..1 |
| authorization | authorizationType | Information om menprövning | 1..1 |
| encompassingEncounter | encompassingEncounterType | Information om Vård- och omsorgskontakt som föranlett vårddokumentation. | 1..1 |

| | | | |
| :--- | :--- | :--- | :--- |
| clinicalDocumentNote | clinicalDocumentNoteType | Dokument/anteckning | 1..1 |
| multimediaEntry | multimediaEntryType | Multimedia som finns i dokumentet, motsvaras av platshållare i careDocumentNoteText | 0..* |

| | | | |
| :--- | :--- | :--- | :--- |
| careDocumentNoteCode | CD | Typ av vård- och omsorgsdokument. Kod tas från KV Anteckningstyp (1.2.752.129.2.2.2.11). / Tillåtna värden från kodverk Anteckningstyp: / utr = Utredning, / atb = åtgärd/Behandling, / sam = Sammanfattning, / sao = Samordning, / ins = Inskrivning, / slu = Slutanteckning, / auf = Anteckning utan fysiskt / Epikris kodas som slutanteckning (slu) | 1..1 |
| careDocumentNoteTitle | ST | Titel på dokument | 0..1 |
| careDocumentNoteText | ST | Själva dokumentet. Formatet i textfältet ska följa HL7 CDA "Narrative Block". Om dokumentet innehåller multimedia läggs en platshållare i texten enligt formatet`<renderMultiMedia referencedObject="MM1"/>`. Innehåller dokumentet fler multimedia läggs ytterligare platshållare i texten, där referencesObject får namn "MM2", "MM3" osv | 1..1 |

| | | | |
| :--- | :--- | :--- | :--- |
| multiMediaID | ST | ID på multimedia (samma ID som anges i`<renderMultimedia>`i careDocumentNoteText) | 1..1 |
| value | ED | Multimediainnehållet, med lämplig mime-typ och kodningstyp. | 1..1 |

### Regler

Inga speciella regler.

### Tjänsteinteraktion

Ange namnet på tjänsteinteraktionen enl. standard för RIV Tekniska Anvisningar. Om tjänsteinteraktionstypen är Uppdrag-resultat, kommer två tjänstekontrakt att referera samma tjänsteinteraktion (initiativ-tagarens tjänstekontrakt respektive utförarens tjänstekontrakt).

