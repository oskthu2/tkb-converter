
|  | Tjänstekontraktsbeskrivning clinicalprocess:healthcond:certificate / Version 4.0.2 / 2019-05-27 |
| :--- | :--- |
Innehåll
1	Inledning	17
1.1	Svenskt namn	18
2	Versionsinformation	18
2.1	Version 4.1-RC1	18
2.1.1	Oförändrade tjänstekontrakt	18
2.1.2	Nya tjänstekontrakt	18
2.1.3	Förändrade tjänstekontrakt	18
2.1.4	Utgångna tjänstekontrakt	20
3	Tjänstedomänens arkitektur	20
3.1	Behovet av en central intygstjänst	20
3.2	Integrerad intygsapplikation	20
3.3	Ärendekommunikation	21
3.4	Datatyper	21
3.5	Gemensamma objektsdefinitioner i gränssnitt	22
3.6	Versionshantering av intyg	22
3.7	Flöden	22
3.7.1	Hämta sjukfall	24
3.7.2	Skapa intygsutkast	24
3.7.3	Registrera ett intyg	25
3.7.4	Skicka ett intyg	25
3.7.5	Skicka makuleringsinformation för ett intyg	26
3.7.6	Hämta ett intyg	27
3.7.7	Hämta intyg	28
3.7.8	Hämta intygsutkast, intyg samt tillhörande händelser och ärendekommunikation	29
3.7.9	Skicka meddelande till intygsmottagare	29
3.7.10	Skicka meddelande till vården	30
3.7.11	Skicka intygsuppdateringar till vården	30
3.7.12	Uppdatera intygsstatus i intygstjänst	30
3.8	Adressering	31
3.8.1	Logiska addresser	31
3.8.2	Transaktioner för dessa tjänstekontrakt adresseras till den logiska adressen till Intygstjänst	31
3.8.3	CertificateStatusUpdateForCare	31
3.8.4	CreateDraftCertificate och ListCertificatesForCareWithQA	31
3.8.5	RegisterCertificate	31
3.8.6	RevokeCertificate	31
3.8.7	SendMessageToCare	32
3.8.8	SendMessageToRecipient	32
3.9	Aggregering och engagemangsindex	32
4	Tjänstedomänens krav och regler	33
4.1	Informationssäkerhet och juridik	33
4.1.1	Krav på en tjänsteproducent	33
4.1.2	Krav på en tjänstekonsument	33
4.2	Icke funktionella krav	33
4.2.1	SLA krav	33
4.3	Felhantering	33
4.3.1	Krav på en tjänsteproducent	33
4.3.2	Krav på en tjänstekonsument	34
5	Tjänstedomänens meddelandemodeller	35
5.1	V-MIM GetCertificate	35
5.2	V-MIM ListCertificatesForCare	35
5.3	V-MIM ListCertificatesForCitizen	36
5.4	V-MIM RegisterCertificate	37
5.5	V-MIM RevokeCertificate	38
5.6	V-MIM SendCertificateToRecipient	38
5.7	V-MIM SendMessageToCare	40
5.8	V-MIM SendMessageToRecipient	41
5.9	V-MIM SetCertificateStatus	41
5.10	V-MIM CreateDraftCertificate	43
5.11	V-MIM CertificateStatusUpdateForCare	44
5.12	V-MIM ListCertificatesForCareWithQA	45
5.13	V-MIM ListSickLeavesForCare	46
6	Tjänstekontrakt	47
6.1	GetCertificate	47
6.1.1	Version	47
6.1.2	Fältregler	47
6.1.3	Övriga regler	48
6.2	ListCertificatesForCare	48
6.2.1	Version	48
6.2.2	Fältregler	49
6.2.3	Övriga regler	49
6.3	ListCertificatesForCitizen	50
6.3.1	Version	50
6.3.2	Fältregler	50
6.3.3	Övriga regler	52
6.4	RegisterCertificate	52
6.4.1	Version	52
6.4.2	Fältregler	52
6.4.3	Övriga regler	53
6.5	RevokeCertificate	54
6.5.1	Version	54
6.5.2	Fältregler	54
6.5.3	Övriga regler	55
6.6	SendCertificateToRecipient	55
6.6.1	Version	55
6.6.2	Fältregler	55
6.6.3	Övriga regler	56
6.7	SendMessageToCare	56
6.7.1	Version	57
6.7.2	Fältregler	57
6.7.3	Övriga regler	59
6.8	SendMessageToRecipient	60
6.8.1	Version	60
6.8.2	Fältregler	60
6.8.3	Övriga regler	62
6.9	SetCertificateStatus	62
6.9.1	Version	62
6.9.2	Fältregler	63
6.9.3	Övriga regler	63
6.10	CreateDraftCertificate	63
6.10.1	Version	64
6.10.2	Fältregler	64
6.10.3	Övriga regler	65
6.11	CertificateStatusUpdateForCare	65
6.11.1	Version	65
6.11.2	Fältregler	65
6.11.3	Övriga regler	66
6.12	ListCertificatesForCareWithQA	67
6.12.1	Version	67
6.12.2	Fältregler	67
6.12.3	Övriga regler	68
6.13	ListSickLeavesForCare	69
6.13.1	Version	69
6.13.2	Fältregler	69
6.13.3	Övriga regler	72
7	Gemensamma fälttyper	73
7.1	Gensamma objekt	73
7.1.1	Arenden	73
7.1.2	Enhet	73
7.1.3	Handelse	74
7.1.4	HosPersonal	74
7.1.5	Intyg	75
7.1.6	IntygsStatus	77
7.1.7	MeddelandeReferens	78
7.1.8	Patient	78
7.1.9	Relation	79
7.1.10	ResultType	79
7.1.11	Svar	80
7.1.12	Vardgivare	81
7.2	Domänspecifika komplexa datatyper	81
7.2.1	Amneskod	81
7.2.2	Arbetsplatskod	82
7.2.3	Befattning	82
7.2.4	Handelsekod	82
7.2.5	HsaId	82
7.2.6	IntygId	83
7.2.7	KallaAdressuppgifterType	83
7.2.8	LegitimeratYrkeType	83
7.2.9	Part	83
7.2.10	PersonId	84
7.2.11	TypAvIntyg	84
7.2.12	TypAvRelation	84
7.2.13	SignatureType	85
7.2.14	Specialistkompetens	86
7.2.15	Statuskod	86
7.2.16	UnderskriftType	87
7.3	Övriga datatyper	87
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.0 | PA1 | 2014-10-06 | Första versionen | Johan Zetterström och Mats Ekhammar, Inera |  |
| 1.0 | PA2 | 2015-01-30 | Utökat med tjänster som används i djupintegration. | Johan Zetterström |  |
| 1.0 | PA3 | 2015-02-05 | -Förtydligat format för personnummer / -Ändrat händelsetidpunkt i CertificateStatsuUpdateForCare till att inkludera millisekunder. / -Ändrat listan på tjänstekontrakt. Eftersom vi inte har gjort någon release ännu betraktas alla kontrakt som nya. / -Förtydligat och generealiserat beskrivningar av djupintegrationslösningen. | Johan Zetterström |  |
| 1.o.1 | PA1 |  | -Lagt till MIM:ar för djupintegration / -Rättat versionsnummer för refererade dokument. / -Förtydligat webb-beskrivningen. / -Ändrat namn på ett element i CertificateMetaType, som används i ListCertificatesForCare och ListCertificatesForCitizen. ComplimetaryInfo heter nu additionalInfo. / -Lagt till info om att tjänstekontrakten ListCertificatesForCareWithQA och CertificateStatusUpdateForCare, som används i djupintegration, är specifika för intygstyp fk7263. / -Kap 3.2 Lagt till en fotnot som beskriver alternativa lösningar, för att sätta djupintegration i en kontext. / -Kap 3.3.2.2 Lagt till info om att alla tjänsteanrop implicit går via tjänsteplattformen. / Kap 3.4 Skrivit om stycket om adressering. | Johan Zetterström |  |
| 2.0 | PA1 | 2015-09-30 | Andra versionen. | Johan Zetterström |  |
| 2.0 | PA2 | 2015-10-19 | -Ändrat ”vårdenhet” till det mer generella ”enhet” / -Förtydligat att sökningar på en (vård)enhet inkluderar eventuella kopplade enheter / -Tagit bort result från GetCertificate / -Lagt till specialiserade datatyper för Befattning och Specialistkompetens, var tidigare generisk CVType / -Tagit bort codeSystemName från alla datatyper som är restrictions på CVType, eftersom det i detta sammanhang är redundant information. / -Lagt till regel för CreateDraftCertificate, enhet måste / vara kopplad till en vårdgivare i HSA. / -Domänen nyttjar ett par kodverk för vilka OID/UUID (codeSystem) ej är fastställt. För dessa låser inte datatyp (restriction på CVType) värdet på codeSystem | Johan Zetterström |  |
| 2.0 | PA3 | 2015-11-19 | -Lagt tillbaka result för getCertificate. Det behövs för att kommunicera eventuella fel, som t.ex. att intyget har makulerats och inte längre kan hämtas. Det är befintlig funktionalitet i tjänstekontraktet, som är i drift idag, och en förutsättning för enhetlig felhantering. / -Kap 7.11, förtydligat att underenhet är kopplad till vårdenhet. / -Uppdaterade projektinterna kodverk. Fasta värden på codeSystem har lagts till där detta saknats. / -Status har ändrats från string till CV. / -Ämne har ändrats från string till CV. / -Tagit bort codeSystem från Specialistkompetens, eftersom vi inte får namn på kodverk från HSA. / -Kap 2.1, korrigering; CreateDraftCertificate är uppdaterat och har version 2.0 / -Tagit bort begränsningen av kodsystem för TypAvIntyg. Olika kodsystem kan förekomma. / -Tagit bort det avgränsade formatet för intyg som användes vid listningar. Skillnaden mot det fullständiga intyget var för liten för att motivera särskiljningen. Vilken information som ska levereras för listningar blir nu en icke-fråga. / -Lagt till möjlighet att ange instans av fråga för komplettering. Används för att kunna skapa rätt relation för frågor som kan besvaras flera gånger. | Johan Zetterström |  |
| 2.0 | PA4 | 2016-03-04 | -Rättat multiplicitet för mottagare i GetCertificate och ListCertificatesForCitizen. Dokumentationsfel, tjänstekontrakten var korrekta. / -Uppdaterat korsreferenser så att rätt numrering visas. / -Rättat datatyp för ämne i SendMessageToCare och SendMessageToRecipient. Ändringen till CV som skulle gjorts för RC3 var ej korrekt hanterad. / -Ändrat datatyp för logiskAdressMottagare i SendMessageToCare och SendMessageToRecipient från Hsa-id till string, så att den överensstämmer med datatypen för LogicalAddress. Därmed fås en lösare koppling mellan vårdenhetens hsa-id och hur vårdenheten adresseras i tjänsteplattformen. / - Lagt till information om att vidarebefordran av anrop från intygstjänsten till slutlig mottagare görs synkront när en konsument anropar SendMessageToCare eller SendMessageToRecipient. / -Lagt till elementet ”instans” i Svar. Detta anger instansnummer för frågor som kan besvaras flera gånger. Instansnummer finns sedan tidigare i kompletteringsbegäran (SendMessageToCare). Att ange instansnumret när intyget skapas istället för att det ska räknas fram av intygsmottagaren och sedan kopplas rätt på vårdsidan får ses som en bättre lösning. / -Angivit att ListCertificatesForCitizen inkluderar makulerade intyg. / -Lagt till möjlighet att söka på vårdgivarnivå i ListCertificatesForCare. / -Korrigerat felaktighet från PA2 gällande ListCertificatesForCare. Underenheter inkluderas ej (inte möjligt då intygstjänsten ej har varit kopplad till HSA). Konsumenten måste ange alla enheter som ska hämtas. / -Ändrat signeringsTidpunkt och skickatTidpunkt i Intyg till optional, för att tillåta att typen används i CertificateStatusUpdateForCare och ListCertificatesForCareWithQA. I dessa skickas ibland intygsutkast som saknar dessa uppgifter. / -En skärpning av vilka uppgifter som är obligatoriska har genomförts efter önskemål från intygsmottagare. Följande element har ändrats från valbara till obligatoriska: / Patient.fornamn / Patient.postadress / Patient.postnummer / Patient.postort / HoSPersonal.fullstandigtNamn / Enhet.postadress / Enhet.postnummer / Enhet.postort / Enhet.telefonnummer / Enhet.arbetsplatskod / -Lagt till kap 3.5, som beskriver användningen av gemensamma objektsdefinitioner i gränssnitten. / -Förtydligat beskrivningen av felhanteringen. / -Uppdaterat sekvensdiagrammet i 3.7.2.1 (Skapa intyg) så att det inte inkluderar anrop av ListCertificatesForCareWithQA. Anropet är onödigt då journalsystemet får all intygsinformation via statusuppdateringarna. / -Lagt till lista intyg som ett separat sekvensdiagram för integrerad intygsapplikation. / -Rättat sekvensdiagrammet för hantering av intyg. Notifiering när intygsutkast uppdateras har lagts till. / -Beteckningarna på händelserna är ändrade till klartexterna från kodverket KV_Händelse för samtliga sekvensdiagram som rör flöden för integrerad intygsapplikation. / -Angivit att Svar.instans ska räknas från 1. / -Rättat beskrivningen av format för PersonId.extension. Det ska anges som 12 siffror, inget bindestreck. Detta eftersom bindestrecket är redundant, och personer över 100 år dessutom har plustecken istället för bindestreck. / -Lagt till patientens adressuppgifter i CreateDraftCertificate. Dessa krävs då de är obligatoriska på intyget, och det är journalsystemets uppgifter som ska användas framför de som kan fås från PU-tjänsten. Tjänstekontraktet har inte längre en avvikande definition av patient, därför det har övergått till att använda den gemensamma datatypen Patient. | Johan Zetterström |  |
| 2.0 | PA5 | 2016-03-14 | -Tagit bort felaktig info om att ledtext ska levereras i CertificateStatusUpdateForCare och ListCertificatesForCareWithQA. / -Tagit bort elementet ledtext från Svar. Lösningen för presentation i journalsystem har justerats så ledtext behövs inte. Detta förenklar implementationen i intygsapplikation. / -Ändrat adressuppgifter för Patient från nonEmptyString till String. Detta eftersom den tjänst vi hämtar uppgifterna ifrån inte alltid har dessa uppgifter. För de intyg där adressuppgifter måste vara ifyllda krävs möjlighet för användaren att komplettera med dessa uppgifter. / -Tagit bort beskrivningen av version 1.0 i kapitel 2. / -Tagit bort Result från GetCertificate, eftersom regelverket i RIVTA säger att detta endast får förekomma i uppdaterande tjänster. De fel som har skickats i Result kommer istället att skickas i SOAP fault. Undantaget är när intyget är makulerat, vilket tidigare resulterade i errorId=REVOKED, samtidigt som intyget returnerades. Detta kommer inte att resultera i något fel. Att intyget är makulerat utläses istället av dess status. / -Lagt till hänvisning till arkitekturellt beslut ang. de flödesbeskrivningar som finns i detta dokument. | Johan Zetterström |  |
| 2.0 | PA6 | 2016-09-09 | -I kap 6.7.3.6, lagt till info om att instansnummer i komplettering inte måste anges även om frågan som kompletteringen gäller har besvarats flera gånger. Detta möjliggör en komplettering som är gemensam för alla instanserna av en fråga. / -I kap 6.7.3.1, tagit bort felaktig skrivning om att ämne ”Påminnelse” utgör ett undantag får fältregeln. / -I kap 6.7.3.8 och 6.8.3.4, lagt till förtydliganden om att frågor endast får besvaras en gång, dvs det är inte tillåtet att skicka flera svar. Detta framgår sedan tidigare av informationsspecifikationen. / -I kap 3.6, lagt till ett flöde som visar hur domänens tjänstekontrakt på logisk nivå förhåller sig till referensarkitekturen, samt förtydligat syftet med de befintliga diagrammen. Det arkitekturella beslut som lades till i PA5 har därmed tagits bort. / -I kap 6.4.3.4, lagt till information om att försök att registrera ett intyg som redan är registrerat hos aktuell part resulterar i ett info-meddelande. / -I kap 6.6.3.1, lagt till information om att försök att skicka ett intyg som redan är skickat till aktuell part resulterar i ett info-meddelande. / -I kap 6.10.2, lagt till kardinalitet för intyg.patient. / -I kap 6.3.2, uppdaterat tillämpning av datumavgränsning i sökning för ListCertificatesForCitizen. Tidigare matchades angivna datum mot intygs giltighetsdatum, vilket inte är lämpligt då nya typer av intyg har tillkommit där vissa inte är giltiga under en begränsad period. Istället kommer datum att matchas mot signeringsdatum. / -Korrigerat schema för Enhet. I version 1 av domänen var elementen för adress och telefonnummer optional men av typen nonEmptyString. Dokumentationen sade dock string. I denna version är elementen obligatoriska. Eftersom uppgifter inte alltid finns tillgängliga är datatypen ändrad till string. / -I kap 6.11.3.4, lagt till en regel om att displayName ska skickas för typAvIntyg i CertificateStatusUpdateForCare. / -I kap 6.11.2, lagt till det valfria elementet ”ref”, med tilläggsregel för dess användning i 6.11.3.5 / -I kap 7.2.13, lagt till en fältregel som säger att koden för specialistkompetens ska tilldelas ”N/A” om det inte finns någon entydig mappning mellan kod och klartext. Endast klartexten kommer då att innehålla ett användbart värde. / -Uppdaterat lösningen för information om ärendekommunikation för integrerade journalsystem, som används i CertificateStatusUpdateForCare och ListCertificatesForCareWithQA. Innebär uppdaterade händelsekoder i KV_Händelse och nya räknare för ärenden med olika status. Sekvensdiagrammen som beskriver ärendehanteringen (i kap Error! Reference source not found.) har uppdaterats. | Johan Zetterström |  |
| 3.0 | RC1 | 2017-03-08 | -I kap 7.3 har den gemensamma typen Handelse (som används i tjänstekontrakten CertificateStatusUpdateForCare och ListCertificatesForCareWithQA) fått två nya fält; amne och sistaDatumForSvar, samt en fältregel kopplad till dessa nya fält. Även uppdaterat relaterade V-MIMar i kap 5.11 och 5.12. / -I kap 6.1, 6.2 och 6.3, lagt till information om vilka statusar som kommer med när intyg listas eller hämtas beroende på vem som frågar. I kap 6.1 och 6.3 även lagt till en ny parameter i begäran; part. / -I kap 6.12, lagt till tre nya möjliga parametrar i begäran; vardgivar-id, fromTidpunkt, tomTidpunkt. Även lagt till parametern ref i svaret med tillhörande fältregel. Fältet handelse har fått kardinalitet 0..* istället för 1..*. / Lagt till ett nytt tjänstekontrakt; ListSickLeavesForCare. | Peter Hernfalk, Patrik Gustavsson, Emmy Damberg |  |
| 3.0 | RC2 | 2017-03-29 | Tagit bort information från avsnitt 4.1.2.1 om att en enhet bara kan lista och hämta sin egen information. Någon sådan teknisk begränsning finns inte. / Ej uppdaterande tjänster (vilket i denna domän innebär alla vars namn börjar på List och Get) returnerar inte längre parametern result. Undantag är ListCertificatesForCitizen där result-parametern behöver vara kvar (se arkitekturella beslut [R3]). | Emmy Damberg |  |
| 3.0 | RC3 | 2017-04-24 | I kap 6.12, förtydligat beskrivningen av attributen fromTidpunkt och tomTidpunkt. / CreateDraftCertificate: parameternamnet för typAvIntyg ändrat till samma som I XSD-fil. / ListSickLeavesForCare: ändrat namn på sjukskrivningslangd-parametern så att den stämmer med XSD-fil. / I kap 4.1, lagt till hänvisning till informationsspecifikationen där det står mer om juridik och informationsklassning. | Emmy Damberg, Peter Hernfalk |  |
| 3.0 |  | 2017-04-25 | Ändrat versionsnummer från 3.0_RC3 till 3.0 | Peter Hernfalk |  |
| 3.1 | RC1 | 2017-05-30 | Lagt till i fältregel 6.7.3.5 att fältet meddelande inte får innehålla redundant information med fältet komplettering. | Sofia Lång Janstad, Emmy Damberg |  |
| 3.1 | RC1 | 2017-06-09 | 6.12: ändrat kardinalitet på enhets-id samt versionsnummer på tjänstekontraktet. Ändrat versionsinformationen i avsnitt 2.1 | Peter Hernfalk |  |
| 3.1 | RC1 | 2017-06-22 | 6.11.3.5 uppdaterat för att beskriva att ref parametern skickas tillbaks i alla statusuppdateringar. Även uppdaterat version i 6.11.1 till 3.1 | Patrik Gustavsson |  |
| 3.1 | RC1 |  | Lagt till information i 3.4 Datatyper att det i vissa fall är nödvändigt att gå till WSDL/XSD filer för att få detaljerad kunskap om en datatyp. | Patrik Gustavsson |  |
| 3.1.1 |  | 2017-09-20 | Ändrat formulering under 6.8.2 för fältet svarPa från ”vården” till ”intygsmottagaren” / Förtydligat information om relation under 7.1 i en fotnot. | Claudia Ehrentraut |  |
| 3.1.1 |  | 2017-09-26 | Lagt till * på enhets-id under 6.2.2 och 6.12.2 samt lagt till information om vad som gäller för enhets-id under 6.2.3.1 och 6.12.3.1, information är i samma stil som det redan fanns för vardgivar-id under 6.2.3.2 och 6.12.3.2. / Lagt över information om relation (som las till i ändringen den 2017-09-20) till samma format som används för övrig extra information, dvs. att markera attributet med * och sedan beskriver det som gäller för attributet under Övriga regler. Fick i samband med det lägga till underrubrikerna Fältregler (under 7.1.5.1 och7.1.5.2) och Övriga regler (under 7.1) som inte fanns tidigare. | Claudia Ehrentraut |  |
| 3.1.1 |  | 2017-10-09 | Uppdaterat sekvensdiagram under 3.7.2.3, dvs. bytt ”Rätta inityg” till ”Makulera intyg” och ”Kopiera intyg” till ”Förnya/Ersätta/Komplettera intyg” / Lagt till information om hur enhet hanteras, dvs. att även intyg från underliggande enheter läses upp, under 6.13. | Claudia Ehrentraut |  |
| 3.1.1 |  | 2017-10-18 | Uppdaterat text för hantering av underenheter från ”Endast angivna enheter inkluderas i svaret, dvs. tjänsten inkluderar ej eventuella i HSA kopplade enheter.” till ”Om det finns enheter som är kopplade till den angivna enheten så inkluderas dessa i sökresultatet.” under 6.2. Texten är tagit från 6.12 där hanteringen av underenhet fungerar på samma sätt. | Claudia Ehrentraut |  |
| 3.1.2 |  | 2017: sept-okt | Gamla testfall har uppdaterats så att de fungerar | NMT, Nordic MedTest |  |
| 3.1.2 |  | 2017-11-07 | Ändrat versionsnummer från 3.1.1 till 3.1.2 | Peter Hernfalk |  |
| 3.2 | RC1 och RC2 | 2018-03-19 | Lagt till attributet ref i 6.10 CreateDraftCertificate / Uppdaterat alla V-MIMar som berörs av tillägget / Uppdaterat 2.1 Version till 3.2 och skapat lista över berörda tjänstekontrakt / Uppdaterat beskrivningen av CreateDraftCertificate då attributet skapadAv var på fel nivå / Uppdaterat referens R4 / Justerat beskrivning av attributet SkickatAv/Part i SendMessageToCare då denna var missvisade / Justerat beskrivning av IntygId få denna var missvisande | Gustaf Claesson |  |
| 3.1.3 | RC1 | 2018-04-04 | Justerat beskrivning av result i ListCertificateForCitizen då samtycke inte längre ska hanteras av detta kontrakt | Claudia Ehrentraut |  |
| 3.1.3 |  | 2018-04-23 | Ändrat versionsnummer från 3.1.3_RC1 till 3.1.3 | Peter Hernfalk |  |
| 4.0 | RC1 | 2018-06-01 | Uppdaterat versionsnummer till 4.0 / Lagt till och beskrivit fältet legitimeratYrke i klassen HoS-personal / Lagt till och beskrivit fältet underskrift i 7.1 Intyg / Lagt till beskrivning av den gemensamma typen SignatureType i 7.26 / Uppdaterat versionsnummer för berörda kontrakt / Tagit bort resultparametern från ListCertificatesForCitizen (beskrivet i ett nytt AB) 6.3 / Lagt till fältet kallaAdressuppgifter i Patient 7.10 / Lagt till beskrivning av den gemensamma typen KallaAdressuppgifterType 7.27 / Lagt till beskrivning av den gemensamma typen LegitimeratYrkeType 7.28 / Uppdatering av text i avsnittt 3.1 avseende behov av central intygstjänst / Uppdaterat beskrivning av avsnitt 6.11.3 på efterfrågan från användare / Lagt till tabell för beskrivning av kompatibilitet i avsnitt 2.1.3 | Gustaf Claesson / Peter Hernfalk |  |
| 4.0 | RC1 | 2018-06-27 | Lagt till behållare UnderskriftType | Claudia Ehrentraut |  |
| 4.0 | RC1 | 2018-06-28 | Lagt till uppdaterade VMIMer för de uppdaterade tjänstekontrakt och ändrat referens till DIM för skickatTidpunkt från Intyg. till Metadata. | Claudia Ehrentraut |  |
| 4.0 |  | 2018-08-29 | Ändrat versionsnummer från 4.0_RC1 till 4.0 | Peter Hernfalk |  |
| 4.0.1 | RC1 | 2018-09-14 | Uppdaterat version på dokumentet / Tagit bort kapitel med generell beskrivning av tjänsteplattformens funktion. / Förtydligat inledande texter för kapitel 1, 3, 5, 6 och 7. / Lagt till avsnitt 3.6 Versionshantering av intyg | Gustaf Claesson |  |
| 4.0.1 | RC1 | 2018-09-25 | Lagt till nya flöden i kapitel 3.7 / Lagt till tabell för mappning mellan användningsfall och tjänstekontrakt | Claudia Ehrentraut |  |
| 4.0.1 | RC1 | 2018-11-09 | Uppdaterat beskrivningar i avsnitt 3.8 (adressering) och 4.3 (felhantering) | Peter Hernfalk |  |
| 4.0.1 | RC1 | 2018-12-06 | Flyttat information från Krav på tjänstekonsument till domänens informationsspecifikation | Gustaf Claesson |  |
| 4.0.1 | RC1 | 2018-12-21 / 2018-12-28 | Uppdaterat V-MIM:arna / Uppdatera information om fältet Mottagare i objektet Intyg / Uppdaterat referenser till gemensamma fälttyper / Rättat mappning av fält till informationsmodellen / Förtydligat fältbeskrivningar | Claudia Ehrentraut |  |
| 4.0.1 |  | 2019-01-11 | Ändrat versionsnummer från 4.0.1 RC1 till 4.0.1 / Rättat till saknade versionsnummer i ändringsloggen / Lagt till klickbara länkar i referenslistan | Gustaf Claesson |  |
| 4.1 | RC1 | 2019-04-29 | Lagt till attributet hanteratAv i tjänstekontraktet CertificareStatusUpdateForCare / Uppdaterat VMIM i kapitel 5.11 / Uppdaterat beskrivning i kapitel 6.11 / Uppdaterat kapitel 2.1 / Lagt till förtydligande om domänens princip för fältmultipliciteter. Samt lagt till fältregel med undantag från denna i avsnitt: / 6.7 SendMessageToCare / 7.1.8 Patient / Uppdaterat saknade mappningar av fält mot DIM | Gustaf Claesson |  |
| 4.0.2 |  | 2019-05-27 | Ändrat versionsnummer till 4.0.2 | Peter Hernfalk |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | RIVTA 2.1 |  | http://rivta.se |
| R2 | IS_clinicalprocess_healthcond_certificate | Domäninformationsmodell och arbetsflöden | http://rivta.se/domains/clinicalprocess_healthcond_certificate.html |
| R3 | AB_clinicalprocess_healthcond_certificate | Arkitekturella beslut | http://rivta.se/domains/clinicalprocess_healthcond_certificate.html |
| R4 | Kodverk som används inom nationella tjänsteplattformen | De kodverk och identifierare som används inom domänen finns dokumenterade inom RIVTA. | http://rivta.se |
| R5 | RIVTA tekniska anvisningar | - | https://riv-ta.atlassian.net/wiki/spaces/RTA/pages/91422789/RIV+Tekniska+Anvisningar+versikt |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen clinicalprocess:healthcond:certificate.
Tjänstekontrakten är baserade på RIVTA 2.1 [R1]. Syftet med denna tjänstedomän är att underlätta sjukskrivningsprocessen genom att möjliggöra elektronisk intygshantering via en central intygstjänst.
Tjänstekontrakten i domänen stödjer integration mellan olika typer av system: mellan en intygsapplikation och en central intygstjänst, mellan ett vårdsystem och en intygsapplikation, mellan en intygsmottagares system och en central intygstjänst samt mellan invånartjänst för intyg och en central intygstjänst.
För integrationer mellan intygsapplikation och intygstjänst används tjänstekontrakten: GetCertificate, ListCertificatesForCare, RegisterCertificare, RevokeCertificate, SendCertificateToRecipient, SendMessageToCare och SendMessageToRecipient.
För integrationer mellan vårdsystem och intygsapplikation används: CreateDraftCertificate, CertificateStatusUpdateForCare och ListCertificatesForCareWithQA.
För integrationer mellan intygsmottagare och en central intygstjänst används:
RegisterCertificate, RevokeCertificate, SendMessageToCare och SendMessageToRecipient.
För integrationer mellan en invånartjänst för intyg och en central intygstjänst används: ListCertificatesForCitizen, GetCertificate och SetCertificateStatus.
Denna tjänstedomän ersätter från och med version 2.0 helt den tidigare tjänstedomänen insuranceprocess:healthreporting. Tjänstekontrakt från den tidigare tjänstedomänen kommer succesivt avvecklas.

