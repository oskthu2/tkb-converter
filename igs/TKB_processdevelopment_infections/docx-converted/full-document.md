processdevelopment

![infections](images/img_001.png)
infections
Innehåll
Revisionshistorik	4
1	Inledning	7
2	Generella regler	7
2.1	Format för Datum	7
2.2	Format för tidpunkter	7
2.3	Tidszon för tidpunkter	7
2.4	Format för person-id	8
2.5	Format för koder och kodverk	8
2.6	Felhantering	8
2.7	Radering	8
2.8	Lokala identiteter	8
2.9	Mallar för transaktionsfiler	9
3	SLA-krav/support	9
3.1	Tillgänglighet/support	9
3.2	Svarstider	9
3.3	Last	9
4	ProcessPrescriptionReason	10
4.1	Begäran (Request)	10
4.2	Svar (Response)	13
4.2.1	Felkoder vid logiskt fel	14
4.3	Hantering av felaktiga koder	14
5	ProcessLaboratoryReport	15
5.1	Begäran (Request)	15
5.2	Svar (Response)	16
5.2.1	Felkoder vid logiskt fel	16
5.3	Hantering av felaktiga koder	17
6	ProcessActivity	18
6.1	Begäran (Request)	18
6.2	Svar (Response)	19
6.2.1	Felkoder vid logiskt fel	19
6.3	Hantering av felaktiga koder	20
7	ProcessCondition	21
7.1	Begäran (Request)	21
7.2	Svar (Response)	22
7.2.1	Felkoder vid logiskt fel	22
7.3	Hantering av felaktiga koder	23
8	ProcessCareEncounter	24
8.1	Begäran (Request)	24
8.2	Svar (Response)	25
8.2.1	Felkoder vid logiskt fel	25
9	DeletePrescriptionReason	26
9.1	Begäran (Request)	26
9.2	Svar (Response)	27
9.2.1	Felkoder vid logiskt fel	27
10	DeletePrescription	27
10.1	Begäran (Request)	27
10.2	Svar (Response)	28
10.2.1	Felkoder vid logiskt fel	28
11	DeleteLaboratoryReport	28
11.1	Begäran (Request)	28
11.2	Svar (Response)	29
11.2.1	Felkoder vid logiskt fel	29
12	DeleteActivity	30
12.1	Begäran (Request)	30
12.2	Svar (Response)	30
12.2.1	Felkoder vid logiskt fel	30
13	DeleteCondition	31
13.1	Begäran (Request)	31
13.2	Svar (Response)	31
13.2.1	Felkoder vid logiskt fel	32
14	DeleteCareEncounter	32
14.1	Begäran (Request)	32
14.2	Svar (Response)	32
14.2.1	Felkoder vid logiskt fel	33
Revisionshistorik

| Version | Datum | Författare | Kommentar |
| :--- | :--- | :--- | :--- |
| 0.1 | 2010-11-05 | Göran Oettinger, Mawell | Första version |
| 0.1 | 2010-11-05 | Torbjörn Dahlin, Maxwell | Granskad, reviderad |
| 0.2 | 2011-02-11 | Kristin Schoug Bertilsson, Mawell | Dokumentation av variabler |
| 0.3 | 2011-02-25 | Kristin Schoug Bertilsson, Mawell | Beskrivande termer för koder borttagna från meddelandeinnehållet samt felrättningar. / Namnet Riksskatteverket som anges som issuer för personnummer och samordningsnummer är ändrat till Skatteverket. |
| 0.4 | 2011-03-02 | Kristin Schoug Bertilsson, Mawell | Beskrivning av $$logical_address tillagd i samtliga tjänsteinteraktioner. / Text tillagd som anger att för samtliga lokala id:n ska HSA-id för den enhet inom vilken id:t är unikt anges före det lokala id:t. Detta för att underlätta hanteringen av olika openEHR-format för id:n. / Felrättning i löptext. / Beskrivning av svarstjänster tillagd. |
| 0.5 | 2011-04-04 | Kristin Schoug Bertilsson, Mawell | Ny variabel $$id_terminologi har lagts till. / Förtydligande beskrivning av vilken tidpunkt som ska anges i elementet start_time i fallet då flera aktiviteter eller tillstånd skickas i samma meddelande. |
| 0.6 | 2011-05-02 | Kristin Schoug Bertilsson, Mawell | Text som beskriver hanteringen av felaktiga koder har lagts till. |
| PA1 | 2011-06-15 | Kristin Schoug Bertilsson, Mawell | Variabel $$aktivitetsid2 i ProcessActivity har tagits bort då denna numera är samma som $$aktivitetsid |
| PA1.1 | 2011-09-21 | Kristin Schoug Bertilsson, Mawell | Förtydligande i beskrivning av variablerna $$svars-id, $$tillstånds-id (i ProcessCondition) och $$vårdkontakt-id / Mindre layoutjusteringar |
| PA1.2 | 2011-10-03 | Kristin Schoug Bertilsson, Mawell | Förändring i variabeln $$enhet_aktivitetsid samt tillägg av variablerna $$id_typ och $$id_utgivare i tjänsten ProcessPrescriptionReason. Förändringen beror på behovet av att hantera att en aktivitet är utförd hos en annan vårdgivare. |
| P1.3 | 2011-12-16 | Kristin Schoug Bertilsson, Mawell | Förtydligande av text i avsnitt 2.6. |
| P1.4 | 2012-04-26 | Kristin Schoug Bertilsson, Mawell | Förtydligande av text i avsnitt 8 kring att det är patientens faktiska placering som avses. / Variabeln $$kön_text i ConditionMessage borttagen då denna var felaktig. |
| P1.5 | 2012-09-12 | Torbjörn Dahlin, Mawell
Eva Biberg, Mawell | Korrigering av den beskrivande texter för attributet ” $$enhet_aktivitetsid” i avsnitt 4.1, de två sista meningarna ändrade/tillagda. / Lagt till förtydligande av $$aktivitetsid ” i avsnitt 4. / Förtydligande av ProcessPrescriptionReasonResponse. / Korrigering av avsnitt 4.2, tagit bort att fler ordinationsorsaker kan skickas i ett meddelande. / Ändrat beskrivning av Annan vårdgivare i ProcessPrescriptionReason. |
| P1.6 | 2012-11-01 | Eva Biberg, Mawell | Lagt till max antal tecken för unik identifierare |
| P1.7 | 2013-03-27 | Eva Biberg, Mawell | Korrigering inledning för respektive avsnitt / Korrigerat $$oid_personid samt lagt till $$födelsetidpunk i tjänsten ProcessCondition |
| P1.8 | 2013-09-12 | Eva Biberg, Mawell | Lagt till $$id_terminologi i ProcessActivity samt ProcessCondition |
| 1.8.1 | 2022-01-04 | Amina Minhas Rafique | Slagit ihop dokumenten Tjänstekontraktbeskrivning Infektionsverktyget Registreringstjänster & Deletetjänster samt bytt till Inera mall. Lagt till felkoder vid logiskt fel. |
| 1.0.2 | 2023-10-23 | Patrik Jakobsson | Justerat version, se arkitekturella beslut. / Ny mall / Kap 2.4 Format för person-id: tillagt / Kap 2.5 Format för koder och kodverk: omformulerat / Kap 2.8 Lokala identiteter: Förtydligat "uppgifter i patientjournaler" / Kap 2.9 Mallar för transaktionsfiler: tillagt / Kap 4.1, 5.1, 6.1, 7.1 & 8.1 Begäran (Request): / -omformulerat för att förklara hur mallar ska användas / -Kardinalitetskolumn tillagt / Informationsspecifikation utbytt mot RIV-specifikation / Kap 4.2.1, 5.2.1, 6.2.1, 7.2.1, 8.2.1, 9.2.1, 10.2.1, 11.2.1, 12.2.1, 13.2.1 & 14.2.1, Felkoder vid logiskt fel: Förtydligat vad som returneras / Kap 4.4, 5.4, 6.4, 7.4, 8.3, 9.3, 10.3, 11.3, 12.3, 13.3 & 14.2 Tjänsteinteraktion: borttagna |

