## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

### V-MIM
Denna mappning görs av respektive tillämpande tjänstedomän.

### Informationsmodell
Följande tabell beskriver innehållet i en engagemangspost:
Varje tillämpande tjänstedomän preciserar betydelsen för de fält som är markerade med asterisk i informationsmodellen.

| Attribut | Beskrivning | Format | Mult | Kodverk/värde-mängd 
/ ev begränsningar | Beslutsregler och kommentar |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Registered ResidentIdent Identification | Invånarens personidentitet | Person- eller samordningsnummer enligt Skatteverkets definition (12 tecken). / Nationellt reservnummer enligt Ineras definition (12 tecken), se R3 för mer information. | 1..1 | Validering med xml-regexp uttryckt enligt: / [0-9]{8}[0-9A-Zptf]{4} | Del av instansens unikhet |
| Service domain | Den tjänstedomän som förekomsten avser. | URN på formen <regelverk>:<huvuddomän>:<underdomän>:<ev. ytterkligare nivå>. Ex: ”riv:crm:scheduling” | 1..1 | Nationellt index kan innehålla tjänstedomäner som är nationellt fastställda. Huvudmanna-index kan även tillåta icke-nationella domäner. | Del av instansens unikhet |
| Categori-zation* | Kategori-sering enligt kodverk som är specifikt för tjänste-domänen | Text bestående av bokstäver i ASCII. Exempel för domänen crm:scheduling: ”Booking”, ”Invitation” / Exempel för domänen careprocess:request: RequestStatus (remisstatus) | 1..1 | Enligt kodverk som beskrivs i respektive tjänstedomäns tjänstekontrakts-beskrivning. | Del av instansens unikhet |
| Logical address* | Referens till informationskällan enligt tjänste-domänens definition | Logisk adress enligt adresseringsmodell för det eller de tjänstekontrakt som realiseras av de aggregerande tjänster som använder posten vid aggregering. | 1..1 | Definieras av respektive tillämpande tjänstedomän. | Del av instansens unikhet |
| Business object Instance Identifier* | Unik identifierare för händelse-bärande objekt | Format enligt aktuell identifierare. / Exempel för domänen crm:scheduling: bookingid / Exempel för domänen clinicalprocess:healthcond:description: ”NA” | 1..1 | Typen av identifierare beror av tjänstedomänen. Om tjänstedomänen inte exponerar tjänster baserat på unika händelsebärande objekt, ska värdet vara konstanten ”NA” (not applicable). | Del av instansens unikhet |
| Clinical process interest id | Hälsoärende-id | GUID | 1..1 | ”NA” anges om hälsoärende-id inte tillämpas för domänen, annars värde enl. nat. standard för hälsoärende-id. | Del av instansens unikhet |
| Most Recent Content* | Verksamhets-mässig tidpunkt för senaste informations-förekomsten i källan som indexeras av denna indexpost | DT | 0..1 | Exakt betydelse är specifik för tjänstedomänen och definieras i respektive tjänstedomäns tjänstekontraktsbeskrivning. | Multiplicitet varierar med tjänstedomän. Möjliga regler är 0..1 och 1..1 |
| Creation Time | Tidpunkten då indexinstansen registrerades | DT | 1..1 |  | Genereras automatiskt av kontraktets tjänste-producent, dvs EI |
| Update Time | Tidpunkten då indexinstansen senast uppdaterades | DT | 0..1 |  | Uppdatering innebär ny post som matchar samtliga attribut som är del av en instans unikhet. |
| Data Controller | Ett värde som kan användas för att härleda (kan kräva manuella insatser) vem som är personuppgiftsansvarig för posten. | Format för det id-begrepp som används. | 1..1 | Identitet för den PUA som ansvarar för postens innehåll. / I första hand organisations-nummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.) / Viktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgifts-ansvarig för sin information i engagemangsindex. | Del av instansen unikhet |
| Source System | Systemet som genererade engagemangsposten | Källsystemet som innehåller den information som EI-posten pekar ut. / I regel det vårdsystem som skapade informationen eller det system som är master för informationen. | 1..1 | Syftet är att underlätta felsökning och ge spårbarhet. | Del av instansens unikhet |
| Owner | Organisation vars index tog emot ”update” från ”source system” | Organisationsnummer (HSA-id) för organisationen som äger indexinstansen. Organisationen är en myndighet eller Inera om uppdateringen togs emot direkt av nationellt index. | 1..1 | Syftet är att skapa förutsättningar för att undvika rundgång mellan notifierande parter. | Del av instansens unikhet |

### Formatregler

#### Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

#### Format för tidpunkter
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### Nationell accepterad personidentitet
Person- eller samordningsnummer enligt skatteverkets definition (12 tecken).
Nationellt reservnummer enligt Ineras definition (12 tecken), se referens Ref3
Validering enligt format(xml-regexp):
[0-9]{8}[0-9A-Zptf]{4}

##### Format för personnummer (registeredResidentIdentIdentification)
Personnummer anges enligt format CCYYMMDDNNNN.

##### Format för samordningsnummer (registeredResidentIdentIdentification)
Samordningsnummer anges enligt format CCYYMMDDNNNN.
De inledande sex siffrorna utgår från personens födelsetid (år, månad och dag). Därefter följer ett tresiffrigt individnummer som motsvarar födelsenumret i ett personnummer. Individnumret hämtas slumpvis ur en serie 001-999 för alla som är födda samma dag. Numret är udda för män och jämnt för kvinnor. Siffran för födelsedag ökas med talet 60 och en kontrollsiffra beräknas på samma sätt som för ett personnummer.
Exempel
Samordningsnummer för en man som är född den 3 oktober 1970 och har individnummer 239 blir
19701003
+60
————---
197010632391

##### Format för nationell reservidentitet (registeredResidentIdentIdentification)
XXYYMMDDNNGC. Se informationsspecifikationen i domänen strategicresourcemanagement.persons.person för mer information om formatet [Ref3].