### Svenskt namn
vård- och omsorg kärnprocess:hälsorelaterade tillstånd:intygshantering
intygshantering

## Versionsinformation

### Version 4.1-RC1

#### Oförändrade tjänstekontrakt
SendMessageToCare, version 2.0
SetCertificateStatus, version 2.0
ListSickLeavesForCare, version 1.0
CreateDraftCertificate, version 3.2
GetCertificate, version 2.1
ListCertificatesForCare, version 3.1
ListCertificatesForCareWithQA, version 3.2
ListCertificatesForCitizen, version 4.0
RegisterCertificate, version 3.1
RevokeCertificate, version 2.1
SendCertificateToRecipient, version 2.1
SendMessageToRecipient, version 2.1

#### Nya tjänstekontrakt
Inga

#### Förändrade tjänstekontrakt
CertificateStatusUpdateForCare, version 3.2
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se [R5].
Definition av bakåt- och framåtkompabilitet enligt RIVTA:s översiktsdokument:
Bakåtkompatibilitet innebär att en avsändare kan skicka meddelande till en mottagare där meddelandet följer en äldre version av tjänstekontraktet än vad mottagare är baserad på. Detta kräver att mottagaren kan behandla meddelanden av den äldre versionen trots att dessa saknar de nya elementen.
Framåtkompatibilitet innebär att en avsändare kan skicka meddelande till en mottagare där meddelandet följer en nyare version av tjänstekontraktet än vad mottagaren är baserad på. Detta kräver att mottagaren kan bortse från informationen som tillförts i den nyare versionen av meddelandet.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| CertificateStatusUpdateForCare | 3.2 | 3.0 | OK |
|  | 3.2 | 3.1 | OK |
|  | 3.1 | 3.0 | OK |
|  | 3.1 | 3.2 | OK |
|  | 3.0 | 3.1 | OK |
|  | 3.0 | 3.2 | OK |
| CreateDraftCertificate | 3.2 | 3.1 | OK |
|  | 3.1 | 3.2 | OK |
|  | 3.2 | 3.0 | OK |
|  | 3.0 | 3.2 | OK |
|  | 3.1 | 3,0 | OK |
|  | 3.0 | 3.1 | OK |
| GetCertificate | 2.1 | 2.0 | OK |
|  | 2.0 | 2.1 | OK |
| ListCertificatesForCare | 3.1 | 3.0 | OK |
|  | 3.0 | 3.1 | OK |
| ListCertificatesForCareWithQA | 3.2 | 3.1 | OK |
|  | 3.1 | 3.2 | OK |
|  | 3.2 | 3.0 | OK |
|  | 3.0 | 3.2 | OK |
|  | 3.1 | 3.0 | OK |
|  | 3.0 | 3.1 | OK |
| ListCertificatesForCitizen | 4.0 | 3.0 | Ej kompatibel |
|  | 3.0 | 4.0 | Ej kompatibel |
| ListSickLeavesForCare | 1.0 | 1.0 | OK. Endast en version finns |
| RegisterCertificate | 3.1 | 3.0 | OK |
|  | 3.0 | 3.1 | OK |
| RevokeCertificate | 2.1 | 2.0 | OK |
|  | 2.0 | 2.1 | OK |
| SendCertificateToRecipient | 2.1 | 2.0 | OK |
|  | 2.0 | 2.1 | OK |
| SendMessageToCare | 2.0 | 2.0 | OK. Endast en version finns |
| SendMessageToRecipient | 2.1 | 2.0 | OK |
|  | 2.0 | 2.1 | OK |
| SetCertificateStatus | 2.0 | 2.0 | OK. Endast en version finns |
Observera att denna sammanställning beskriver status för domänens samtliga kontrakt, inte bara de som förändrats i denna domänversion.