## Inledning
Detta är beskrivningen av tjänstekontrakten för registrering och radering av tidigare registreringar av infektioner, antibiotikaanvändning, mikrolaboratoriesvar, åtgärder, tillstånd samt vårdtillfällen i Infektionsverktyget. Tjänsten anropas med information från en eller flera vårddatakällor från respektive ansluten vårdgivare till Infektionsverktyget.
Tjänstekontraktsbeskrivningen är ett teknisk-oberoende, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

## Generella regler

### Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”. Precisionen på datumet kan minskas från höger i vissa fall. I dokumentet ”RIV-specifikation Infektionsverktyget.pdf” finns angivet vilket format som gäller för respektive variabel.

### Format för tidpunkter
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDTttmmss”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDThhmmss”. Precisionen på tidpunkten kan minskas från höger. Detta innebär t.ex. att även formatet ÅÅÅÅMMDDTtt motsvarar en giltig tidpunkt.

### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Format för person-id
Unik identifierare för patienten som kan bestå av personnummer, samordningsnummer eller lokalt reservnummer.
Lokalt reservnummer görs unikt genom att ange HSA-id för den enhet inom vilken reservnumret är unikt tillsammans med det lokala reservnumret.
Personnummer anges på formatet ÅÅÅÅMMDDXXXX.
För lokala reservnummer används OID:n för icke-nationell identifierare Org+lokalt unikt id

### Format för koder och kodverk
I de fall ”kod” anges i fältregeltabellerna nedan så finns formatet närmare beskrivet i dokumentet RIV-specifikation Infektionsverktyget.pdf.

### Felhantering
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara nätverksproblem eller följdeffekter av programmeringsfel (exempelvis att anropet inte validerar mot tjänstens xml-schema).
Vid ett logiskt fel i anrop levereras felinformation i svarsmeddelandet (se beskrivningen för respektive tjänstekontrakt).

### Radering
Det är endast möjligt att radera information inom sin egen vårdgivare. Vårdgivare som anges i elementet logical_address verifieras av den nationella tjänsteplattformen. Infektionsverktyget använder denna säkrade information för att kontrollera mot den organisatoriska enhet som meddelandet refererar till.

### Lokala identiteter
Lokala identiteter på uppgifter i patientjournaler görs unika innan de överförs till Infektionsverktyget genom att använda HSA-id för den organisation eller det system inom vilket identiteten är unik. Identiteten som överförs till Infektionsverktyget blir då HSA-id + Lokalt id. Detta format används tillsammans med OID:n för Icke-nationell identifierare Org+lokalt unikt id som återfinns i dokumentet RIV-specifikation Infektionsverktyget.pdf. Observera att det i meddelandestrukturen finns två olika sätt att ange unik identifierare tillsammans med OID. Mallmeddelanden tillsammans med variabelbeskrivningar anger när respektive variant ska användas. Max antal tecken för HSA-id + Lokalt id är 100.

### Mallar för transaktionsfiler
Infektionsverktygets tjänstekontrakt ser lite annorlunda ut än tjänstekontrakten på Ineras övriga tjänster. När Infektionsverktygets tjänstekontrakt togs fram så fanns ambitionen att följa openEHR för samtliga tjänster, detta ändrades dock och nu är det endast infektionsverktyget som följer openEHR. Orsaken till detta är att när alla parametrar (även de som är frivilliga) som specificeras enl openEHR TDS (Template Data Schema) med Nationella Arketyper inkluderas i transaktionsfilerna så blir dessa över 5000 rader.
För att underlätta för anslutande system så har mallar av transaktionsfilerna för respektive tjänstekontrakt tagits fram. I dessa mallar är all nödvändig statisk data inkluderad. De variabla parametrarna är beskrivna i kapitlen nedan och känns igen i mallarna genom prefixet ”$$”. Om mallarna används för att skapa en transaktion så byts sonika texten inklusive prefixet ”$$” ut mot det värde som ska skickas in till Infektionsverktyget.

## SLA-krav/support
Kraven är gemensamma för samtliga operationer.

### Tillgänglighet/support
Dessa tjänster driftas med kontorstidssupport. System som utnyttjar dem skall inte vara beroende av tillgänglighet hos tjänsterna under vård av enskild patient. Dessa system måste därför kunna hantera omsändningar av information vid ett senare tillfälle. Tjänsterna är normalt tillgängliga 24h/dygn. Information som skall vara tillgänglig för analysdagen efter skall vara överförd innan innevarande dygn är slut. Om information levereras senare kommer den inte vara tillgänglig förrän efter ytterligare ett dygn (detta leder dock inte till några andra problem).

