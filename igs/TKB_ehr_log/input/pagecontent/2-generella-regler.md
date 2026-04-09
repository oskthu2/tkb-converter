## Generella regler

### Format för tidpunkter
Flera av tjänsterna handlar om att utbyta information om tidpunkter.
Tidpunkter anges alltid på formatet ”ÅÅÅÅ-MM-DDTtt:mm:ss.zzz”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DDThh:mm:ss.zzz”. W3C-datatypen dateTime används för att realisera detta.

### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Felhantering
Vid ett tekniskt fel levereras ett resultat objekt med status kod ERROR och ett meddelande som i text beskriver felet. Exempel på detta kan vara följdeffekter av programmeringsfel. Denna information bör loggas av anropande system.
Vid ett logiskt fel i tjänsten levereras ett resultatobjekt med olika statuskod beroende på fel tillsammans med en beskrivande text. Det tjänstekontrakt som beskrivs i detta dokument använder olika statuskoder för att underlätta felhanteringen för anropande vårdsystem. Se vidare tjänstekontrakten för vilka statuskoder som är definierade.

### Säkerhet

#### Förlitande parter enligt RIV TA Basic Profile
Tjänsterna följer RIV Tekniska Anvisningar Basic Profile 2.1, vilket innebär att ett tekniskt trust-förhållande krävs mellan tjänstekonsumenten och tjänsteproducenten, baserat på att att konsument och producent ömsesidigt kan verifera det andra systemet via dess funktionscertifikat. Se vidare [RIV TA 2].

#### Behörighetsstyrning
Kontroll av att anropande system har rätt att anropa tjänsten.

#### Stark autentisering av slutanvändare
På loggtjänsten åligger krav på vårdgivaren att tillse att all åtkomst sker genom att användarna är starkt autentiserade och inte får åtkomst till mer uppgifter än nödvändigt i enlighet socialstyrelsens föreskrifter (SOSFS 2008:14). Dessa krav måste hanteras av det system som konsumerar tjänsterna enligt kontraktet. Om man som exempel bygger ett webbgränssnitt för loggadministration baserat på tjänstekontraktet för administration, behöver webbgränssnittet realisera dessa säkerhetskrav.

### Hantering av otillgänglighet
Tjänstekontraktet stödjer en arkitektur där där det är möjligt att integrera mot tjänsten utan att skapa ett hårt beroende i run-time.

### Logisk adressering
Alla tjänster i tjänstegränssnitten följer RIV-TA-profilens standard för logisk adressering. Med logisk adressering ges möjligheten att kunna ange en logisk adress/mottagare i det fall en tjänsteväxel (tjänsteplattform) används.
Logisk adressat skall anges även om loggtjänsten inte går via en tjänsteväxel.
Alla tjänster har ett obligatoriskt meddelandefält där mottagande vårdgivares Id (t.ex. HSA-id) skall anges som logisk adressat. HSA-id för den organisation vars tjänst adresseras (t.ex. HSA-id för Region Skåne)  Se tabellen nedan hur adressat skall anges.

| Tjänst | Logisk adressat |
| :--- | :--- |
| StoreLog | HSA-id för den organisation (vårdgivare) vars logg åtkomsten avser (t ex HSA-id för Region Skåne) |
| GetLogsForCareProvider | Samma som StoreLog |
| GetLogsForUser | Samma som StoreLog |
| GetLogsForPatient | Samma som StoreLog |
| GetAccessLogsForPatient | För aggregerande tjänst används Ineras HSA-id: 5565594230 / Vid adressering mot vårdgivare samma som StoreLog |
| GetInfoLogsForCareProvider | Samma som StoreLog |
| GetInfoLogsForPatient | Samma som StoreLog |

### Samverkan i aggregerande tjänster
Arkitekturen i logtjänsten har idag inget stöd för aggregering enligt T-boken med hjälp av engagemangsindex.
Aggregering sker istället genom att den aggregerande tjänsten anropar alla förekommande logiska adressater (anslutna vårdgivare) och returnerar all loginformation ifrån de producenter som svarar synkront - dvs oaktat om patienten faktiskt har loggposter hos alla anslutna vårdgivare.
Observera att en producent som returnerar queuedReportId kommer inte att returneras av den aggregerande tjänsten.
Se dokumentet Arkitekturella beslut för mer information.

### Termer och begrepp

| Term/begrepp | Förklaring |
| :--- | :--- |
|  |  |
|  |  |
|  |  |
|  |  |
|  |  |