#### Utgångna tjänstekontrakt
Inga

## Tjänstedomänens arkitektur
Detta kapitel beskriver domänens arkitektur och relevanta flöden i form av sekvensdiagram som tydliggör vilka tjänstekontrakt som nyttjas i de olika flödena.
Domänens verksamhetsorienterade flöden finns dokumenterade i form av användningsfall i informationsspecifikationen [R2], och inkluderas därmed inte i detta dokument.

### Behovet av en central intygstjänst
Intyg kan skapas och lagras av många olika system inom sjukvården. För att möjliggöra en effektiv hantering av dessa inyg krävs därför en central samordning och tillhandahållande av en tjänstedomän för utbyte av intygsinformation. Arkitekturen i denna tjänstedomän bygger på att underskrivna intyg lagras i en central intygstjänst som kan förmedla intyg till dess avsedda mottagare. Tillhandahållandet av en central intygstjänst motiveras av:
Krav på tillgänglighet. Tillgängligheten för vårdens system kan inte garanteras. En central intygstjänst behövs för att tillgängliggöra intyg för invånaren vid alla tidpunkter och för skapandet av statistik.
En statistikfunktion ställer höga krav på att en stor mängd intyg som hos vården kan finnas i olika system finns tillgängliga vid en given tidpunkt för att underlaget för statistiken ska kunna sammanställas på ett effektivt sätt.
Behov av att samla signerade intyg som utfärdats av olika intygsapplikationer på en plats. Genom att lagra intyg från olika intygsapplikationer i en central intygstjänst skapas förutsättningar för att både vården och invånare ska få tillgång till alla de elektroniskt utfärdade intyg de har rätt att ta del av.

### Integrerad intygsapplikation
Begreppet ”integrerad intygsapplikation” syftar på en lösning där intygsskrivande och hantering av frågor och svar sköts i en intygsapplikation som är separerad från vårdsystemet, och där vårdsystemet implementerar de kringliggande processerna. Alternativen till detta är att all intygshantering är inbyggd direkt i vårdsystemet utan inblandning av en integrerad intygsapplikation, eller att intygshanteringen sker i en helt fristående intygsapplikation.
Vid integration med en intygsapplikation ansvarar vårdsystemet för att presentera översikter och statusinformation som informerar användaren om vad som kan och bör göras. När användaren väljer att utföra en intygsrelaterad aktivitet görs detta i intygsapplikationen t.ex. genom att ett url-uthopp till intygsapplikationen sker. Alla statusförändringar som sker för intyget i intygsapplikationen återförs sedan löpande till vårdsystemet.
Lösningen för integrerad intygsapplikation är framtagen för användning med intygsapplikationen Webcert, men skulle kunna användas vid integration mellan ett vårdsystem och en annan intygsapplikation med motsvarande funktionalitet.

### Ärendekommunikation
Denna domän inkluderar från version 2.0 tjänster för intygsrelaterad ärendekommunikation. Syftet med detta är att intygsmottagare eller vården ska kunna ställa frågor om specifika intyg till varandra och få dessa besvarade.
Arkitekturmässigt är funktionen designad på så vis att meddelanden, relaterade till ett specifikt intyg, kan skickas mellan intygsmottagare och vården. Dessa meddelanden innehåller information som gör att mottagaren kan avgöra om det handlar om en administrativ fråga, en kompletteringsbegäran, ett svar eller en påminnelse. Informationen som skickas över tjänstekontrakten för ett specifikt meddelande innehåller enbart det aktuella meddelandet samt nödvändiga nycklar till relaterade objekt (t.ex. intyg eller tidigare meddelanden). Varje part i ärendekommunikation måste således spara skickade frågor för att kunna relatera inkomna svar till dessa.

### Datatyper
Tjänstendomänen använder, förutom egendefinierade och xml:s standard-datatyper ett par av best practice-datatyperna som är definierade för RIV-TA. Eftersom dessa inte tillhandahålls i form av ett separat xml-schema har de inkluderats i schemafilerna tillsammans med denna domäns gemensamma datatyper. Observera att domänen använder egna definitioner av vissa best practice-datatyper. Detta gäller HsaId, PersonId, DateType och TimeStampType. Anledningen till de egna definitionerna är att de möjliggör striktare validering och/eller bättre nyttjar stöd i xml-schemas standard-datatyper än motsvarande best practice-datatyper.
De multipliciteter som anges i detta dokument avser fältens informationsinnehåll, och inte enbart fältens förekomst. Multipliciteten ”1” för ett fält betyder således att fältet ska förekomma och att det ska innehålla den information som det är avsett att innehålla. Eventuella undantag från detta anges som fältregler.
Samtliga datatyper som används av domänen beskrivs i kapitel 7.

### Gemensamma objektsdefinitioner i gränssnitt
Domänens tjänstekontrakt nyttjar i många fall gemensamma objektsdefinitioner. Detta har som konsekvens att element som är icke-obligatoriska i schemat kan vara menade att i en viss implementation av ett visst tjänstekontrakt antingen vara obligatoriska eller inte får förekomma. Regler som styr hantering av sådana element beskrivs i separata dokument för integration med det specifika systemet (t.ex. Webcert). Fältregler för Ineras Intygstjänst inkluderas dock för närvarande i detta dokument.

### Versionshantering av intyg
Intygen som hanteras av domänen är utformade utifrån krav från intygsägarna. Då kraven kan ändras över tid blir det i vissa fall nödvändigt att skapa nya versioner av intyg. För att möjliggöra detta har följande modell för versionshantering av intyg tagits fram.
Det finns två nivåer av versionshantering för intygen. Den första nivån, huvudversion, avser en viss version av intygets specifika informationsmodell (i meddelandet representerat av XML-strukturen och dess validering). Denna versionsnivå identifieras via det första heltalet i intygstypens (7.1) fält version.
Om ett befintligt intyg ska uppdateras och förändringarna leder till att informationsinnehållet förändras hanteras denna uppdatering således genom att en ny huvudversion upprättas. Ex. intygstyp = "TSTRK1007", version = "6.8" blir intygstyp = "TSTRK1007", version = "7.0".
En intygstyp i två olika huvudversioner kan, i teorin, se helt olika ut informationsmässigt.
Den andra nivån, underversion, avser en viss version av de intygstexter som används för visning av den information som huvudversionen avser. Exakt vilka texter som hanteras på detta vis kan skilja sig åt mellan olika intygstyper, men i stort sett handlar det om rubrik och hjälptexter för kategorier, frågor, delfrågor och svarsalternativ. I vissa fall har också informationstexter, observandum och informationsrutor inkluderats på samma vis. Denna nivå identifieras genom det andra heltalet i intygtypens (7.1) fält version.
Om ett befintligt intyg ska uppdateras och förändringarna enbart är textuella hanteras denna uppdatering genom att en ny uppsättning av intygstypens texter upprättas och intygstypen som använder denna får ett nytt versionsnummer. Ex. intygstyp = "TSTRK1007", version = "6.8" blir intygstyp = "TSTRK1007",  version = "6.9".
Olika underverisoner inom samma huvudversion ser således alltid likadana ut avseende XML-filen som skickas i ett meddelande. Men den exakta innebörden av ett svar kan skilja sig åt beroende av vilken frågetext som visats för användren vid ifyllande av intyget.