### Svarstider
Ett enskilt anrop ska utföras på <0.5 sekunder exklusive nätverksfördröjningar till den nationella tjänsteplattformen. Ett anslutet system rekommenderas utföra flera parallella anrop vid behov för att öka genomströmningshastigheten.

### Last
Tjänsterna är dimensionerade för att ta emot 100 000 anrop/dygn. Om den faktiska lasten skulle överskrida detta finns möjlighet att skala ut lösningen med flera front-end servrar.

## ProcessPrescriptionReason
Tjänsten registrerar en ordinationsorsak med information om patient, organisatorisk enhet, eventuellt aktivitet som ordinationsorsaken har kopplats till, ordination och ordinerad substans. Observera att det endast är möjligt att skicka en ordination per meddelande. En befintlig ordinationsorsak kan uppdateras genom att ett nytt meddelande med samma id (aktivitetsid eller tillståndsid) skickas in. Tjänsten svarar antingen att det har gått bra eller med ett felmeddelande.

### Begäran (Request)
Då meddelandestrukturen består av ett flertal statiska element (se kap2.8) listas här endast de element som har ett dynamiskt innehåll. Dessa anges som variabler i tabellen nedan. Om de fördefinierade mallarna utnyttjas för att skapa transaktionsfiler så söker man upp variabelnamnet (som inleds med prefixet $$) och ersätter med värdet som ska skickas till Infektionsverktyget. För de variabler som finns beskrivna i Infektionsverktygets RIV-specifikation ges en hänvisning till den klass och det attribut som variabeln motsvarar (Klass.attribut/Klass.association.Klass.attribut).

| Variabel | Variabel | Typ | Värde | Kard |
| :--- | :--- | :--- | :--- | :--- |
| $$logical_address | $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. / HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1 |
| $$registreringstidpunkt_ordinationstidpunkt | $$registreringstidpunkt_ordinationstidpunkt | Tid | I de fall en ordination finns anges här Ordinationsmoment.ordinationstidpunkt. / I annat fall lämnas detta fält tomt. | 0..1 |
| $$vårdgivare | $$vårdgivare | HSA-id | HSA-id för aktuell vårdgivare. | 1 |
| $$registrerande enhet | $$registrerande enhet | HSA-id | RIV-specifikation: Ordinationsorsak.registreras vid.Enhet.enhets-id | 1 |
| $$registreringstidpunkt | $$registreringstidpunkt | Tid | I de fall en ordinationsorsak registreras utan ordination anges här Ordinationsorsak.registreringstidpunkt i annat fall lämnas detta fält tomt. | 0..1 |
| aktivitetsmoment | aktivitetsmoment |  | Ange antingen aktivitetsmoment ELLER ordinationsmoment (se nedan) | 0..1 |
|  | aktivitetsmoment: $$id_terminologi | OID/Unikt id | Identifierare (OID eller annan unik identifierare) som anger vilket kodverk som aktuell kod tillhör. Möjliga värden är OID för Snomed CT och id för Infektionsverktygets kodverk med annan-koder. | 1 |
|  | aktivitetsmoment: $$aktivitetskod | Kod | RIV-specifikation: Aktivitetsmoment.aktivitetskod | 1 |
| aktivitet | aktivitet |  | Aktivitet är obligatoriskt om aktivitetsmoment är angivet annars frivilligt. | 0..1 |
|  | aktivitet: 
$$id_utgivare | Text | Möjliga värden: / CeHis - I de fall värdet i $$enhet_aktivitetsid är ett HSA-id. / Infektionsverktyget – I de fall värdet i $$enhet_aktivitetsid är en annan unik identifierare. | 1 |
|  | aktivitet: 
$$enhet_aktivitetsid | HSA-id/Unikt id | HSA-id alternativt annan unik identifierare för den enhet inom vilket aktuellt aktivitets-id är unikt. Annan unik identifierare används i de fall då aktiviteten är utförd hos en annan vårdgivare. Följande id:n är då möjliga att använda: / Annan vårdgivare: BC533FBB-DD4F-4F14-9E77-9E67A1E6D738 / Annan vårdgivare Sverige: CFEEC579-C1FD-41C7-B940-1DD15CB6957A / Annan vårdgivare utomlands: DDCD0F15-E459-4F5C-BCD6-478D9C3040EE / När en aktivitet är utförd hos en annan vårdgivare skall inget id anges (i $$aktivitetsid). / I ett journalsystemsgränssnitt visar man för användaren antingen upp valet ”Annan vårdgivare” eller både ”Annan vårdgivare Sverige” och ”Annan vårdgivare utomlands. | 1 |
|  | aktivitet: 
$$aktivitetsid | Lokalt id | RIV-specifikation: Aktivitet.aktivitets-id / HSA-id + Lokalt id. / HSA-id för den enhet inom vilket aktuellt aktivitets-id är unikt anges före det lokala id:t. / Notera att detta attribut har olika betydelse beroende på om mallen för Activity ( profylax) eller Condition (infektion) används. För Activity avses ett id för själva profylaxbehandlingen, för Condition avses ett id för den åtgärd som orsakat en post-operativ infektion. / I Condition-fallet måste den angivna åtgärden sändas via ProcessActivity-tjänsten (innan eller efter anropet till ProcessPrescriptionReason) för att kopplingen skall bli komplett. Innan ProcessActivity anropats ligger kopplingen till åtgärden i en väntekö. | 1 |
|  | aktivitet: 
$$id_typ | OID | OID för lokalt id då ett id anges i $$aktivitetsid. Då aktiviteten är utförd hos en annan vårdgivare och inget id finns skall elementet $$id_typ lämnas tomt. | 0..1 |
| bedömtHälsorelateratTillstånd | bedömtHälsorelateratTillstånd |  |  | 0..1 |
|  | bedömtHälsorelateratTillstånd: 
$$tillståndskod | Kod | RIV-specifikation: / Bedömt hälsorelaterat tillstånd.tillståndskod | 1 |
|  | bedömtHälsorelateratTillstånd:
$$smittväg | Kod | RIV-specifikation: / Bedömt hälsorelaterat tillstånd.smittväg | 1 |
|  | bedömtHälsorelateratTillstånd:
$$enhet_tillståndsid | HSA-id | HSA-id för den enhet inom vilket aktuellt tillstånds-id är unikt. | 1 |
|  | bedömtHälsorelateratTillstånd:
$$tillståndsid | Lokalt id | RIV-specifikation: / Bedömt hälsorelaterat tillstånd.tillstånds-id / HSA-id + Lokalt id. / HSA-id för den enhet inom vilket aktuellt tillstånds-id är unikt anges före det lokala id:t. | 1 |
| ordinationsmoment | ordinationsmoment |  | Ange antingen ordinationsmoment ELLER aktivitetsmoment (se ovan) | 0..1 |
|  | ordinationsmoment: $$ordinationstidpunkt | Tid | RIV-specifikation: Ordinationsmoment.ordinationstidpunkt | 1 |
|  | ordinationsmoment: $$enhet_ordinationsid | HSA-id | HSA-id för den enhet inom vilket aktuellt ordinations-id är unikt. | 1 |
|  | ordinationsmoment: $$ordinationsid | Lokalt id | RIV-specifikation: Ordination.ordinations-id / HSA-id + Lokalt id. / HSA-id för den enhet inom vilket aktuellt ordinations-id är unikt anges före det lokala id:t. | 1 |
|  | ordinationsmoment: $$ATC-kod | Kod | RIV-specifikation: Läkemedelssubstans.ATC-kod | 1..* |
| $$issuer_personid | $$issuer_personid | Text | För personnummer och samordningsnummer är $$issuer_personid = Skatteverket. / För lokalt reservnummer är $$issuer_personid = CeHis | 1 |
| $$assigner_personid | $$assigner_personid | Text eller HSA-id | För personnummer och samordningsnummer är $$issuer_personid = Folkbokföringen. / För lokalt reservnummer är $$assigner_personid = HSA-id för den enhet inom vilket aktuellt reservnummer är unikt | 1 |
| $$personid | $$personid | Personnummer / Samordnings-nummer / Lokalt reservnummer | RIV-specifikation: / Patient.person-id | 1 |
| $$oid_personid | $$oid_personid | OID | OID för personnummer, samordningsnummer eller icke-nationell identifierare Org + lokalt unikt id | 1 |
| $$födelsetidpunkt | $$födelsetidpunkt | Tid | RIV-specifikation: Patient.födelsetidpunkt | 1 |
| $$kön | $$kön | Kod | RIV-specifikation: / Patient.kön | 1 |

### Svar (Response)

| ProcessPrescriptionReasonResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

#### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet ”comment”.

| ProcessPrescriptionReason | ProcessPrescriptionReason | ProcessPrescriptionReason |
| :--- | :--- | :--- |
| Felkod | Felmeddelande | Beskrivning |
| 50001 | Kunde inte hitta angivet kodsystem (" + CodeSystemDescription + ") gällande " + CodeSystemForThisTypeOfCodes + "-koder för externt-id " + ExterntId; | Angivet kodsystemid är ogiltigt |
| 50002 | Kunde inte hitta angiven " + CodeCategory + "-kod (" + Code + ") i kodsystem " + CodeSystem + " (" + CodeSystemName + ") för externt-id " + ExterntId; | Angiven kod finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |
| 50012 | Externt-id " + ExterntId + " används av en annan vårdgivare; | Externt id används av en annan vårdgivare |
| 50013 | Organisatorisk Enhet (" + OrganisationsHsaId + ") tillhör inte vårdgivare (" + VardgivareHsaId + "); | OE tillhör inte vårdgivaren som skickar in data |
| 50014 | UtfärdatAv för patientid " + patientid + " är ogiltigt: " + kodsystem + "(" + utfardatAv + ") | Utfärdare saknar behörighet i Infektionsverktyget |
| 50015 | Ogiltig kod för kön (" + gender + ") i kodsystem (" + codeSystem + ") | Felaktig könskod inskickad |
| 50016 | Ordination med id " + externalId + " har redan en ordinationsorsak registrerad |  |

### Hantering av felaktiga koder
Om en, enligt terminologiservern, ej giltig ordinationsorsakskod (tillståndskod eller aktivitetskod) skickas till Infektionsverktyget så ignoreras denna och registreras därmed inte i Infektionsverktyget. I svaret returneras ERROR.

## ProcessLaboratoryReport
Tjänsten registrerar ett nytt laboratoriesvar med tillhörande information om patient, beställande enhet, provtagningstidpunkt och agensförekomst. Ett befintligt laboratoriesvar kan uppdateras genom att ett nytt meddelande med samma svarsid skickas in. Tjänsten svarar antingen att det har gått bra eller med ett felmeddelande.

### Begäran (Request)
Då meddelandestrukturen består av ett flertal statiska element (se kap 2.8) listas här endast de element som har ett dynamiskt innehåll. Dessa anges som variabler i tabellen nedan. Om de fördefinierade mallarna utnyttjas för att skapa transaktionsfiler så söker man upp variabelnamnet (som inleds med prefixet $$) och ersätter med värdet som ska skickas till Infektionsverktyget. För de variabler som finns beskrivna i Infektionsverktygets RIV-specifikation ges en hänvisning till den klass och det attribut som variabeln motsvarar (Klass.attribut/Klass.association.Klass.attribut).

| Variabel | Variabel | Typ | Värde | Kard |
| :--- | :--- | :--- | :--- | :--- |
| $$logical_address | $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. / HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1 |
| $$svarsid | $$svarsid | Lokalt id | RIV-specifikation: Laboratoriesvar.svars-id / HSA-id + Lokalt id. / HSA-id för den enhet inom vilket aktuellt svars-id är unikt anges före det lokala id:t. | 1 |
| $$provtagningstidpunkt | $$provtagningstidpunkt | Tid | RIV-specifikation: Provtagning.provtagningstidpunkt | 1 |
| $$vårdgivare | $$vårdgivare | HSA-id | HSA-id för aktuell vårdgivare. | 1 |
| $$registrerande enhet | $$registrerande enhet | HSA-id | RIV-specifikation: Laboratoriesvar.har beställande.Enhet.enhets-id | 1 |
| Mikrobiologiska fynd | Mikrobiologiska fynd |  |  | 1..* |
|  | Mikrobiologiska fynd: $$observationstidpunkt | Tid | RIV-specifikation: / Mikrobiologiskt fynd.observationstidpunkt | 1 |
|  | Mikrobiologiska fynd: 
$$agenskod | Kod | RIV-specifikation: / Mikrobiologiskt fynd.agenskod | 1 |
| $$issuer_personid | $$issuer_personid | Text | För personnummer och samordningsnummer är $$issuer_personid = Skatteverket. / För lokalt reservnummer är $$issuer_personid = CeHis | 1 |
| $$assigner_personid | $$assigner_personid | Text eller HSA-id | För personnummer och samordningsnummer är $$issuer_personid = Folkbokföringen. / För lokalt reservnummer är $$assigner_personid = HSA-id för den enhet inom vilket aktuellt reservnummer är unikt | 1 |
| $$personid | $$personid | Personnummer / Samordnings-nummer / Lokalt reservnummer | RIV-specifikation: / Patient.person-id | 1 |
| $$oid_personid | $$oid_personid | OID | OID för personnummer, nationellt reservnummer eller samordningsnummer | 1 |
| $$födelsetidpunkt | $$födelsetidpunkt | Tid | RIV-specifikation: Patient.födelsetidpunkt | 1 |
| $$kön | $$kön | Kod | RIV-specifikation: / Patient.kön | 1 |