### Flöden
Flödena nedan beskriver hur tjänsterna används i aktuella tillämpningar och utgör detaljering av de användningsfall som beskrivs i informationsmodellen.
Flödena beskrivs på en teknisk nivå som syftar till att hjälpa tjänstedomänens intressenter att förstå hur tjänsterna ska användas.

| Namn/beteckning | TK | Vårdsystem | Intygsapplikation | Intygstjänst | Invånartjänst för intyg | Intygsmottagarens system |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Hämta sjukfall | ListSickLeavesForCare | x | - | x | - | - |
| Skapa intygsutkast | CreateDraftCertificate | x | x | - | - | - |
| Registrera ett intyg | RegisterCertificate | - | x | x | - | - |
| Skicka ett intyg | SendCertificateToRecipient / RegisterCertificate | - | x | x | x | x |
| Skicka makuleringsinformation för ett intyg | RevokeCertificate | - | x | x | - | x |
| Hämta ett intyg | GetCertificate | - | x | x | x | x |
| Hämta intyg | ListCertficatesForCare | - | x | x | - | - |
| Hämta intyg | ListCertficatesForCitizen | - | - | x | x | - |
| Hämta intygsutkast, intyg samt tillhörande händelser och ärendekommunikation | ListCertificatesForCareWithQA | x | x | - | - | - |
| Skicka meddelande till intygsmottagare | SendMessageToRecipient | - | x | x | - | x |
| Skicka meddelande till vården | SendMessageToCare | - | x | x | - | x |
| Skicka intygsuppdateringar till vården | CertificateStatusUpdateForCare | x | x | - | - | - |
| Uppdatera intygsstatus i intygstjänst | SetCertificateStatus | - | - | x | x | - |

#### Hämta sjukfall

![img_017.png](images/img_017.png)

#### Skapa intygsutkast

![img_018.jpg](images/img_018.jpg)

#### Registrera ett intyg

![img_019.jpg](images/img_019.jpg)

#### Skicka ett intyg

##### Från en intygsapplikation

![img_020.jpg](images/img_020.jpg)

##### Från en invånartjänst för intyg

![img_021.jpg](images/img_021.jpg)

#### Skicka makuleringsinformation för ett intyg

![img_022.jpg](images/img_022.jpg)

#### Hämta ett intyg

##### Från en intygsapplikation

![img_023.jpg](images/img_023.jpg)

##### Från intygsmottagarens system

![img_001.jpg](images/img_001.jpg)

##### Från en invånartjänst för intyg

![img_002.jpg](images/img_002.jpg)

#### Hämta intyg

##### Från en intygsapplikation

![img_003.jpg](images/img_003.jpg)

##### Från en invånartjänst för intyg

![img_004.jpg](images/img_004.jpg)

#### Hämta intygsutkast, intyg samt tillhörande händelser och ärendekommunikation

![img_005.jpg](images/img_005.jpg)

#### Skicka meddelande till intygsmottagare

![img_006.png](images/img_006.png)

#### Skicka meddelande till vården

![img_007.png](images/img_007.png)

#### Skicka intygsuppdateringar till vården

![img_008.jpg](images/img_008.jpg)

#### Uppdatera intygsstatus i intygstjänst

![img_009.jpg](images/img_009.jpg)

### Adressering