### Svar (Response)

| ProcessLaboratoryReportResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

#### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet ”comment”.

| ProcessLaboratoryReport | ProcessLaboratoryReport | ProcessLaboratoryReport |
| :--- | :--- | :--- |
| Felkod | Felmeddelande | Beskrivning |
| 50001 | Kunde inte hitta angivet kodsystem (" + CodeSystemDescription + ") gällande " + CodeSystemForThisTypeOfCodes + "-koder för externt-id " + ExterntId; | Angivet kodsystemid är ogiltigt |
| 50002 | Kunde inte hitta angiven " + CodeCategory + "-kod (" + Code + ") i kodsystem " + CodeSystem + " (" + CodeSystemName + ") för externt-id " + ExterntId; | Angiven kod finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |
| 50012 | Externt-id " + ExterntId + " används av en annan vårdgivare; | Externt id används av en annan vårdgivare |
| 50013 | Organisatorisk Enhet (" + OrganisationsHsaId + ") tillhör inte vårdgivare (" + VardgivareHsaId + "); | OE tillhör inte vårdgivaren som skickar in data |
| 50014 | UtfärdatAv för patientid " + patientid + " är ogiltigt: " + kodsystem + "(" + utfardatAv + ") | Utfärdare saknar behörighet i Infektionsverktyget |
| 50015 | Ogiltig kod för kön (" + gender + ") i kodsystem (" + codeSystem + ") | Felaktig könskod inskickad |

### Hantering av felaktiga koder
Om en, enligt terminologiservern, ej giltig agenskod skickas till Infektionsverktyget så ignoreras denna och registreras därmed inte i Infektionsverktyget. I de fall då ett meddelande omfattar endast ett mikrobiologiskt fynd och detta anges med en ej giltig kod returneras ERROR i svaret. I de fall då ett meddelande omfattar fler fynd där någon av koderna är felaktig returneras INFO med en varning om att den ej giltiga koden inte har registrerats. Dock registreras övriga koder i meddelandet förutsatt att dessa är giltiga.

## ProcessActivity
Tjänsten registrerar en eller flera aktiviteter som utförts på en patient på en viss enhet. En befintlig aktivitet kan uppdateras genom att ett nytt meddelande med samma aktivitetsid skickas in. Tjänsten svarar antingen att det har gått bra eller med ett felmeddelande.

### Begäran (Request)
Då meddelandestrukturen består av ett flertal statiska element (se kap 2.8) listas här endast de element som har ett dynamiskt innehåll. Dessa anges som variabler i tabellen nedan. Om de fördefinierade mallarna utnyttjas för att skapa transaktionsfiler så söker man upp variabelnamnet (som inleds med prefixet $$) och ersätter med värdet som ska skickas till Infektionsverktyget. För de variabler som finns beskrivna i Infektionsverktygets RIV-specifikation ges en hänvisning till den klass och det attribut som variabeln motsvarar (Klass.attribut/Klass.association.Klass.attribut).

| Variabel | Typ | Värde | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. / HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1 |
| $$aktivitetsmomenttid | Tid | RIV-specifikation: Aktivitetsmoment.aktivitetsmomenttid / Då $$aktivitetsmomenttid anges i elementet start_time och meddelandet omfattar flera aktiviteter ska den första (i tid mätt) aktivitetens tid anges. | 1 |
| $$vårdgivare | HSA-id | HSA-id för aktuell vårdgivare. | 1 |
| $$registrerande enhet | HSA-id | RIV-specifikation: Aktivitetsmoment.utförs vid.Enhet.enhets-id | 1 |
| $$aktivitetsid | Lokalt id | RIV-specifikation: Aktivitet.aktivitets-id / HSA-id + Lokalt id. / HSA-id för den enhet inom vilket aktuellt aktivitets-id är unikt anges före det lokala id:t. | 1 |
| $$id_terminologi | OID | Identifierare som anger vilket kodverk som aktuell kod tillhör. Möjliga värden är OID för Snomed CT och OID för KVÅ | 1 |
| $$aktivitetskod | Kod | RIV-specifikation: Aktivitetsmoment.aktivitetskod | 1 |
| $$enhet_aktivitetsid | HSA-id | HSA-id för den enhet inom vilket aktuellt aktivitets-id är unikt. | 1 |
| $$issuer_personid | Text | För personnummer och samordningsnummer är $$issuer_personid = Skatteverket. / För lokalt reservnummer är $$issuer_personid = CeHis | 1 |
| $$assigner_personid | Text eller HSA-id | För personnummer och samordningsnummer är $$issuer_personid = Folkbokföringen. / För lokalt reservnummer är $$assigner_personid = HSA-id för den enhet inom vilket aktuellt reservnummer är unikt | 1 |
| $$personid | Personnummer / Samordnings-nummer / Lokalt reservnummer | RIV-specifikation: / Patient.person-id | 1 |
| $$oid_personid | OID | OID för personnummer, nationellt reservnummer eller samordningsnummer | 1 |
| $$födelsetidpunkt | Tid | RIV-specifikation: Patient.födelsetidpunkt | 1 |
| $$kön | Kod | RIV-specifikation: / Patient.kön | 1 |

### Svar (Response)

| ProcessActivityResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet 1beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

#### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet ”comment”.

| ProcessActivity | ProcessActivity | ProcessActivity |
| :--- | :--- | :--- |
| Felkod | Felmeddelande | Beskrivning |
| 50001 | Kunde inte hitta angivet kodsystem (" + CodeSystemDescription + ") gällande " + CodeSystemForThisTypeOfCodes + "-koder för externt-id " + ExterntId; | Angivet kodsystemid är ogiltigt |
| 50002 | Kunde inte hitta angiven " + CodeCategory + "-kod (" + Code + ") i kodsystem " + CodeSystem + " (" + CodeSystemName + ") för externt-id " + ExterntId; | Angiven kod finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |
| 50012 | Externt-id " + ExterntId + " används av en annan vårdgivare; | Externt id används av en annan vårdgivare |
| 50013 | Organisatorisk Enhet (" + OrganisationsHsaId + ") tillhör inte vårdgivare (" + VardgivareHsaId + "); | OE tillhör inte vårdgivaren som skickar in data |
| 50014 | UtfärdatAv för patientid " + patientid + " är ogiltigt: " + kodsystem + "(" + utfardatAv + ") | Utfärdare saknar behörighet i Infektionsverktyget |
| 50015 | Ogiltig kod för kön (" + gender + ") i kodsystem (" + codeSystem + ") | Felaktig könskod inskickad |

### Hantering av felaktiga koder
Om en, enligt terminologiservern, ej giltig aktivitetskod skickas till Infektionsverktyget så ignoreras denna och registreras därmed inte i Infektionsverktyget. I de fall då ett meddelande omfattar endast en aktivitet och denna anges med en ej giltig kod returneras ERROR i svaret. I de fall då ett meddelande omfattar fler aktiviteter där någon av koderna är felaktig returneras INFO med en varning om att den ej giltiga koden inte har registrerats. Dock registreras övriga koder i meddelandet förutsatt att dessa är giltiga.

## ProcessCondition
Tjänsten registrerar ett eller flera nya bedömt hälsorelaterat tillstånd med information om patient, organisatorisk enhet och tillstånd. Ett befintligt tillstånd kan uppdateras genom att ett nytt meddelande med samma tillståndsid skickas in. Tjänsten svarar antingen att det har gått bra eller med ett felmeddelande.

### Begäran (Request)
Då meddelandestrukturen består av ett flertal statiska element (se kap 2.8) listas här endast de element som har ett dynamiskt innehåll. Dessa anges som variabler i tabellen nedan. Om de fördefinierade mallarna utnyttjas för att skapa transaktionsfiler så söker man upp variabelnamnet (som inleds med prefixet $$) och ersätter med värdet som ska skickas till Infektionsverktyget. För de variabler som finns beskrivna i Infektionsverktygets RIV-specifikation ges en hänvisning till den klass och det attribut som variabeln motsvarar (Klass.attribut/Klass.association.Klass.attribut).

| Variabel | Typ | Värde | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. / HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1 |
| $$tillståndstid | Tid | RIV-specifikation: / Bedömt hälsorelaterat tillstånd.tillståndstid / Då $$tillståndstid anges i elementet start_time och meddelandet omfattar flera tillstånd ska det första (i tid mätt) tillståndets tid anges. | 1 |
| $$vårdgivare | HSA-id | HSA-id för aktuell vårdgivare. | 1 |
| $$registrerande enhet | HSA-id | RIV-specifikation: / Bedömt hälsorelaterat tillstånd.bedöms vid.Enhet.enhets-id | 1 |
| $$tillståndsid | Lokalt id | RIV-specifikation: / Bedömt hälsorelaterat tillstånd.tillstånds-id / HSA-id + Lokalt id. / HSA-id för den enhet inom vilket aktuellt tillstånds-id är unikt anges före det lokala id:t. | 0..1 |
| $$id_terminologi | OID | Identifierare som anger vilket kodverk som aktuell kod tillhör. Möjliga värden är OID för Snomed CT och OID för ICD-10-SE | 1 |
| $$tillståndskod | Kod | RIV-specifikation: / Bedömt hälsorelaterat tillstånd.tillståndskod | 1 |
| $$issuer_personid | Text | För personnummer och samordningsnummer är $$issuer_personid = Skatteverket. / För lokalt reservnummer är $$issuer_personid = CeHis | 1 |
| $$assigner_personid | Text eller HSA-id | För personnummer och samordningsnummer är $$issuer_personid = Folkbokföringen. / För lokalt reservnummer är $$assigner_personid = HSA-id för den enhet inom vilket aktuellt reservnummer är unikt | 1 |
| $$personid | Personnummer / Samordnings-nummer / Lokalt reservnummer | RIV-specifikation: / Patient.person-id | 1 |
| $$oid_personid | OID | OID för personnummer, nationellt reservnummer eller samordningsnummer | 1 |
| $$födelsetidpunkt | Tid | RIV-specifikation: Patient.födelsetidpunkt | 1 |
| $$kön | Kod | RIV-specifikation: / Patient.kön | 1 |

### Svar (Response)

| ProcessContitionResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

#### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet ”comment”.

| ProcessContition | ProcessContition | ProcessContition |
| :--- | :--- | :--- |
| Felkod | Felmeddelande | Beskrivning |
| 50001 | Kunde inte hitta angivet kodsystem (" + CodeSystemDescription + ") gällande " + CodeSystemForThisTypeOfCodes + "-koder för externt-id " + ExterntId; | Angivet kodsystemid är ogiltigt |
| 50002 | Kunde inte hitta angiven " + CodeCategory + "-kod (" + Code + ") i kodsystem " + CodeSystem + " (" + CodeSystemName + ") för externt-id " + ExterntId; | Angiven kod finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |
| 50012 | Externt-id " + ExterntId + " används av en annan vårdgivare; | Externt id används av en annan vårdgivare |
| 50013 | Organisatorisk Enhet (" + OrganisationsHsaId + ") tillhör inte vårdgivare (" + VardgivareHsaId + "); | OE tillhör inte vårdgivaren som skickar in data |
| 50014 | UtfärdatAv för patientid " + patientid + " är ogiltigt: " + kodsystem + "(" + utfardatAv + ") | Utfärdare saknar behörighet i Infektionsverktyget |
| 50015 | Ogiltig kod för kön (" + gender + ") i kodsystem (" + codeSystem + ") | Felaktig könskod inskickad |

### Hantering av felaktiga koder
Om en, enligt terminologiservern, ej giltig tillståndskod skickas till Infektionsverktyget så ignoreras denna och registreras därmed inte i Infektionsverktyget. I de fall då ett meddelande omfattar endast ett tillstånd och denna anges med en ej giltig kod returneras ERROR i svaret. I de fall då ett meddelande omfattar fler tillstånd där någon av koderna är felaktig returneras INFO med en varning om att den ej giltiga koden inte har registrerats. Dock registreras övriga koder i meddelandet förutsatt att dessa är giltiga.