#### Logiska addresser
Domänens samtliga tjänstekontrakt följer RIV-TA:s standard för logisk adressering (se:http://rivta.se/documents/ARK_0002). I detta kapitel anges vilken typ av tjänst som de logiska addresser som används av domänens tjänstekontrakt pekar på.

#### Transaktioner för dessa tjänstekontrakt adresseras till den logiska adressen till Intygstjänst
GetCertificate
ListCertificateForCare
ListCertificateForCitizen
ListSickLeavesForCare
RegisterCertificate
RevokeCertificate
SendCertificateToRecipient
SendMessageToCare
SendMessageToRecipient
SetCertificateStatus

#### CertificateStatusUpdateForCare
Statusuppdateringar adresseras till verksamhetsadressen för den enhet som äger intyget.

#### CreateDraftCertificate och ListCertificatesForCareWithQA
Den logiska adressen är verksamhetsadressen för den aktuella intygsapplikationen, exempelvis Intygstjänsters intygspplikation Webcert.

#### RegisterCertificate
För intygsapplikation som registrerar intyg i intygstjänst är den logiska adressen för transaktionen till intygstjänst. Tjänstekontraktet används även av intygstjänst för att registrera intyg hos intygsmottagares system, som då adresseras med respektive intygsmottagares verksamhetsadress (exempelvis”Försäkringskassan”).

#### RevokeCertificate
För intygsapplikation som makulerar intyg är den logiska adressen för transaktionen till intygstjänst Tjänstekontraktet används även av intygstjänst för att återkalla intyg hos intygsmottagares system, som då adresseras med respektive intygsmottagares verksamhetsadress (exempelvis ”Försäkringskassan”).

#### SendMessageToCare
För intygsmottagare är den logiska adressen för transaktionen till intygstjänst. För intygstjänst är den logiska adressen för transaktionen systemet hos den enhet som angivits av intygsmottagaren, vilket för en fråga avser systemet hos den enhet som utfärdade intyget, och för ett svar systemet hos den enhet som ställde frågan (dessa är normalt samma enhet).

#### SendMessageToRecipient
För system som vill skicka meddelanden till intygsmottagare är den logiska adressen för transaktionen till intygstjänst. Tjänstekontraktet används av intygstjänst för att skicka vidare meddelandet till intygsmottagare, som då adresseras med respektive verksamhetsadress (exempelvis ”Försäkringskassan”).

### Aggregering och engagemangsindex
Aggregering och engagemangsindex används inte inom denna tjänstedomän.

## Tjänstedomänens krav och regler
Här beskrivs tjänstedomänens icke-funktionella krav och regler.

### Informationssäkerhet och juridik
Se kapitlet om informationssäkerhet i informationsspecifikationen [R2].

#### Krav på en tjänsteproducent

##### Informationssäkerhet
Tjänstekontrakten i domänen hanterar känslig information och klassas som patientuppgifter. Detta betyder att de krav som PDL (Patientdatalagen) ställer på hur informationen hanteras skall beaktas. En tjänsteproducent ger åtkomst till sina tjänster genom avtal som Tjänsteplattformen hanterar och verkställer för en tjänstekonsument.

#### Krav på en tjänstekonsument
Se kapitlet Informationssäkerhet i informationsspecifikationen [R2].

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Informationen ska alltid vara uppdaterad |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

### Felhantering
När ett uppdaterande tjänstekontrakt anropas så returneras fältet result, som är av typen ResultType (se 7.1.10). Resultfältets attribut resultCode anger om anropet lyckades eller ej. Beskrivande text om resultat av anropet kan finnas i resultText.

#### Krav på en tjänsteproducent
Då fel uppstår för icke uppdaterande tjänstekontrakt så ska Soap Fault returneras.

##### Logiska fel
Då logiskt fel uppstår för anrop till ett uppdaterande tjänstekontrakt så ska resultfältet lämna ut relevanta värden till tjänstekonsumenten. För beskrivning av relevanta värden, se kapitlet om fälttypen ResultType (7.1.10).

##### Tekniska fel
Då tjänsteproducenten returnerar tekniskt fel (errorId = TECHNICAL_ERROR) är det sannolikt att tjänstekonsumenten kommer att göra en omsändning av tjänstekontraktsanropet.

#### Krav på en tjänstekonsument
Tjänstekonsumenter ska kontrollera om anropet lyckades eller ej. Beroende på om det anropade kontraktet är uppdaterande eller så ska resultfältet eller Soap Fault kontrolleras.

##### Logiska fel
Då tjänster används enligt mönstret fråga-svar från RIVTA 2.1 [R2] synkront är det tjänstekonsumenten som ansvarar för att tolka fel i samband med kommunikationen.
Logiska fel behöver hanteras av en tjänstekonsument genom information till användaren, loggning och efterföljande uppföljning. Vid fel av typen INFO kan eventuell text i resultattributet resultText visas för användaren.

##### Tekniska fel
Tjänstekonsument som råkar ut för tekniskt fel vid anrop av tjänstekontrakt behöver ha en strategi för att avgöra ifall omsändning av anropet ska ske eller ej. Ifall omsändning ska ske så behöver strategin reglera tidsintervall mellan anrop och antal omsändningar som ska ske.

## Tjänstedomänens meddelandemodeller
Informationen som hanteras av ett tjänstekontrakt utgör en delmängd av all information som hanteras inom tjänstdomänen. I detta kapitel beskrivs respektive tjänstekontrakt i form av varsin verksamhetsorienterad meddelandeinformationsmodell (V-MIM:ar). V-MIM:arna är modellerade för att illustrera en överskådlig bild av schemafilerna.
I tabellerna i kapitel 6 framgår hur kontrakten är designade och hur fälten i dessa mappar mot DIM:en i informationsspecifikationen.

### V-MIM GetCertificate
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett enskilt intyg och dess metadata (som status och relationer) hämtas från en intygstjänst.

![img_010.jpg](images/img_010.jpg)

### V-MIM ListCertificatesForCare
Meddelandeinformationsmodellen beskriver den information som kommuniceras när en lista med alla intyg gällande en viss patient på en eller flera enheter eller vårdgivare hämtas.
Meddelandet består av en lista som kan innehålla flera intyg.

![img_011.jpg](images/img_011.jpg)

### V-MIM ListCertificatesForCitizen
Meddelandeinformationsmodellen beskriver den information som kommuniceras när en lista med intyg för en viss patient hämtas.
Meddelandet består av en lista som kan innehålla flera intyg.

![img_012.jpg](images/img_012.jpg)

### V-MIM RegisterCertificate
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett intyg ska registreras i en intygstjänst eller hos en intygsmottagare.

![img_013.jpg](images/img_013.jpg)

### V-MIM RevokeCertificate
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett intyg ska makuleras.

![img_014.jpg](images/img_014.jpg)

### V-MIM SendCertificateToRecipient
Meddelandeinformationsmodellen beskriver den information som kommuniceras när en begäran om att ett intyg ska registreras i en intygsmottagares system skickas.
Det är antingen hälso- och sjukvårdspersonal eller invånaren själv som initierar begäran om att intyget ska skickas.

![img_015.jpg](images/img_015.jpg)

### V-MIM SendMessageToCare
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett meddelande som en del av en ärendekommunikation ska skickas från en intygsmottagare till vården.

![img_016.jpg](images/img_016.jpg)

### V-MIM SendMessageToRecipient
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett meddelande, som en del av en ärendekommunikation, ska skickas från vården till en intygsmottagare.

![img_024.jpg](images/img_024.jpg)

### V-MIM SetCertificateStatus
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett intyg ska byta status, till exempel när det bifogas till ett ärende, arkiveras eller återställs från arkivering.

![img_025.jpg](images/img_025.jpg)

### V-MIM CreateDraftCertificate
Meddelandeinformationsmodellen beskriver den information som kommuniceras när ett intygsutkast skapas.
Observera att typen Intyg är lokalt definierad i tjänstekontraktet och inte använder den gemensamma typen med samma namn.

![img_026.jpg](images/img_026.jpg)

### V-MIM CertificateStatusUpdateForCare
Meddelandeinformationsmodellen beskriver den information som kommuniceras när uppdateringar gällande ett intyg och dess tillhörande ärendekommunikation, i en intygsapplikation, ska förmedlas till ett integrerande vårdsystem. Detta inkluderar vilken användare som givit upphov till statusuppdateringen.

![img_027.jpg](images/img_027.jpg)

### V-MIM ListCertificatesForCareWithQA
Meddelandeinformationsmodellen beskriver den information som kommuniceras när en lista med alla intyg gällande en viss patient hos en viss enhet eller vårdgivare hämtas från en intygsapplikation. Informationen omfattar även händelser och ärendekommunikation för intygen som finns i listan.
Meddelandet består av en lista som kan innehålla flera intyg.

![img_028.jpg](images/img_028.jpg)

### V-MIM ListSickLeavesForCare
Meddelandeinformationsmodellen beskriver den information som kommuniceras när en lista med pågående sjukfall på en angiven enhet hämtas.
Meddelandet består av en lista som kan innehålla flera sjukfall.

![img_029.jpg](images/img_029.jpg)

## Tjänstekontrakt

### GetCertificate
Tjänstekontraktet används för att hämta ett enskilt intyg och tillhörande metadata (som statusar och relationer) från en intygstjänst. Tjänstekontraktet kan anropas av en intygsapplikation, en intygsmottagares system eller en invånartjänst för intyg (t.ex. Mina intyg).
En intygsapplikation anropar tjänstekontraktet för att hälso- och sjukvårdspersonal ska kunna titta på ett intyg. Endast statusinformation om makulering och om att intyget är skickat till en intygsmottagare följer med när anropet sker på detta vis.
Intygsmottagares system anropar tjänstekontraktet för att intygsmottagaren ska kunna hämta ett specifikt intyg från en intygstjänst. Detta är aktuellt till exempel då de mottagit ett utskrivet intyg och vill hämta den elektroniskt underskrivna versionen av intyget.
En invånartjänst för intyg anropar tjänstekontraktet för att invånaren ska kunna titta på ett intyg i tjänsten. Intygens alla statusar följer då med, både de som vården har gett upphov till (t.ex. makulerat) och de som invånaren själv har gett upphov till (t.ex. arkiverat eller skickat till en viss intygsmottagare). En invånartjänst för intyg kan också anropa tjänstekontraktet för att invånaren ska kunna bifoga ett intyg till ett ärende i intygsmottagarens egen e-tjänst (t.ex. Försäkringskassans Mina sidor). Bara statusinformation om makulering och om intyget redan är skickat till aktuell intygsmottagare följer då med. Detta på grund av att olika intygsmottagare inte behöver veta om att intyget också är skickat till andra intygsmottagare.

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| intygs-id | IntygId (se 7.2.6) | Unikt ID för det intyg som skall hämtas. | 1..1 | Intyg.intygs-id |
| part | Part (se 7.2.9) | Kodat värde som anger den part i intygshanteringsprocessen som skickar begäran om att hämta intyget. | 1..1 | Part.part |
| Svar |  |  |  |  |
| intyg | Intyg (se 7.1.5) | Ett intyg. | 1..1 | Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### ListCertificatesForCare
Tjänstekontraktet används för att hämta en lista med alla intyg gällande en viss patient på en eller flera enheter eller vårdgivare från en intygstjänst. Tjänstekontraktet kan anropas av en intygsapplikation.
En intygsapplikation anropar tjänstekontraktet för att hälso- och sjukvårdspersonal ska kunna se en lista över intyg. Bara statusinformation om makulering och om att intyget är skickat till en intygsmottagare följer med.
Listan som returneras inkluderar också eventuella makulerade intyg.

#### Version
3.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| person-id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. | 1..1 | Patient.person-id |
| vardgivar-id* | HsaId (se 7.2.5) | HSA-id för vårdgivaren. | 0..1 | Vårdgivare.vårdgivar-id |
| enhets-id* | HsaId (se 7.2.5) | HSA-id för enheten. | 0..* | Enhet.enhets-id |
| Svar |  |  |  |  |
| intygsLista | ListaType (lokalt definierad i kontraktet) | En lista av intyg som är signerade eller makulerade. | 1..1 | - |
| ../intyg | Intyg (se 7.1.5) | Ett intyg. | 0..* | Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.skickattidpunkt |

#### Övriga regler

##### enhets-id
När enhets-id anges kan vardgivar-id ej anges. Detta styrs med ett XML schema choice element.

##### vardgivar-id
När vardgivar-id anges kan enhets-id ej anges. Detta styrs med ett XML schema choice element.
Vid sökning på vårdgivare matchas detta direkt mot den vårdgivare som är angiven i intyget, dvs alternativet att i HSA slå upp alla enheter för en vårdgivare och sedan söka intyg för dessa enheter används inte.

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1

### ListCertificatesForCitizen
Tjänstekontraktet används för att hämta en lista med intyg för en viss patient från en intygstjänst. Alla intyg inkluderas, oavsett utfärdande enhet. Tjänstekontraktet kan anropas av en invånartjänst för intyg (t.ex. Mina intyg).En invånartjänst för intyg anropar tjänstekontraktet för att invånaren ska kunna se en lista över sina intyg i tjänsten. Intygens alla statusar följer med, både de som vården har gett upphov till (t.ex. makulerat) och de som invånaren själv har gett upphov till (t.ex. arkiverat eller skickat till en viss intygsmottagare).
En invånartjänst för intyg kan också anropa tjänstekontraktet för att invånaren ska kunna bifoga ett intyg till ett ärende i intygsmottagarens egen e-tjänst (t.ex. Försäkringskassans Mina sidor). Bara statusinformation om makulering och om intyget redan är skickat till aktuell intygsmottagare följer med. Detta på grund av att olika intygsmottagare inte behöver veta om att intyget också är skickat till andra intygsmottagare.
Tjänstekontraktet kan hämta alla typer av intyg, eller intyg av en angiven typ. Det är även möjligt att avgränsa sökningen till intyg signerade mellan vissa datum. Listan inkluderar också eventuella makulerade intyg.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| person-id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. | 1..1 | Patient.person-id |
| intygTyp | TypAvIntyg (se 7.2.11) | Kodad värde som avgränsar vilka typer av intyg som ska hämtas. Utelämnas för att hämta alla typer. | 0..* | Intyg.typ |
| arkiverade | boolean | Anger om intyg som arkiverats av invånaren ska hämtas. True anger att arkiverade intyg ska hämtas, False att de inte ska hämtas. | 1..1 | - |
| fromDatum | DateType | Hämta intyg med signeringsdatum från och med detta datum. Utelämnas för att hämta utan begränsning bakåt i tiden. | 0..1 | - |
| tomDatum | DateType | Hämta intyg med signeringsdatum till och med detta datum. Utelämnas för att hämta utan begränsning på senaste datum. | 0..1 | - |
| part | Part (se 7.2.9) | Kodat värde som anger den part i intygshanteringsprocessen som skickar begäran om att hämta intygslistan. | 1..1 | Part.part |
| Svar |  |  |  |  |
| intygLista | ListaType (lokalt definierad i kontraktet) | En lista av intyg som är signerade eller makulerade. | 1..1 | - |
| ../intyg | Intyg (se 7.1.5) | Ett intyg. | 0..* | Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.signerattidpunkt |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### RegisterCertificate
Tjänstekontraktet används för att registrera ett intyg. Registreringen innebär att intyget registreras i ett annat system. Tjänstekontraktet kan anropas av en intygsapplikation (t.ex. Webcert) eller en intygstjänst (t.ex. Intygstjänsten).
En intygsapplikation anropar tjänstekontraktet för att registrera det signerade intyget i en intygstjänst.
En intygstjänst anropar tjänstekontraktet (efter att den har fått signal om att skicka intyget genom SendCertificateToRecipient) för att registrera intyget i intygsmottagarens system.

#### Version
3.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| svarPa* | MeddelandeReferens (se 7.1.7) | Om intyget utfärdas som ett svar på en fråga från intygsmottagaren (t.ex. en begäran om komplettering) ska referens till meddelandet skickas. | 0..1 | Meddelande.meddelande-id, Meddelande.referens-id |
| intyg* | Intyg (se 7.1.5) | Ett intyg. | 1..1 | Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.signerattidpunkt |
| Svar |  |  |  |  |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### svarPa
När en meddelandeReferens (svarPa) anges SKALL referens-id anges om det skickades i frågan (kompletteringsbegäran) från intygsmottagaren.

##### intyg/mottagare
Ska ej anges vid registrering av intyg.

##### intyg/skickatTidpunkt
Ska ange aktuell tidpunkt när intyg skickas från intygsapplikation till intygstjänst.

##### Dubletthantering
Om intyget redan skulle vara registrerat returnerar tjänsten information om detta med result.resultCode=”INFO”. Det betraktas således inte som ett fel.

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1

### RevokeCertificate
Tjänstekontraktet används för att makulera ett registrerat intyg. Tjänstekontraktet kan anropas av en intygsapplikation (t.ex. Webcert) eller en intygstjänst (t.ex. Intygstjänsten).
En intygsapplikation (där intyget har makulerats) anropar tjänstekontraktet för att informera en intygstjänst om att ett tidigare registrerat intyg har makulerats.
En intygstjänst anropar i sin tur tjänstekontraktet (i anslutning till att intyget har makulerats i denna intygstjänst) för att förmedla information till intygsmottagarens system, om att intyget har makulerats hos sjukvården.

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| meddelande | string | Beskrivning av orsak till makuleringen. | 0..1 | Makulering.meddelande |
| skickatTidpunkt | TimeStampType | Tidpunkt då makuleringen skickades från vården. | 1..1 | Makulering.tidpunkt |
| intygs-id | IntygId (se 7.2.6) | Unikt ID för det intyg som skall makuleras. | 1..1 | Intyg.intygs-id |
| patientPerson-Id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. Ska överensstämma med person-id på intyget som ska makuleras. Inkluderas här för att förenkla för systemlösningar som vill använda detta begrepp som nyckel istället för intygs-id. | 1..1 | Patient.person-id |
| skickatAv | HoSPersonal (se 7.1.4) | Identifierar den som utför makuleringen. | 1..1 | HoS-personal, Enhet, Vårdgivare |
| Svar |  |  |  |  |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### SendCertificateToRecipient
Tjänstekontraktet används för att skicka en begäran om att ett intyg ska registreras hos en intygsmottagare. Tjänstekontraktet kan anropas av en invånartjänst för intyg (t.ex. Mina intyg) eller en intygsapplikation.
En invånartjänst för intyg eller en intygsapplikation anropar tjänstekontraktet för att skicka en signal till en intygstjänst och därmed instruera denna att registrera ett intyg i intygsmottagarens system genom att anropa RegisterCertificate.

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| skickatTidpunkt | TimeStampType | Tidpunkt då begäran om att skicka intyg skickas. | 1..1 | - |
| intygs-id | IntygId (se 7.2.6) | Identitet på intyget. | 1..1 | Intyg.intygs-id |
| patientPerson-Id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. Ska överensstämma med person-id på intyget som ska skickas. Inkluderas här för att förenkla för systemlösningar som vill använda detta begrepp som nyckel istället för intygs-id. | 1..1 | Patient.person-id |
| mottagare | Part (se 7.2.9) | Kodat värde som anger den part i intygshanteringsprocessen som intyget ska skickas till. | 1..1 | Intygsmottagare.part |
| skickatAv |  | Identifierar den person som skickar meddelandet. Denna information loggas men lagras inte i Intygstjänsten. |  | - |
| ../hosPersonal | HoSPersonal (se 7.1.4) | Skall anges när anrop görs från vården, och enbart då. | 0..1 | HoS-personal, Enhet, Vårdgivare |
| ../person-id | PersonId (se 7.2.10) | Skall anges när anrop görs från en invånartjänst, och enbart då. | 0..1 | Patient.person-id |
| Svar |  |  |  |  |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### Intyg redan skickat
Om intyget redan skulle vara skickat till mottagaren returnerar tjänsten information om detta med result.resultCode=”INFO”.

##### skickatAv/hosPersonal och skickatAv/person-id
Attributen hanteras med XML schema choice element vilket gör att bara ett av dem kan anges.

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### SendMessageToCare
Tjänstekontraktet används för att skicka ett meddelande från en intygsmottagare till vården. Meddelandet kan vara en fråga, ett svar på en av vården tidigare skickad fråga, eller en påminnelse gällande en obesvarad fråga. Meddelandet hör alltid till ett intyg som måste vara skickat till intygsmottagaren innan ett meddelande skapas. Tjänstekontraktet kan anropas av intygsmottagarens system.
Meddelanden av denna typ ska alltid skickas via en intygstjänst, för att möjliggöra kontroll och uppföljning av intygsrelaterade ärendeflöden. En intygstjänst bör vidarebefordra anropen synkront, så att konsumenten informeras om det uppstår fel när anropet vidarebefordras.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| meddelande-id | string | Unikt ID för meddelandet. ”Meddelande” syftar här på själva requestet. Är en GUID. | 1..1 | Meddelande.meddelande-id |
| referens-id | string | Valfri referens till entitet hos sändande part. Behöver ej vara unikt. | 0..1 | Meddelande.referens-id |
| skickatTidpunkt | TimeStampType | Tidpunkt då meddelandet skickades. | 1..1 | Meddelande.avsänt tidpunkt |
| intygs-id | IntygId (se 7.2.6) | Unikt ID för det intyg som meddelandet hör till. | 1..1 | Intyg.intygs-id |
| patientPerson-Id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. Ska överensstämma med person-id på intyget som meddelandet hör till. Inkluderas här för att förenkla för systemlösningar som vill använda detta begrepp som nyckel istället för intygs-id. | 1..1 | Patient.person-id |
| logiskAdressMottagare* | string | Logisk adress för den vårdenhet som intygstjänsten ska vidarebefordra meddelandet till. | 1..1 | Enhet.Enhets-id.extension |
| amne* | Amneskod (se 7.2.1) | Kodat värde som anger ämnet för frågan. | 1..1 | Meddelande.ämne |
| rubrik | string | En valfri rubrik som beskriver meddelandet. | 0..1 | Meddelande.rubrik |
| meddelande* | string | Meddelandets text. / Om meddelandet är av ämne “Komplettering” ska det via det här fältet skickas det generella kompletteringsmeddelandet. Kompletteringmeddelandet som gäller en specifik fråga i intyget ska skickas via fältet komplettering/text | 1..1 | Meddelande.meddelande |
| paminnelseMeddelande-id* | string | Identitet på ett tidigare skickat meddelande, som detta meddelande är en påminnelse om. | 0..1 | Meddelande.meddelande-id |
| svarPa | MeddelandeReferens (se 7.1.7) | Om detta meddelande är ett svar på en fråga från vården ska referens till frågan skickas | 0..1 | Meddelande.meddelande-id, Meddelande.referens-id |
| skickatAv | - | - | 1..1 | - |
| ../part | Part (se 7.2.9) | Kodat värde som anger den part i intygshanteringsprocessen som skickar meddelandet. | 1..1 | Intygsmottagare.part |
| ../kontaktInfo | string | Rader med kontaktinformation. Vilken information som skickas kan variera för olika intygsmottagare, och måste överenskommas mellan vården och intygsmottagaren. | 0..* | Intygsmottagare. kontaktuppgift |
| komplettering* | - | Komplettering | 0..* | - |
| ../frage-id | string | Identitet på den fråga som intygsmottagaren önskar få kompletterad. | 1..1 | Fråga.fråge-id |
| ../instans* | int | Instansnummer för en fråga som förekommer i flera instanser. | 0..1 | Svar.instans |
| ../text* | string | Kompletteringsmeddelande som gäller en specifik fråga i intyget. Texten ska inte vara redundant med den texten som skickades via fältet meddelande | 1..1 | Kompletteringsfråga.kompletteringsfråga |
| sistaDatumForSvar | DateType | Datum då intygsmottagaren senast vill ha ett svar. | 0..1 | Meddelande.sista datum för svar |
| Svar |  |  |  |  |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### amne
När tjänsten används för att skicka ett svar på en tidigare ställd fråga från vården ska ämnet för svaret sättas till samma ämne som frågan hade.

##### paminnelseMeddelande-id
Ska endast anges när ämnet är ”Påminnelse”.

##### logiskAdressMottagare
Den logiska adressaten ska för nya frågor vara den enhet som utfärdade intyget. För svar på frågor ska den logiska adressen hämtas från frågan (skickatAv.enhet.enhets-id.extension).

##### komplettering
Ska endast anges när ämnet är ”Komplettering”.

##### komplettering/instans
Ska endast ange när frågan har besvarats flera gånger, och kompletteringen är relaterad till en specifik instans. Uppgiften utelämnas när en fråga endast besvarats en gång, eller om kompletteringen är relaterad till alla instanser. Avgränsningar kring denna hantering kan gälla för en viss typ av intyg. Lägsta värde är 1.

##### sistaDatumForSvar
Ska endast anges när meddelandet är en fråga.

##### meddelande
Försäkringskassan har, för sin användning av tjänsten, avtalat med domänens förvaltare att detta fält inte behöver innehålla någon information i de fall fältet ämne anger att det handlar om ”komplettering”. Då skickas meddelandetexten till vården enbart i fältet komplettering.text.

##### Endast ett svar
En fråga får endast besvaras en gång.

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### SendMessageToRecipient
Tjänstekontraktet används för att skicka ett meddelande från vården till en intygsmottagare. Meddelandet kan vara en fråga eller ett svar på en av intygsmottagaren tidigare skickad fråga, eller en påminnelse gällande en obesvarad fråga. Meddelandet hör alltid till ett intyg som måste vara skickat till intygsmottagaren innan ett meddelande skapas. Tjänstekontraktet kan anropas av en intygsapplikation.
Meddelanden ska alltid skickas via en intygstjänst, för att möjliggöra kontroll och uppföljning av intygsrelaterade ärendeflöden. En intygstjänst bör vidarebefordra anropen synkront, så att konsumenten informeras om det uppstår fel när anropet vidarebefordras.

#### Version
2.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| meddelande-id | string | Unikt ID för meddelandet. ”Meddelande” syftar här på själva requestet. Är en GUID. | 1..1 | Meddelande.meddelande-id |
| referens-id | string | Valfri referens till entitet hos sändande part. Behöver ej vara unikt. | 0..1 | Meddelande.referens-id |
| skickatTidpunkt | TimeStampType | Tidpunkt då meddelandet skickades. | 1..1 | Meddelande.avsänt tidpunkt |
| intygs-id | IntygId (se 7.2.6) | Unikt ID för det intyg som meddelandet hör till. | 1..1 | Intyg.intygs-id |
| patientPerson-Id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. Ska överensstämma med person-id på intyget som meddelandet hör till. Inkluderas här för att förenkla för systemlösningar som vill använda detta begrepp som nyckel istället för intygs-id. | 1..1 | Patient.person-id |
| logiskAdressMottagare | string | Logisk adress för den intygsmottagare som intygstjänsten ska vidarebefordra meddelandet till. | 1..1 | Intygsmottagare.logisk adress |
| amne* | Amneskod (se 7.2.1) | Kodat värde som anger ämnet för frågan. | 1..1 | Meddelande.ämne |
| rubrik | string | En valfri rubrik som beskriver meddelandet. | 0..1 | Meddelande.rubrik |
| meddelande | string | Meddelandets text | 1..1 | Meddelande.meddelande |
| paminnelseMeddelande-id* | string | Identitet på ett tidigare skickat meddelande, som detta meddelande är en påminnelse om. | 0..1 | Meddelande.meddelande-id |
| svarPa | MeddelandeReferens (se 7.1.7) | Om detta meddelande är ett svar på en fråga från intygsmottagaren ska referens till frågan skickas | 0..1 | Meddelande.meddelande-id, Meddelande.referens-id |
| skickatAv | HosPersonal (se 7.1.4) | Information om den hälso- och sjukvårdspersonal som skickar meddelandet. Anges eftersom det inte behöver vara samma som signerade intyget. | 1..1 | HoS-personal, Enhet, Vårdgivare |
| sistaDatumForSvar | DateType | Datum då vården senast vill ha ett svar. | 0..1 | Meddelande.sista datum för svar |
| Svar |  |  |  |  |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### amne
När tjänsten används för att skicka ett svar på en tidigare ställd fråga från intygsmottagaren ska ämnet för svaret sättas till samma ämne som frågan hade. Undantaget är påminnelser, som alltid ska ha ämnet ”Påminnelse”.

##### paminnelseMeddelande-id
Ska endast anges när ämnet är ”Påminnelse”. Användning av ämnet Påminnelse beror på intygsmottagare och det måste kontrolleras att den aktuella intygsmottagaren har stöd för att ta emot påminnelser.

##### sistaDatumForSvar
Ska endast anges när meddelandet är en fråga.

##### Endast ett svar
En fråga får endast besvaras en gång.

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### SetCertificateStatus
Tjänstekontraktet används för att sätta status för ett registrerat intyg i en intygstjänst. Statusen anger intygets status för en viss part, t.ex. en intygsmottagare (Försäkringskassan) eller invånaren. Tjänstekontraktet kan anropas av en invånartjänst för intyg (t.ex. Mina intyg eller Försäkringskassans Mina sidor).
Invånartjänsten för intyg anropar tjänstekontraktet för att invånaren ska kunna bifoga ett intyg till ett ärende i intygsmottagarens egen e-tjänst (t.ex. Försäkringskassans Mina sidor), varvid en status sätts som informerar om att intyget är skickat till Försäkringskassan. En invånartjänst för intyg kan också anropa tjänstekontraktet för att invånaren ska kunna arkivera ett intyg eller återställa ett intyg från arkivering i tjänsten.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| intygs-id | IntygId (se 7.2.6) | Unikt ID för det intyg som status skall sättas för. | 1..1 | Intyg.intygs-id |
| part | Part (se 7.2.9) | Kodat värde som anger den part i intygshanteringsprocessen som statusen gäller för. | 1..1 | Part.part |
| status | Statuskod (se 7.2.15) | Kodat värde som anger status för ett intyg. | 1..1 | Status.status |
| tidpunkt | TimeStampType | Tidpunkt då statusen sattes. | 1..1 | Status.tidpunkt |
| Svar |  |  |  |  |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### CreateDraftCertificate
Tjänstekontraktet används för att skapa ett intygsutkast i en intygsapplikation. Tjänstekontraktet kan anropas av ett vårdsystem.
I intyget som skapas vill man använda de namn på HoS-Personal och Enhet som förekommer i vårdsystemet, därför skickas de med i anropet istället för att hämtas från HSA. Övriga uppgifter om dessa entiteter hämtas dock från HSA. Observera att uppgifter om vårdgivare inte skickas med i anropet. Detta förutsätter att angiven enhet är kopplad till en vårdgivare i HSA. Som svar skickas ett intygs-id på det intygsutkast som har skapats.

#### Version
3.2

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| intyg | Intyg (lokalt definierad i kontraktet) | Utkast till intyg. | 1..1 | Intyg |
| ../typAvIntyg | TypAvIntyg (se 7.2.11) | Kodat värde som anger intygstypen. | 1..1 | Intyg.typ |
| ../patient* | Patient (se 7.1.8) | Uppgifter om den patient som intyg skapas för. | 1..1 | Patient |
| ../skapadAv | HosPersonal (lokalt definierad i kontraktet) | Hälso- och sjukvårdspersonal som skapar intyg. | 1..1 | Hos-personal |
| ../../personal-id | HsaId (se 7.2.5) | HSA-id för hälso- och sjukvårdspersonalen som skapar intygsutkastet. | 1..1 | HoS-personal.personal-id |
| ../../fullstandigtNamn | string | Personalens förnamn + efternamn. | 1..1 | HoS-personal.fullständigt namn |
| ../../enhet | Enhet (lokalt definierad i kontraktet) | Enhet som intyg skapas på. | 1..1 | Enhet |
| ../../../enhets-id | HsaId (se 7.2.5) | HSA-id för enheten. | 1..1 | Enhet.enhets-id |
| ../../../enhetsnamn | string | Enhetens namn. | 1..1 | Enhet.enhetsnamn |
| ../ref | string | Referens till något i det integrerande vårdsystemet som ska kopplas ihop med intyget. Kan exempelvis vara ett id för en vårdkontakt. | 0..1 | Referens.ref |
| Svar |  |  |  |  |
| intygs-id | IntygId (se 7.2.6) | Unikt ID för det intygsutkast som skapats. | 0..1 | Intyg.intygs-id |
| result | ResultType  (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### CertificateStatusUpdateForCare
Tjänstekontraktet används för att skicka uppdateringar gällande ett intyg och tillhörande ärendekommunikation. Tjänstekontraktet kan anropas av en intygsapplikation.
Uppdateringar skickas vid definierade händelser i en intygsapplikation. Händelserna kan antingen gälla ett intygsutkast, ett signerat intyg eller en ärendekommunikation för ett intyg:
Händelser som gäller intygsutkastet kan vara att intygsutkastet har skapats eller ändrats.
Händelser som gäller ett signerat intyg kan vara att intyget har skickats eller makulerats. När det gäller händelser för ett signerat intyg så kan de ibland sammanfalla med statusförändringar, men det finns händelser som inte resulterar i förändrad status. Ett vårdsystem som integrerar med en intygsapplikation behöver bara bry sig om händelser, medan eventuell status-information (som skickas med IntygsStatus, se 7.4) bör ignoreras.
Händelser som gäller ärendekommunikationen kan vara när det har inkommit en ny fråga på intyget från en intygsmottagare.
Utöver händelserna skickas även statistik om ärendekommunikation för ett intyg, t.ex. hur många frågor från intygsmottagaren som har inkommit för ett intyg och hur många av de som inte är besvarade.

#### Version
3.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| intyg | Intyg (se 7.1.5) | Intygsutkast eller signerat intyg enligt den gemensamma typen Intyg. | 1..1 | Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.signerattidpunkt |
| handelse | Handelse (se 7.1.3) | Information om en händelse. / Händelse kan gälla ett intygsutkast, ett signerat intyg eller ärendekommunikationen för ett intyg. | 1..1 | Händelse |
| skickadeFragor | Arenden (se 7.1.1) | Frågor som rör intyget och som har skickats från vården. | 1..1 | Ärenden |
| mottagnaFragor | Arenden (se 7.1.1) | Frågor som rör intyget och som har skickats från intygsmottagaren. | 1..1 | Ärenden |
| ref | string | Referens till något i det integrerande vårdsystemet som ska kopplas ihop med intyget. Kan exempelvis vara ett id för en vårdkontakt. | 0..1 | Referens.ref |
| hanteratAv | HSAId (se 7.2.5) | Den hälso- och sjukvårdspersonal som hanterar intyget och ger upphov till en statusuppdatering. | 0..1 | HoS-personal.personal-id |
| Svar |  |  |  |  |
| result | ResultType (se 7.1.10) | Information om anropets resultat (OK, ERROR, INFO) | 1..1 | - |

#### Övriga regler

##### Icke funktionella krav
Nedanstående verksamhetskrav gäller för det aktuella tjänstekontraktet.

##### SLA-krav
För detta tjänstekontrakt gäller de generella kraven enl. kap 4.2.1

### ListCertificatesForCareWithQA
Tjänstekontraktet används för att hämta en lista med alla intyg gällande en viss patient hos en viss enhet eller vårdgivare från en intygsapplikation. Svaret inkluderar också information om händelser och ärendekommunikation för intygen som finns i listan. Tjänstekontraktet kan anropas av ett vårdsystem.
Listan inkluderar även intygsutkast.

#### Version
3.2

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| person-id | PersonId (se 7.2.10) | Person- eller samordningsnummer för patienten. | 1..1 | Patient.person-id |
| enhets-id | HsaId (se 7.2.5) | HSA-id för enheten. | 0..* | Enhet.enhets-id |
| vardgivar-id | HsaId (se 7.2.5) | HSA-id för vårdgivaren. | 0..1 | Vårdgivare.vårdgivar-id |
| fromTidpunkt | TimeStampType | Hämta intyg och händelser, där händelserna inträffat från och med denna tidpunkt. Endast de händelser som inträffat från och med denna tidpunkt returneras, tillsammans med tillhörande intyg. Utelämnas för att hämta utan begränsning bakåt i tiden. | 0..1 | - |
| tomTidpunkt | TimeStampType | Hämta intyg och händelser, där händelserna inträffat fram till och med denna tidpunkt. Endast de händelser som inträffat till och med denna tidpunkt returneras, tillsammans med tillhörande intyg. Utelämnas för att hämta utan begränsning framåt i tiden. | 0..1 | - |
| Svar |  |  |  |  |
| list | List (lokalt definierad i kontraktet) | En lista av intyg som kan vara signerade, makulerade eller i form av intygsutkast. | 0..1 | - |
| ../item | ListItem (lokalt definierad i kontraktet) | Element som håller ihop objekt för ett intyg | 0..* | - |
| ../../intyg | Intyg (se 7.1.5) | Ett intyg enligt den gemensamma fälttypen Intyg. | 1..1 | Intyg, Intygsmottagare.part, Patient, HoS-personal, Enhet, Vårdgivare, Relation, Status, Part, Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id, Metadata.signerattidpunkt |
| ../../handelser | HandelseList | En lista innehållande samtliga händelser för ett intyg. | 1..1 | - |
| ../../../handelse | Handelse (se 7.1.3) | Information om en händelse. / En händelse kan gälla ett intygsutkast, ett signerat intyg eller ärendekommunikationen för ett intyg. | 0..* | Händelse |
| ../../skickadeFragor | Arenden (se 7.1.1) | Frågor som rör intyget och som har skickats från vården. | 1..1 | Ärende |
| ../../mottagnaFragor | Arenden (se 7.1.1) | Frågor som rör intyget och som har skickats från intygsmottagaren. | 1..1 | Ärende |
| ../../ref | string | Referens till något i det integrerande vårdsystemet som ska kopplas ihop med intyget. Kan exempelvis vara ett id för en vårdkontakt. | 0..1 | Referens.ref |

#### Övriga regler

##### enhets-id
När enhets-id anges ska vardgivar-id ej anges.

##### vardgivar-id
När vardgivar-id anges ska enhets-id ej anges.

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

### ListSickLeavesForCare
Tjänstekontraktet används för att få en lista med pågående sjukfall på en angiven enhet. Tjänstekontraktet kan anropas av ett vårdsystem.
Ett sjukfall består av en rad sjukskrivningsintyg för en och samma patient, där uppehållet mellan intygen inte är längre än det max antal dagar som specificeras när tjänstekontraktet anropas. De exakta reglerna för hur sjukfallsinformationen bestäms utifrån intygsinformationen kan fås från förvaltningen av denna domän, då de kan komma att förändras något över tid.
Bara sjukfall som pågår då anropet till detta tjänstekontrakt görs, dvs. där det finns ett intyg med en sjukskrivningsperiod som är giltig samma datum, inkluderas i svaret.
I svaret inkluderas enbart sjukfall som finns på angiven enhet och eventuella underenheter till denna.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. För gemensamma typer refereras till en separat beskrivning. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Begäran |  |  |  |  |
| enhets-id | HsaId (se 7.2.5) | HSA-id för enhet. | 1..1 | Enhet.enhets-id |
| maxDagarMellanIntyg | int | Maximalt antal dagars uppehåll det får vara mellan två intyg för att de ska räknas till samma sjukfall. | 1..1 | - |
| minstaSjukskrivningslangd | int | Minimal sjukskrivningslängd i dagar för de pågående sjukfall som ska hämtas. | 0..1 | - |
| maxSjukskrivningslangd | int | Maximal sjukskrivningslängd i dagar för de pågående sjukfall som ska hämtas. | 0..1 | - |
| personal-id | HsaId (se 7.2.5) | HSA-id för HoS-person som har signerat nuvarande intyg i sjukfallet. | 0..* | HoS-personal.personal-id |
| Svar |  |  |  |  |
| sjukfallLista | SjukfallLista (lokalt definierad i kontraktet) | Lista med sjukfall. | 1..1 |  |
| ../sjukfall | Sjukfall (lokalt definierad i kontraktet) | Pågående sjukfall. | 0..* | Sjukfall |
| ../../person-id | PersonId (se 7.2.10) | Patientens person- eller samordningsnummer. | 1..1 | Patient.person.id |
| ../../patientFullstandigtnamn | string | Patientens namn. | 0..1 | Patient.förnamn / Patient.mellannamn / Patient.efternamn |
| ../../enhets-id | HsaId (se 7.2.5) | HSA-id för enhet. | 1..1 | Enhet.enhets-id |
| ../../personal-id | HsaId (se 7.2.5) | HSA-id för HoS-person som har signerat nuvarande intyg i sjukfallet. | 1..1 | HoS-personal.personal-id |
| ../../startdatum | DateType | Datum då sjukfallet startade. | 1..1 | Sjukfall.startdatum |
| ../../slutdatum | DateType | Datum då sjukfallet kommer att avslutas om det inte förlängs av nya intyg. | 1..1 | Sjukfall.slutdatum |
| ../../diagnoskod | Diagnoskod | Huvuddiagnoskod i det intyg som är giltigt vid datum för hämtning av sjukfall. | 1..1 | Sjukfall.diagnoskod |
| ../../../code | string | Diagnoskod. | 1..1 | Sjukfall.diagnoskod |
| ../../../codeSystem | string | Identifierare för kodsystem, om känt. | 0..1 | Sjukfall.diagnoskod |
| ../../../codeSystemName | string | Namn på kodsystem. Används ej. | 0..1 | Sjukfall.diagnoskod |
| ../../../codeSystemVersion | string | Version på kodsystem. Används ej. | 0..1 | Sjukfall.diagnoskod |
| ../../../displayName | string | Klartext för kod. Används ej. | 0..1 | Sjukfall.diagnoskod |
| ../../../originalText | string | Beskrivande text. Används ej. | 0..1 | Sjukfall.diagnoskod |
| ../../antalintyg | int | Antal intyg som ingår i sjukfallet. | 1..1 | Sjukfall.antal intyg |
| ../../sjukskrivningslangd | int | Sjukfallets totala längd i dagar. | 1..1 | Sjukfall.sjukskrivningslängd |
| ../../sjukskrivningsgrad | Sjukskrivningsgrad | Platshållare för information om sjukfallets sjukskrivningsgrad. | 1..1 | Sjukfall.sjukskrivningsgrad / Sjukfall.aktiv sjukskrivnignsgrad |
| ../../../aktivGrad | int | Den sjukskrivningsgrad som är giltig vid datum för hämtning av sjukfall. | 1..1 | Sjukfall.aktiv sjukskrivnignsgrad |
| ../../../grader | Sjukskrivningsgrader | Platshållare för information om samtliga sjukskrivningsgrader i det intyg som är giltigt vid datum för hämtning av sjukfall. | 1..1 | Sjukfall.sjukskrivningsgrad |
| ../../../../grad | int | Samtliga sjukskrivningsgrader i det intyg som är giltigt vid datum för hämtning av sjukfall. | 1..4 | Sjukfall.sjukskrivningsgrad |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt

##### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.2.1.

## Gemensamma fälttyper
Detta kapitel beskriver de gemensamma fälttyper som förekommer i tjänstekontrakten i kapitel 6. Detta kan vara
Gemensamma objekt
Domänspecifika komplexa datatyper
Övriga datatyper

### Gensamma objekt
Detta kapitel beskriver centrala informationsbärande objekt som är gemensamma för olika kontrakt.

#### Arenden
Summerar antalet ärenden för ett intyg. Datatypen kan användas för att summera antingen antalet ärenden som startar med en fråga från intygsmottagaren eller antalet ärenden som inletts med en fråga från vården.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| totalt | int | Det totala antalet ärenden | 1..1 | Ärenden.totalt |
| ejBesvarade | int | Antalet ärenden vars frågor som ej är besvarade och ej markerade som hanterade. | 1..1 | Ärenden.ej besvarade |
| besvarade | int | Antalet ärenden vars frågor som är besvarade och ej markerade som hanterade. | 1..1 | Ärenden.besvarade |
| hanterade | int | Antalet ärenden som är markerade som hanterade. | 1..1 | Ärenden.hanterade |

#### Enhet
Enhet. Kan vara en vårdenhet som i HSA har en direkt koppling till en vårdgivare, eller en underenhet som i HSA har en koppling till en vårdenhet. I detta sammanang synliggörs inte hierarkin, utan enheten länkar alltid direkt till vårdgivaren.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| enhets-id | HsaId (se 7.2.5) | Hsa-Id för enhet | 1 | Enhet.enhets-id |
| arbetsplatskod | Arbetsplatskod (se 7.2.2) | Arbetsplatskod för enhet | 1 | Enhet.arbetsplatskod |
| enhetsnamn | string | Namn på enhet | 1 | Enhet.enhetsnamn |
| postadress | string | Enhetens adress | 1 | Enhet.postadress |
| postnummer | string | Enhetens postnummer | 1 | Enhet.postadnummer |
| postort | string | Enhetens postort | 1 | Enhet.postort |
| telefonnummer | string | Enhetens telefonnummer | 1 | Enhet.telefonnummer |
| epost | string | Enhetens e-postadress | 0..1 | Enhet.e-post |
| vardgivare | Vardgivare (se 7.1.12) | Vårdgivare | 1..1 | Vårdgivare |

#### Handelse
Intygsrelaterade händelser. Händelsehanteringen är avgränsad till händelser som är av intresse för en integrerad intygsapplikation.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| handelsekod | Handelsekod (se 7.2.4) | Kodat värde för händelser. | 1..1 | Händelse.händelsekod |
| tidpunkt | TimeStampMedMillisekunder | Tidpunkt då händelsen inträffade. Restriktion på dateTime som specificerar att tidpunkten ska inkludera millisekunder. | 1..1 | Händelse.tidpunkt |
| amne* | Amneskod (se 7.2.1) | Om händelsen avser en ärendekommunikation sätts ämnet för den aktuella frågan I detta fält. / Kodat värde för ämne. | 0..1 | Meddelande.ämne |
| sistaDatumForSvar* | DateType | Om händelsen avser en ärendekommunikation sätts datum då intygsmottagaren senast vill ha ett svar i detta fält. | 0..1 | Meddelande.sista datum för svar |

##### Fältregler

###### amne, sistaDatumForSvar
Elementen amne och sistaDatumForSvar kan endast finnas då handelsekod är NYFRFM.

#### HosPersonal
Personal inom Hälso- och sjukvården

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| personal-id | HsaId (se 7.2.5) | Hsa-Id för Hos-person | 1..1 | HoS-personal.personal-id |
| fullstandigtNamn | string | Fullständigt namn för Hos-person | 1..1 | HoS-personal.fullständigt namn |
| forskrivarkod | string | Förskrivarkod för Hos-person | 0..1 | HoS-personal.förskrivarkod |
| befattning | Befattning (se 7.2.3) | Kodat värde som anger personens befattning | 0..* | HoS-personal.befattning |
| specialistkompetens | Specialistkompetens (se 7.2.14) | Personsens specialistkompetens | 0..* | HoS-personal.specialistkompetens |
| enhet | Enhet (se 7.1.2) | Enhet | 1..1 | Enhet, Vårdgivare |
| legitimeratYrke | LegitimeratYrkeType (7.2.8) | Kodad värde som anger legitimationer från HOSP via HSA. | 0..* | HoS-personal.legitimation |

#### Intyg

##### Fältregler
Nedanstående tabell beskriver varje element i fälttypen. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| intygs-id | IntygId (se 7.2.6) | Unikt ID för intyget. | 1..1 | Intyg.intygs-id |
| mottagare* | Part (se 7.2.9) | Kodat värde som anger en part i intygshanteringsprocessen. | 0..* | Intygsmottagare.part |
| typ | TypAvIntyg (se 7.2.11) | Kodat värde som anger intygets typ. | 1..1 | Intyg.typ |
| version | String | Version av intygstyp. / Består av två heltal separerade med en punkt. Det första talet anger huvudversion, vilket pekar ut en informationsmodell. Det andra talet anger underversion, vilket pekar ut vilka texter som används inom ramen för huvudversionen. / För mer information om versionshantering av intyg se kapitel 3.6 | 1..1 | Intyg.version |
| signeringsTidpunkt* | TimeStampType | Tidpunkt då det intyget signerades | 0..1 | Intyg.signeringstidpunkt |
| skickatTidpunkt* | TimeStampType | Tidpunkt då intyget skickades till intygstjänsten. | 0..1 | Metadata.skickattidpunkt |
| Patient | Patient (se 7.1.8) | Patientuppgifter. | 1..1 | Patient |
| skapadAv | HoSPersonal (se 7.1.4) | Den Hälso- och sjukvårdspersonal som har utfärdat intyget | 1..1 | HoS-personal, Enhet, Vårdgivare |
| relation* | Relation (se 7.1.9) | Relation mellan intyg. | 0..* | Relation, Intyg.intygs-id |
| status* | IntygsStatus (se 7.1.6) | Alla statusar som är satta för intyget | 0..* | Status, Part |
| Svar | Svar (se 7.1.11) | Svar på intygets frågor. | 0..* | Svar, Delsvar, Fråga.fråge-id, Delfråga.delfråge-id |
| underskrift | UnderskriftType (se 7.2.16) | Digital signatur enligt standarden XMLDSIG. | 0..1 | Intyg.underskrift |

##### Övriga regler

###### mottagare
Fältet används inte.

###### signeringsTidpunkt
Signerade intyg ska alltid inkludera detta element

###### skickatTidpunkt
Intyg som har skickats till Intygstjänsten ska alltid inkludera detta element.

###### relation
Relation avser enbart förhållandet barn  förälder, där det aktuella intyget motsvarar barn och det relaterade intyget förälder. Även om det står kardinalitet 0..* så har det aktuella intyget i praktiken aldrig har mer än 1 relation till en förälder.

###### status
Status anges ej av konsument som skapar intyg. Information om status levereras när intyg hämtas.

#### IntygsStatus

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| part | Part (se 7.2.9) | Den part som denna status gäller för. Ex FK | 1..1 | Part.part |
| status | Statuskod (se 7.2.15) | Status för intyget. Enligt kv_Status | 1..1 | Status.status |
| tidpunkt | TimeStampType | Tidpunkt då statusen sattes | 1..1 | Status.tidpunkt |

#### MeddelandeReferens

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| meddelande-id | string | Identitet på det meddelande som besvaras. Är en GUID. | 1..1 | Meddelande.meddelande-id |
| referens-id | string | Referens till entitet hos mottagande part. Behöver ej vara unikt. Hämtat från meddelandet som besvaras. | 0..1 | Meddelande.referens-id |

#### Patient
Håller fullständiga patientuppgifter.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| person-id | PersonId (se 7.2.10) | Person- eller samordningsnummer | 1 | Patient.person-id |
| fornamn * | string | Patientens förnamn. | 1 | Patient.förnamn |
| efternamn * | string | Patientens efternamn. | 1 | Patient.efternamn |
| mellannamn | string | Patientens mellannamn, t.ex. ett tidigare efternamn (före giftermål) eller, för barn, ett efternamn som bara den ena föräldern bär. | 0..1 | Patient.mellannamn |
| postadress * | string | Patientens adress | 1 | Patient.postadress |
| postnummer * | string | Patientens postnummer | 1 | Patient.postnummer |
| postort * | string | Patientens postort | 1 | Patient.postort |
| kallaAdressuppgifter | KallaAdressuppgifterType (se 7.2.7) | Information om från vilken källa som adressen härstammar. Med adressen avses postadress, postnummer och postort. | 0..1 | Patient.källa adressuppgifter |

##### Övriga regler

###### Fornamn
Fältet får skickas utan informationsinnehåll i intyg som kan utfärdas för sekretessmarkerade patienter. Fältet kommer i en framtida tjänstekontraktsuppdatering att göras icke-obligatoriskt.

###### Efternamn
Fältet får skickas utan informationsinnehåll i intyg som kan utfärdas för sekretessmarkerade patienter. Fältet kommer i en framtida tjänstekontraktsuppdatering att göras icke-obligatoriskt.

###### Postadress
Fältet får skickas utan informationsinnehåll i intyg som kan utfärdas för sekretessmarkerade patienter. Fältet kommer i en framtida tjänstekontraktsuppdatering att göras icke-obligatoriskt.

###### Postnummer
Fältet får skickas utan informationsinnehåll i intyg som kan utfärdas för sekretessmarkerade patienter. Fältet kommer i en framtida tjänstekontraktsuppdatering att göras icke-obligatoriskt.

###### Postort
Fältet får skickas utan informationsinnehåll i intyg som kan utfärdas för sekretessmarkerade patienter. Fältet kommer i en framtida tjänstekontraktsuppdatering att göras icke-obligatoriskt.

#### Relation
Beskriver en relation mellan intyg

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| typ | TypAvRelation (se 7.2.12) | Relationens typ. | 1..1 | Relation.typ |
| intygs-id | IntygId (se 7.2.6) | Identitet på det relaterade intyget. | 1..1 | Intyg.intygs-id |

#### ResultType

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| result.resultCode* | string | Information om anropet gick bra (OK, INFO, ERROR) | 1..1 | Ingår inte i DIM. |
| result.resultText | string | Text som anger extra information om anropets utgång. Om anropet inte har gått bra, kan det finnas mer information kring orsaken i denna text vilket kan underlätta felsökning. | 0..1 | Ingår inte i DIM. |
| result.errorId* | string | Information om typen av fel (VALIDATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR, REVOKED) | 0..1 | Ingår inte i DIM. |

##### Fältregler

###### result.resultCode
ResultCode OK
Transaktionen har utförts enligt uppdraget
ResultCode INFO
Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten bör visa upp.
ResultCode ERROR
Transaktionen har INTE kunnat utföras. Det finns en felkod som klassificerar felet, samt ett meddelande som konsumenten bör visa upp.

###### result.errorId
ErrorId VALIDATION_ERROR
En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej, och omsändning av transaktionen är inte tillämpbart då det kommer ge samma fel igen. En förklarande resultText kan närmare peka på vilken regel som ej efterföljts.
ErrorId APPLICATION_ERROR
Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande i resultText som konsumenten bör visa upp. Då felet är logiskt är omsändning av transaktionen inte tillämpbart.
ErrorId TECHNICAL_ERROR
Transaktionen har INTE kunnat utföras p.g.a ett tekniskt fel. Denna typ av fel kan fås om mottagande system ej svarar (time-out) eller liknande fel. Det finns ett meddelande i resultText som konsumenten bör visa upp. Felet kan vara intermittent, varför omsändning av transaktionen är tillämpbart.
ErrorId REVOKED
Den efterfrågade informationen existerar men har rättats/dragits tillbaka och är ej längre giltig eller tillgänglig. Angiven tjänst utfördes ej, och omsändning av transaktionen är inte tillämpbart.

#### Svar

##### Fältregler
Nedanstående tabell beskriver varje element i fälttypen. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| @id | String | Unikt ID på den fråga som har besvarats. | 1..1 | Fråga.fråge-id |
| instans | Int | Instansnummer. Ska anges för frågor som kan besvaras flera gånger (dvs även när det bara finns en instans).   Utelämnas för frågor som bara kan besvaras en gång. Instansnummer räknas från 1. | 0..1 | Svar.instans |
| delsvar | Delsvar |  | 1..* | Delsvar / Defråga |
| ../@id | String | Unikt ID på delfråga. | 1..1 | Delfråga.delfråge-id |
| ../varde | ANY | Svaret på delfrågan. | 1..* | Delsvar.värde |

#### Vardgivare
Vårdgivare

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| vardgivare-id | HsaId (se 7.2.5) | Hsa-Id för vårdgivare | 1 | Vårdgivare.vårdgivar-id |
| vardgivarnamn | string | Namn på vårdgivare | 1 | Vårdgivare.vårdgivarnamn |

### Domänspecifika komplexa datatyper
Detta kapitel beskriver de komplexa datatyper som har tagits fram specifikt för domänen och som för det mesta utgör restriktioner på komplexa datatyper så som CVType och IIType.

#### Amneskod
Restriktion på datatyp CVType till kodverket Kv Ämne

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| code | string | Kod. | 1..1 | - |
| codeSystem | string | Identifierare av kodsystem. Fixt värde / ”ffa59d8f-8d7e-46ae-ac9e-31804e8e8499”. | 1..1 | - |
| displayName | String | Kodens betydelse i klartext. | 0..1 | - |

#### Arbetsplatskod
Restriktion på datatyp IIType

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| root | string | Fixt värde ”1.2.752.29.4.71”. | 1..1 | - |
| extension | string | Arbetsplatskoden. | 1..1 | - |

#### Befattning
Restriktion på datatyp CVType till HSA Befattning.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| code | string | Kod. | 1..1 | - |
| codeSystem | string | Identifierare av kodsystem. Fixt värde ”1.2.752.129.2.2.1.4”. | 1..1 | - |
| displayName | string | Kodens betydelse i klartext. | 0..1 | - |

#### Handelsekod
Restriktion på datatyp CVType till kodverket Kv Händelse

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| code | string | Kod. | 1..1 | - |
| codeSystem | string | Identifierare av kodsystem. Fixt värde ”dfd7bbad-dbe5-4a2f-ba25-f7b9b2cc6b14”. | 1..1 | - |
| displayName | string | Kodens betydelse i klartext. | 0..1 | - |

#### HsaId
Restriktion på datatyp IIType till HSA-id

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| root | string | Fixt värde ”1.2.752.129.2.1.4.1”. | 1..1 | - |
| extension | string | HSA-id:t. | 1..1 | - |

#### IntygId

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| root | string | Attributet har ingen betydelse för intygets id. Sätts till HSA-id för den enhet som hanterat intyget. | 1..1 | - |
| extension | string | Unikt id för intyget. | 1..1 | - |

#### KallaAdressuppgifterType
Restriktion på datatyp CVType till kodverket Kv Källa

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| code | string | Kod. | 1..1 | - |
| codeSystem | string | Identifierare av kodsystem. Fixt värde / ”4ade8de2-effe-41d0-b177-fedc820e69fa”. | 1..1 | - |
| displayName | String | Kodens betydelse i klartext. | 0..1 | - |

#### LegitimeratYrkeType
Restriktion på datatyp CVType till HSA Legitimerad yrkesgrupp

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| code | string | Kod. | 1..1 | - |
| codeSystem | string | Identifierare av kodsystem. Fixt värde / ”1.2.752.29.23.1.6”. | 1..1 | - |
| displayName | String | Kodens betydelse i klartext. | 0..1 | - |

#### Part
Restriktion på datatyp CVType till kodverket Kv Part

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| code | string | Kod. | 1..1 | - |
| codeSystem | string | Identifierare av kodsystem.  Fixt värde ”769bb12b-bd9f-4203-a5cd-fd14f2eb3b80”. | 1..1 | - |
| displayName | String | Kodens betydelse i klartext. | 0..1 | - |

#### PersonId
Restriktion på datatyp IIType till personnummer eller samordningsnummer

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| root | string | Fixed värde ”1.2.752.129.2.1.3.1” (personnummer) alt. ” 1.2.752.129.2.1.3.3” (samordningsnummer). | 1..1 | - |
| extension | string | Personens identitet.  Anges i formatet 12 siffror, dvs för personnummer YYYYMMDDNNNN. | 1..1 | - |

#### TypAvIntyg

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| code | string | Kod som anger vilken typ av intyg som avses. | 1..1 | - |
| codeSystem | string | Unik identifierare av kodsystemet. Olika kodsystem kan förekomma. | 1..1 | - |
| displayName | string | Typ av intyg i klartext. | 0..1 | - |

#### TypAvRelation
Restriktion på datatyp CVType till kodverket Kv Relation

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| code | string | Kod som anger vilken typ av intyg som avses. | 1..1 | - |
| codeSystem | string | Unik identifierare av kodsystemet.  Fixt värde ”c2362fcd-eda0-4f9a-bd13-b3bbaf7f2146”. | 1..1 | - |
| displayName | string | Typ av relation i klartext. | 0..1 | - |

#### SignatureType
Restriktion enligt standarden XMLDSIG (https://www.w3.org/TR/2002/REC-xmldsig-core-20020212/xmldsig-core-schema.xsd#). I tabellen nedan beskrivs bara de attribut från XMLDSIG som ses som ett minimum för användning av underskrifter i tjänstedomänen.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| SignedInfo | SignedInfoType | - | 1 | - |
| ../CanonicalizationMethod | CanonicalizationMethodType | - | 1 | - |
| ../../Algorithm | anyURI | Anger den algoritm som används för att skapa en kanoniserad version av intyget att använda för framtagning av digesten. Alltid: http://www.w3.org/2001/10/xml-exc-c14n#WithComments | 1 | - |
| ../SignatureMethod | SignatureMethodType | - | 1 | - |
| ../../Algorithm | anyURI | Anger den algoritm som används för att skapa underskriften av intyget. Alltid: http://www.w3.org/2001/04/xmldsig-more#rsa-sha256 | 1 | - |
| ../Reference | ReferenceType | - | 0..* | - |
| ../../Transforms | TransformsType | - | 0..1 | - |
| ../../../Transform | TransformType | - | 1..* | - |
| ../../../../Algorithm | anyURI | Anger den algoritm som används för att transformera intyget. Alltid: http://www.w3.org/2000/09/xmldsig#enveloped-signature | 1 | - |
| ../../DigestMethod | DigestMethodType | - | 1 | - |
| ../../../Algorithm | anyURI | Anger den algoritm som används för att skapa en digest av intyget. Alltid: http://www.w3.org/2001/04/xmlenc#sha256 | 1 | - |
| ../../DigestValue | DigestValueType | Värdet för digesten av intyget i base64Binary. | 1 | - |
| SignatureValue | SignatureValueType | Värdet av underskriften i base64Binary. | 1 | - |
| KeyInfo | KeyInfoType | - | 0..1 | - |
| ../X509Data | X509DataType | - | 1 | - |
| ../../X509Certificate |  | Certifikatet för den krypteringsnyckel som använts för att skapa underskriften i base64Binary. | 1 | - |

#### Specialistkompetens
Kod och klartext för specialistkompetens. Informationen inhämtas från HSA. HSA:s tjänstekontrakt inkluderar inte kodsystem, därmed kan det inte heller inkluderas i denna domäns tjänstekontrakt.

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| code* | string | Kod. | 1..1 | - |
| displayName | string | Kodens betydelse i klartext. | 0..1 | - |

##### Fältregler

###### code
Om det inte finns en entydig mappning mellan kod och klartext ska endast klartexten nyttjas. Värdet på code anges då som ”N/A”.

#### Statuskod
Restriktion på datatyp CVType till kodverket Kv Status

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| code | string | Kod. | 1..1 | - |
| codeSystem | string | Identifierare av kodsystem. Fixt värde / ”9871cd17-8755-4ed9-b894-ff3729e775a4”. | 1..1 | - |
| displayName | String | Kodens betydelse i klartext | 0..1 | - |

#### UnderskriftType

| Namn | Typ | Beskrivning | Kardinalitet | Mappning DIM |
| :--- | :--- | :--- | :--- | :--- |
| Signature | SignatureType (se 7.2.13) | Behållare | 1..1 | - |

### Övriga datatyper
Detta kapitel beskriver defacto datatyper som används inom domänen samt primitiva datatyper som har tagits fram specifikt för domänen.

| XMLdatatyp | Beskrivning |
| :--- | :--- |
| CVType | Ett kodat värde som hör till ett specifikt kodsystem |
| IIType | Universellt unik identifierare |
| DateType | Datum angivet som YYYY-MM-DD / Observera att formatet YYYY-MM-DD skiljer sig något från formatet som anges på https://bitbucket.org/rivta-domains/best-practice/wiki/Home. YYYY-MM-DD är XML-standard och därför används det. |
| TimeStampType | Tidpunkt angiven som YYYY-MM-DDThh:mm:ss / Tidszon anges inte. All information om datum och tidpunkter ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. / Observera att formatet YYYY-MM-DDThh:mm:ss skiljer sig något från formatet som anges på https://bitbucket.org/rivta-domains/best-practice/wiki/Home. YYYY-MM-DDThh:mm:ss är XML-standard och därför används det. |
| TimeStampMedMillisekunder | Tidpunkt angiven som YYYY-MM-DDThh:mm:ss.nnn / Tidszon anges inte. All information om datum och tidpunkter ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. / Observera att denna datatyp inte kommer från ISO 21090 utan är skapad specifikt för domänen. |
| PartialDateType | Datum på variabelt format YYYY eller YYYY-MM eller YYYY-MM-DD |
| PQType | Typ som baseras på datatypen PQ enligt HL7, och som beskriver överföring av mätbara värden. / Består av ett värde och en enhet. / Tillåtna värden för enhet bestäms av http://unitsofmeasure.org/ucum.html. |
| PQIntervallType | Typ som baseras på datatypen IVL_PQ enligt HL7, och som beskriver överföring av intervaller av mätbara värden. Ett intervall som är öppet i ena änden kan anges. / Består av ett lägsta värde, ett högsta värde och en enhet. / Tillåtna värden för enhet  bestäms av http://unitsofmeasure.org/ucum.html. |
| DatePeriodType | Anger ett intervall av DateType. Har ett värde för start och ett för slut. |
| TimePeriodType | Anger ett intervall av TimeStampType. Har ett värde för start och ett för slut. |