## ProcessCareEncounter
Tjänsten registrerar en ny patientplacering med information om patient, organisatorisk enhet och period för placeringen. En befintlig patientplacering kan uppdateras genom att ett nytt meddelande med samma vårdkontaktid skickas in. Tjänsten svarar antingen att det har gått bra eller med ett felmeddelande.

### Begäran (Request)
Då meddelandestrukturen består av ett flertal statiska element (se kap 2.8) listas här endast de element som har ett dynamiskt innehåll. Dessa anges som variabler i tabellen nedan. Om de fördefinierade mallarna utnyttjas för att skapa transaktionsfiler så söker man upp variabelnamnet (som inleds med prefixet $$) och ersätter med värdet som ska skickas till Infektionsverktyget. För de variabler som finns beskrivna i Infektionsverktygets RIV-specifikation ges en hänvisning till den klass och det attribut som variabeln motsvarar (Klass.attribut/Klass.association.Klass.attribut).

| Variabel | Typ | Värde | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. / HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1 |
| $$vårdkontaktid | Lokalt id | RIV-specifikation: Vårdkontakt.vårdkontakt-id / HSA-id + Lokalt id. / HSA-id för den enhet inom vilket aktuellt svars-id är unikt anges före det lokala id:t. | 1 |
| $$vårdkontakttid_ / starttidpunkt | Tid | RIV-specifikation: Vårdkontakt.vårdkontakttid | 1 |
| $$vårdkontakttid_ / sluttidpunkt | Tid | RIV-specifikation: Vårdkontakt.vårdkontakttid | 0..1 |
| $$vårdgivare | HSA-id | HSA-id för aktuell vårdgivare. | 1 |
| $$registrerande enhet | HSA-id | RIV-specifikation: Vårdkontakt.utförs vid.Enhet.enhets-id | 1 |
| $$issuer_personid | Text | För personnummer och samordningsnummer är $$issuer_personid = Skatteverket. / För lokalt reservnummer är $$issuer_personid = CeHis | 1 |
| $$assigner_personid | Text eller HSA-id | För personnummer och samordningsnummer är $$issuer_personid = Folkbokföringen. / För lokalt reservnummer är $$assigner_personid = HSA-id för den enhet inom vilket aktuellt reservnummer är unikt | 1 |
| $$personid | Personnummer / Samordnings-nummer / Lokalt reservnummer | RIV-specifikation: / Patient.person-id | 1 |
| $$oid_personid | OID | OID för personnummer, nationellt reservnummer eller samordningsnummer | 1 |
| $$födelsetidpunkt | Tid | RIV-specifikation: Patient.födelsetidpunkt | 1 |
| $$kön | Kod | RIV-specifikation: / Patient.kön | 1 |

### Svar (Response)

| ProcessCareEncounterResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

#### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet ”comment”.

| ProcessCareEncounter | ProcessCareEncounter | ProcessCareEncounter |
| :--- | :--- | :--- |
| Felkod | Felmeddelande | Beskrivning |
| 50003 | Starttidpunkt (" + StartDate + ") för vårdkontakt måste vara mindre än dess sluttidpunkt (" + EndDate + ")! | Sluttidpunkt kan inte vara före starttidpunkt för en vårdkontakt |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |
| 50012 | Externt-id " + ExterntId + " används av en annan vårdgivare; | Externt id används av en annan vårdgivare |
| 50013 | Organisatorisk Enhet (" + OrganisationsHsaId + ") tillhör inte vårdgivare (" + VardgivareHsaId + "); | OE tillhör inte vårdgivaren som skickar in data |
| 50014 | UtfärdatAv för patientid " + patientid + " är ogiltigt: " + kodsystem + "(" + utfardatAv + ") | Utfärdare saknar behörighet i Infektionsverktyget |
| 50015 | Ogiltig kod för kön (" + gender + ") i kodsystem (" + codeSystem + ") | Felaktig könskod inskickad |

## DeletePrescriptionReason
DeletePrescriptionReason raderar information som tidigare har registrerats via tjänsten ProcessPrescriptionReason. En befintlig ordinationsorsak i Infektionsverktyget raderas genom att tillstånds-id, om orsaken är en infektion, eller aktivitets-id, om orsaken är profylax, skickas via tjänsten. All information som har registrerats tillsammans med den identifierade ordinationsorsaken via tjänsten ProcessPrescriptionReason raderas helt i Infektionsverktyget.

### Begäran (Request)

| DeletePrescriptionReason | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. / HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1..1 |
| $$ActivityId | String | Aktivitets-id för den aktivitet med tillhörande information som ska raderas i Infektionsverktyget. / RIV-specifikation: Aktivitet.aktivitets-id / HSA-id + Lokalt id. / Detta format används tillsammans med OID:n för Icke-nationell identifierare (OID:$$ActivityId). / HSA-id för den enhet inom vilket aktuellt aktivitets-id är unikt anges före det lokala id:t. / Anges när den ordinationsorsak som ska raderas är en aktivitet (profylax). / Någon av aktivitets-id och tillstånds-id ska anges. | 0..1 |
| $$ConditionId | String | Tillstånds-id för det tillstånd med tillhörande information som ska raderas i Infektionsverktyget. / RIV-specifikation: / Bedömt hälsorelaterat tillstånd.tillstånds-id / HSA-id + Lokalt id. / Detta format används tillsammans med OID:n för Icke-nationell identifierare / (OID:$$ConditionId). / HSA-id för den enhet inom vilket aktuellt tillstånds-id är unikt anges före det lokala id:t. / Anges när den ordinationsorsak som ska raderas är ett tillstånd (infektion). / Någon av aktivitets-id och tillstånds-id ska anges. | 0..1 |

### Svar (Response)

| DeletePrescriptionReasonResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

#### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet ”comment”.

| DeletePrescriptionReason | DeletePrescriptionReason | DeletePrescriptionReason |
| :--- | :--- | :--- |
| Felkod | Felmeddelande | Beskrivning |
| 50005 / 50006 | Kunde inte hitta ordinationsorsak för angivet  + (" + AktivitetId + ")/Kunde inte hitta ordinationsorsak för angivet  + (" + TillstandsId + ") | Angiven ordinationorsak finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |

## DeletePrescription
DeletePrescription raderar information om en ordination som tidigare har registrerats via tjänsten ProcessPrescriptionReason. Ordinationsorsaken för ordinationen tas inte bort.

### Begäran (Request)

| DeletePrescription | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. / HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1..1 |
| $$PrescriptionId | String | Ordinations-id för den ordination som ska raderas i Infektionsverktyget. / RIV-specifikation: Ordination.ordinations-id / HSA-id + Lokalt id. / Detta format används tillsammans med OID:n för Icke-nationell identifierare (OID:$$PrescriptionId). / HSA-id för den enhet inom vilket aktuellt ordinations-id är unikt anges före det lokala id:t. | 1..1 |

### Svar (Response)

| DeletePrescriptionResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

#### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet ”comment”.

| DeletePrescription | DeletePrescription | DeletePrescription |
| :--- | :--- | :--- |
| Felkod | Felmeddelande | Beskrivning |
| 50004 | Kunde inte hitta ordination för angivet id: " + OrdinationsId; | Angiven ordination finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |

## DeleteLaboratoryReport
DeleteLaboratoryReport raderar information som tidigare har registrerats via tjänsten ProcessLaboratoryReport. Ett befintligt labsvar i Infektionsverktyget raderas genom att svars-id skickas via tjänsten. All information som har registrerats tillsammans med det identifierade labsvaret via tjänsten ProcessLabReport raderas helt i Infektionsverktyget.

### Begäran (Request)

| DeleteLaboratoryReport | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. / HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1..1 |
| $$LaboratoryReportId | String | Svars-id för det laboratoriesvar med tillhörande information som ska raderas i Infektionsverktyget. / RIV-specifikation: Laboratoriesvar.svars-id / HSA-id + Lokalt id. / Detta format används tillsammans med OID:n för Icke-nationell identifierare / (OID:$$LaboratoryReportId). / HSA-id för den enhet inom vilket aktuellt svars-id är unikt anges före det lokala id:t. | 1..1 |

### Svar (Response)

| DeleteLaboratoryReportResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

#### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet ”comment”.

| DeleteLaboratoryReport | DeleteLaboratoryReport | DeleteLaboratoryReport |
| :--- | :--- | :--- |
| Felkod | Felmeddelande | Beskrivning |
| 50007 | Kunde inte hitta laboratoriesvar för angivet Laboratoriesvar-id (" + LaboratoriesvarId + ") | Angivet laboratoriesvar finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |

## DeleteActivity
DeleteActivity raderar information som tidigare har registrerats via tjänsten ProcessActivity. En befintlig aktivitet i Infektionsverktyget raderas genom att aktivitets-id skickas via tjänsten. All information som har registrerats tillsammans med den identifierade aktiviteten via tjänsten ProcessActivity raderas helt i Infektionsverktyget.

### Begäran (Request)

| DeleteActivity | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. / HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1..1 |
| $$ActivityId | String | Aktivitets-id för den aktivitet med tillhörande information som ska raderas i Infektionsverktyget. / RIV-specifikation: Aktivitet.aktivitets-id / HSA-id + Lokalt id. / Detta format används tillsammans med OID:n för Icke-nationell identifierare / (OID:$$ActivityId). / HSA-id för den enhet inom vilket aktuellt aktivitets-id är unikt anges före det lokala id:t. | 1..1 |

### Svar (Response)

| DeleteActivityResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

#### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet ”comment”.

| DeleteActivity | DeleteActivity | DeleteActivity |
| :--- | :--- | :--- |
| Felkod | Felmeddelande | Beskrivning |
| 50004 | Kunde inte hitta aktivitet för angivet aktivitets-id (" + AktivitetId + ") | Angivet aktivitetsId finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |

## DeleteCondition
DeleteCondition raderar information som tidigare har registrerats via tjänsten ProcessCondition. Ett befintligt tillstånd (eg. diagnos) i Infektionsverktyget raderas genom att tillstånd-id skickas via tjänsten. All information som har registrerats tillsammans med det identifierade tillståndet via tjänsten ProcessCondition raderas helt i Infektionsverktyget.

### Begäran (Request)

| DeleteCondition | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. / HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1..1 |
| $$ConditionId | String | Tillstånds-id för det tillstånd med tillhörande information som ska raderas i Infektionsverktyget. / RIV-specifikation: / Bedömt hälsorelaterat tillstånd.tillstånds-id / HSA-id + Lokalt id. / Detta format används tillsammans med OID:n för Icke-nationell identifierare / (OID:$$ConditionId). / HSA-id för den enhet inom vilket aktuellt tillstånds-id är unikt anges före det lokala id:t. | 1..1 |

### Svar (Response)

| DeleteConditionResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

#### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet ”comment”.

| DeleteCondition | DeleteCondition | DeleteCondition |
| :--- | :--- | :--- |
| Felkod | Felmeddelande | Beskrivning |
| 50008 | Kunde inte hitta vårdkontakt för angivet Tillstånds-id (" + id + ")" | Angivet Tillstånd finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |

## DeleteCareEncounter
DeleteCareEncounter raderar information som tidigare har registrerats via tjänsten ProcessCareEncounter. En befintlig vårdkontakt i Infektionsverktyget raderas genom att vårdkontakt-id skickas via tjänsten. All information som har registrerats tillsammans med den identifierade vårdkontakten via tjänsten ProcessCareEncounter raderas helt i Infektionsverktyget.

### Begäran (Request)

| DeleteCareEncounter | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. / HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1..1 |
| $$CareEncounterId | String | Vårdkontakt-id för den vårdkontkat med tillhörande information som ska raderas i Infektionsverktyget. / RIV-specifikation: / Vårdkontakt.vårdkontakt-id / HSA-id + Lokalt id. / Detta format används tillsammans med OID:n för Icke-nationell identifierare / (OID:$$CareEncounterId). / HSA-id för den enhet inom vilket aktuellt vårdkontakt-id är unikt anges före det lokala id:t. | 1..1 |

### Svar (Response)

| DeleteCareEncounterResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

#### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet ”comment”.

| DeleteCareEncounter | DeleteCareEncounter | DeleteCareEncounter |
| :--- | :--- | :--- |
| Felkod | Felmeddelande | Beskrivning |
| 50009 | Kunde inte hitta vårdkontakt för angivet vårdkontakts-id (" + id + ")" | Angiven vårdkontakt finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |
