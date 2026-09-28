Utomlänsfakturering financial:billing:claim

![img_004.png](images/img_004.png)

![img_002.png](images/img_002.png)
2025-10-13
Innehållsförteckning
1	Inledning	11
1.1	Svenskt namn	11
2	Versionsinformation	12
2.1	Version 1.1	12
2.1.1	Oförändrade tjänstekontrakt	12
2.1.2	Nya tjänstekontrakt	12
2.1.3	Utgångna tjänstekontrakt	12
2.2	Version tidigare	12
3	Tjänstedomänens arkitektur	13
3.1	Flöden	13
3.1.1	Flöde 1 – skapa och skicka fakturaunderlag	13
3.1.2	Flöde 2 - Kreditering vid felaktig faktura eller fakturaunderlag	15
3.1.3	Obligatoriska kontrakt	17
3.2	Adressering	18
3.3	Aggregering och engagemangsindex	18
4	Tjänstedomänens krav och regler	18
4.1	Informationssäkerhet och juridik	18
4.2	Icke funktionella krav	18
4.2.1	Omsändning när tjänsteproducent är otillgänglig	18
4.2.2	SLA krav	19
4.2.3	Övriga krav	19
4.3	Felhantering	20
4.3.1	Krav på en tjänsteproducent	20
4.3.2	Krav på en tjänstekonsument	21
5	Tjänstedomänens meddelandemodeller	21
5.1	V-MIM	22
5.2	Formatregler	28
5.2.1	Format för Datum	28
5.2.2	Format för tid	28
5.2.3	Tidszon för tidpunkter	28
5.2.4	Format för patient id	28
5.2.5	Format för organisationsnummer	29
5.2.6	Format för GLN-nummer	29
5.2.7	Format för Fakturaunderlag vård, id	29
5.2.8	Format för belopp	29
6	Tjänstekontrakt	30
6.1	ProcessClaimSpecification	30
6.1.1	Version	30
6.1.2	Fältregler	30
6.1.3	Övriga regler	61
6.1.4	Annan information om kontraktet	65
Revisionshistorik

| Version | Datum | Författare | Kommentar |
| :--- | :--- | :--- | :--- |
| 1.0_RC1 | 2016-09-19 | Malin Ljunggren, / Khaled Daham | Första version |
| 1.0_RC1 | 2016-09-21 | Khaled Daham | Fältregeltabell |
| 1.0_RC1 | 2016-09-27 | Malin Ljunggren | Lagt till flöde för kreditering. / Fyllt på med beskrivningar i fältregeltabell. |
| 1.0_RC1 | 2016-09-28 | Khaled Daham | Ändrat namn på inOutPatientCare till careType och typ till CVType som bär koder ifrån HSA. |
| 1.0_RC1 | 2016-09-28 | Khaled Daham | Tagit bort profileId och customizationId då de var UBL-specifika och inte behövs längre. |
| 1.0_RC1 | 2016-10-04 | Khaled Daham | Korrigerat namn och kardinalitet på flera fält / Korrigerat datatyp på extendedAllowanceCareTime och extendedAllowanceCost / Tagit bort fälten SFTIVersionId, externalCause, DRGProductName / Lagt till formateringsregler för datum och tid => kap 5.2 / Lagt till regel för omsändning som gäller för tjänstekonsumenter => kap 4.2.1 / Alla exempelfiler under docs/work_material/examples är uppdaterade / Schematron-rapport => test-suite/ProcessClaimSpecification-schematron.xslt / Lagt till generella regler för felhantering => kap 4.3 |
| 1.0_RC1 | 2016-10-04 | Malin Ljunggren | Lagt till referens till handledningsdokumentet. / Lagt till formatregler för patient id / Korrigerat språk för arbetsflöden, adressering, informationsflöde. / Lagt till information om arkivering. / Korrigerat sekvensdiagrammen (tjänsteproducent tjänstekonsument / Lagt till obligatoriskt på organisationsnummer, GLN-nummer frivilligt. / Uppdaterat MIM. / Ändrat namn på öppen slutenvård till vård och omsorsform samt ändrat kardinalitet till 0..1 (från 1..1) / Offentlig vård: string istället för boolean. Nybesök/återbesök ändrat namn till typ av besök. |
| 1.0_RC1 | 2016-10-06 | Malin Ljunggren | Korrigerat felaktig ändring av kardinalitet på vård- och omsorgsform (skall vara 1..1). MIM och fältregel. / Lagt till schematronregler. / Lagt till de kompletterade koderna för yrkeskod: Undersköterska, Teampersonal inkl. läkar-medverkan, Teampersonal utan läkarmedverkan, Övrig personal. / Lagt till avvikelsehantering (flöde kreditering) enligt handledningsdokumentet. |
| 1.0_RC1 | 2016-10-13 | Malin Ljunggren | Flyttat in fakturaperiod som attribut i modellen då start- och slutdatum ingår i datatypen för fakturaperiod (DT). |
| 1.0_RC1 | 2016-10-17 | Malin Ljunggren | Uppdaterad modell (med gråmarkerad produktkod namn (DRG-kostnad)). / Lagt till texterna obligatoriskt, obligatoriskt under vissa förutsättningar, frivilligt, obligatoriskt senast 20xx-01, obligatoriskt under vissa förutsättningar senast 20xx-01. / Lagt till text till fältet referenceToInvocie / Referens till faktura och referenceToProcessClaimSpecificationId /Referens till fakturaunderlag vård id. / Uppdaterat avsnitt 5.2 Formatregler (samordningsnummer, GLN-nummer, organisationsnummer, fakturaunderlag vård, id) / Kort beskrivning av tjänstekontraktet i avsnitt 6.1 / Mindre rättningar i avsnitt 6.1.3 (Övriga regler) |
| 1.0_RC1 | 2016-10-19 | Khaled Daham | Korrigerat publicCare där det felaktigt stod att det var en string, det är en boolean i schemat och sätts till true om offentlig vård. |
| 1.0_RC1 | 2016-10-20 | Malin Ljunggren | Tagit bort schematronregel för PatientId (behövs ej då patientid är ett attribut med olika identifierare). Förtydligat några Övriga regler. / Tagit bort Övrig regel R6 (dubblett) / Ändrat healthcareUnit till II (ej CV) i fältregeltabellen. / Korrigerat en skrivning i flödet (hämta fakturaunderlag). / Lagt till för läns- och kommunkod: För asylsökande och personer med skyddad identitet sätts ingen codesystem . / Uppdaterat information om formatregler för reservnummer. |
| 1.0_RC1 | 2016-10-20 | Khaled Daham | Taggad version |
| 1.0_RC2 | 2017-04-04 / (ett senare datum än flera 1.0_RC3 pga att korrigerade test-filer behövde läggas in i en tidigare RC) | Khaled Daham | Uppdaterat schematronvalidering test-suite /ProcessClaimSpecification/constraints.xml / Uppdaterat test-filer som innehöll fel. / Korrigerat feltexter. / Korrigerat namn i övriga regler så de stämmer överens med xml-schemat. |
| 1.0_RC3 | 2016-10-21 | Malin Ljunggren | Uppdaterat DIM:en (fel datatyp på betalningsförbindelse ersättningstyp) / Ändrat några fält med texterna ”obligatorisk, frivillig, ..under vissa förutsättningar”. Ingen ändring av kardinalitet, endast felaktiga texter. / Lagt till en referens på de fält som har definierade schematronregler. / Tydliggjort vissa fält som är angivna som ”Obligatoriska under vissa förutsättningar”. |
| 1.0_Rc3 | 2016-10-28 | Malin Ljunggren | Uppdaterat formatet för personnummer och samordningsnummer i avsnitt Formatregler (skall ej innehålla -). / Ändrat ”..vissa förutsättningar..” till ”..nämnda förutsättningar..”. / Kompletterat beskrivning för: Ytterfallsersättning vårdtid, Ytterfallsersättning kostnad, Typ av patient specifik åtgärd, Patientspecifik åtgärd, pris, Fakturaperiod, DRG produkt, Patientspecifik åtgärd namn, Patientspecifik åtgärd, totalbelopp, fälten huvuddiagnos och diagnoskod. / Ändrat titel på dokumentet till det svenska domännamnet (kortnamn). |
| 1.0_RC3 | 2016-11-03 | Khaled Daham | Uppdaterat första sekvensdiagrammet med beskrivning samt icke funktionella krav och felhantering. Se kap 3.1.1.2, 4.2.1 och 4.3 |
| 1.0_RC3 | 2016-11-04 | Khaled Daham | Korrigerat fel kardinaliteter i fältreglerna, uppdaterat beskrivning för DRGPrice, rättat färgkoder i fältregeltabellen. |
| 1.0_RC3 | 2016-11-22 | Malin Ljunggren | MIM (korrigerat enligt fältregler och schema) / flyttat in identiet (II) i leverantör och köpare (ej separat identitetsklass). / ’orsak till kreditering’, datatyp ST 0..* / Fakturaunderlag vård_rad (ej 1..*) 1..1 / Utskrivningsdatum från vård (ej 0..1) / Yrkeskod: ST (ej CV) / Ändrat datatypen för alla  belopp från decimal till amount (amount består av belopp och valuta). / Rättat attributnamn i mappningstabell (kap.5) |
| 1.0_RC3 | 2016-12-16 | Malin Ljunggren | Ändrat samtliga ”Vissa förutsättningar” till ”Nämnda förutsättning” och lagt till några beskrivningar på förutsättningar. / Ändrat så att det enhetligt står ”Skall bli” innan ”obligatoriskt fält senast..” överallt. |
| 1.0_RC3 | 2017-01-16 | Malin Ljunggren | Ändrat förkortning på schematronregler till ÖR istället för R, då förkortningen på referenser var samma. / Ändrat OID på organisationsnummer till 1.3.7. / InvoiceId ändrat till string (ej II). / Ändrat LMA kortnummer och EU kortnummer till string i tabell (från CV). / Ospecificerat (under vårdkategori) 0..*, (ej 0..1). |
| 1.0_RC3 | 2017-01-20 | Malin Ljunggren | Uppdaterat MIM (yrkeskod: ST, patientavgift nedsatt, kategori: ST, betalningsförbindelse ersättningstyp: ST) |
| 1.0_RC3 | 2017-02-13 | Khaled Daham | Elementet extendedAllowanceCareTime var felaktigt benämnd extendedAllowanceCost / invoiceId har bytt typ från IIType till string / LMACardNumber har bytt typ ifrån CVType till string / EUCardNumber har bytt typ ifrån CVType till string / DRGPrice har bytt typ ifrån CVType till AmountType / Uppdaterat tabell för SLA / Uppdaterat test-sviter enligt ovan. |
| 1.0_RC3 | 2017-02-16 | Khaled Daham | Rättat felaktig kardinalitet för / extendedAllowanceCost/amount och / extendedAllowanceCost / /currency ifrån 0..1 till 1..1, ingen ändring i schemat. |
| 1.0_RC3 | 2017-02-17 | Malin Ljunggren | Tagit bort ”–” för formatet på organisationsnummer. / Uppdaterat några RIM-mappningar. / Ändrat skrivningar med ’skall’ till ’ska’. / Lagt till koder för attributet ”Orsak till kreditering”. / Bifogat lista med koder för Medicinskt verksamhetsområde. / Lagt till skrivning för fältet ”Post id vårdinsats” (gällande kreditering). / Lagt till saknade ord i attributet ”Ytterfallsersättning, vårdtid”. |
| 1.0_RC3 | 2017-02-23 | Malin Ljunggren | Uppdaterat sekvensdiagrammen. / Ändrat felaktig skrivning i övrig regel 22 och 23 (till professionCodeForHealthcare istället för businessClassificationCode). / Uppdaterat sidhuvud (utomregional  utomläns) |
| 1.0_RC3 | 2017-03-07 | Malin Ljunggren | Lagt till att organisationsnummer ska anges som logisk adress (avsnitt Adressering). / Tagit bort information under avsnittet Informationssäkerhet och juridik och hänvisar till informationsspecifikationen istället. / Lagt till referens R7 (informationsspecifikation). |
| 1.0_RC3 | 2017-03-10 | Malin Ljunggren | Uppdaterat versionsnumret på första sidan. |
| 1.0_RC3 | 2017-03-20 | Malin Ljunggren | Uppdaterat ett fåtal utomregional till utomläns (förutom hänvisning till bifogade dokument). / Lagt till 6 mån (SLA-krav-aktualitet). / Förtydligat skrivning i arbetsflöde om referens från faktura till fakturaunderlag. / Lagt till skrivning kring reservnummer. / Lagt till nationell reservnummer oid + exempel på lokal reservnummer oid. / Tagit bort skrivningar om skyddade personer (ska ej faktureras). |
| 1.0_RC3 | 2017-04-20 | Malin Ljunggren | (ändrat alla RC2 till RC3 i versionshistoriken) / Lagt till kod 05 – Person över 85 år till attributet Patientavgift nedsatt kategori. / Uppdaterat exempel för samordningsnummer (format): inkl. sekel. / Ändrat ”vårdtillfälle” till ”vårdkontakt” då både öppenvård och slutenvård avses. / Uppdaterat koderna för ”orsak till kreditering”. / Uppdaterat definitioner för ”Planerad vård”. |
| 1.0_RC3 | 2017-04-24 | Malin Ljunggren | Fälten valuta: lagt till att det alltid ska vara SEK. / Uppdaterat beskrivning för fältet namn (kontaktuppgift). |
| 1.0_RC3 | 2017-05-04 | Malin Ljunggren | Uppdaterat beskrivning för åtgärdskod: ska ej lämnas för psykiatrisk vård. / Uppdaterat SLA krav / Lagt till schematronregler (ÖR34-ÖR37) / Lagt till root för listningslandsting. / Uppdaterat övrig regel 3. |
| 1.0_RC3 | 2017-05-05 | Khaled Daham | Förtydligat beskrivningar / Lagt till regel 37 som validerar id / Delade på regel 19 så att det blev två separata regler. |
| 1.0_RC3 | 2017-05-18 | Malin Ljunggren | Förtydligat text för attributet Offentlig vård + rättar MIM där den hade typen string. / Lagt till format för LMA kortnummer+ EU-kortets nummer m.fl attribut. / Lagt till fotnot på fälten som har nya schematronregler. / Lokala reservnummer: lagt till att organisationsnummer anges som oid om det saknas en lokal reservnummer oid. |
| 1.0_RC3 | 2017-05-22 | Malin Ljunggren | Lagt till ett saknat värde (TO) i övriga regler 22. |
| 1.0_RC3 | 2017-06-07 | Malin Ljunggren | Tagit bort patientens namn och adress (mim, mappning, fältregler) / Uppdaterat flöden (med ’lanes’). / Lagt till formatregel för belopp (avsnitt 5.2). Lagt till referens till riksavtalet. Lagt till ordlista. |
| 1.0_RC3 | 2017-06-08 | Malin Ljunggren | Lagt till exempel på felmeddelanden. / Korrigerat text för diagnos. |
| 1.0_RC4 | 2017-06-20 | Malin Ljunggren | Uppdaterat ordlista. / Lagt till referens till RIV Tekniska anvisningar i avsnitten krav för producent och konsument. |
| 1.0_RC4 | 2017-06-30 | Khaled Daham | Uppdaterat datum och version. |
| 1.0_RC5 | 2017-10-04 | Khaled Daham | Förtydligat beskrivning för kommunkod och länskod / Förtydligat beskrivning för nyttolast SLA. / Valideringsreglerna för grossAmount och netAmount tar numera hänsyn till decimaler. / Tre nya regler för validering av CVType, R39, R40, R41 |
| 1.0_RC5 | 2017-10-05 | Khaled Daham | Förtydligat att icke obligatoriska element som inte finns med i nyttolasten inte utvärderas av schematron (6.1.3) / Tagit bort regel 32 då den täcks in av regel 39 |
| 1.0 | 2017-10-05 | Khaled Daham | Förtydligat SLA-regler (tagit bort krav på aktualitet och lagt kravet på att inte skicka äldre än 6mån under övriga krav). / Rättat till stavfel på invoice i fältregeltabellen. / Uppdaterat beskrivning för datumperioder. / Uppdaterat och förtydligat felmeddelanden i constraints.xml. |
| 1.0.1 | 2017-11-07 | Khaled Daham | Förtydligande av R39 i relation till hur DRGCode skall användas (endast originalText) och skapade en separat regel (R42) för det. / Bug-fix av regel med id R31 i constraints.xml / Bug-fix av testfall 12 i testsviten (hör ihop med R31) |
| 1.0.1 | 2018-03-09 | Khaled Daham | Fel typ för DRGPrice i fältregeltabellen, rättad, se ärende https://bitbucket.org/rivta-domains/riv.financial.billing.claim/issues/9/fel-datatyp-p-drgprice |
| 1.0.2 | 2018-09-03 | Khaled Daham | Uppdaterade regler / R3, R31 / Nya regler / R43, R44, R45, R46, R47, R48, R49 / Ärenden som stängts / https://bitbucket.org/rivta-domains/riv.financial.billing.claim/issues/8/schematronvalideringen-delfakturering-utan / https://bitbucket.org/rivta-domains/riv.financial.billing.claim/issues/10/om-ej-drg-fakturering-ska-artikel-och / https://bitbucket.org/rivta-domains/riv.financial.billing.claim/issues/11/kontroll-mot-socialstyrelsens-register / https://bitbucket.org/rivta-domains/riv.financial.billing.claim/issues/14/schematron-ndring |
| 1.0.2 | 2018-10-12 | Khaled Daham | Bugfix av schematron-regel enligt ärende https://bitbucket.org/rivta-domains/riv.financial.billing.claim/issues/15/r23-yrkeskod-i-ppenv-rd-f-ngar-inte-fel-om / Uppdaterat några beskrivningar i fältregeltabellen. |
| 1.0.3 | 2018-11-07 | Khaled Daham | Bugrättat R49 i constraints.xml, den tillätt inte koden 003. |
| 1.0.4 | 2018-12-05 | Khaled Daham | Ett testfall har korrigerats. / Ett negativt testfall (2.9) har lagts till som testar att man får rätt felmeddelande om man skickar in felaktig mvo-kod. / Inga andra ändringar äro gjorda. |
| 1.0.5 | 2022-02-14 | Jan Söderman | Uppdaterat version, inget nytt. |
| 1.0.6 | 2022-11-18 | Bente Sjöberg-Silfverling | Uppdaterat version och datum, inget nytt. |
| 1.0.7 | 2023-06-12 | Bente Sjöberg-Silfverling, Tom Lundholm | Uppdaterat version, ändringar för ny yrkeskod HK, avtalspost i Riksavtalet ändrad beskrivning och ny schematronregel ÖR50, inCare (antal vårddagar) ändrad beskrivning och ny schematronregel ÖR51, verksamhetskod ny beskrivning, borttag av text om att inte skicka underlag äldre än 6 månader under Övriga krav. Fixat trasiga länkar under Referenser. |
| 1.0.7 | 2023-08-01 | Bente Sjöberg-Silfverling | Flyttat till ny dokumentmall |
| 1.1_RC1 | 2025-07-17 | Bente Sjöberg-Silfverling | Uppdaterat version, länkar och ändrat landsting till region i dokumentet. 
Ändrat ’Referens till fakturaunderlag vård id’ till obligatorisk med ny schematronregel ÖR52. 
Ändrat schematronregel ÖR5 så att 'Patient vårdkontakt, fakturerat belopp netto' och 'Fakturabelopp' kan skiljas åt med upp till en krona ifall fakturabelopp avrundats till heltal. 
Ändrat kardinalitet för fältet ’unspecified’ under ’paymentCommitment’ till 0..*. 
Uppdaterat tillåtna värden för fältet ’Avtalspost i Riksavtalet’ efter kapiteländring i nya Riksavtalet.
Utökat beskrivning för ’Vårdenhets id’ att även innefatta medicinskt ansvarig vårdenhet utöver vårdenhet där vård utförts.
Uppdaterat beskrivning för ’Betalningsförbindelsetyp avtal’, ’Betalningsförbindelsetyp kapitel’, ’Betalningsförbindelsetyp id’, ’DRG produktkod’, ’Offentlig vård’, ’Remiss-id’, ’Referens till faktura’ och ’Vårdnivå’. |
| 1.1 | 2025-10-13 | Bente Sjöberg-Silfverling | Mindre ändringar efter kvalitetsgranskning. |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Underlag för Utomlänsfakturering | Obligatoriskt | https://rivta.se/tkview/#/domain/financial:billing:claim |
| R2 | RIVTA flera dokument / T-boken | Finns på Webben | http://rivta.se/ / https://inera.atlassian.net/wiki/spaces/RTA/pages/3632866/Referensarkitektur+f+r+v+rd+och+omsorg+-+T-boken+REV+D |
| R3 | Förstudierapport kommunikationslösning utomregional fakturering | Förstudie gjord av Inera | Kontakta tjänsteansvarig på Inera |
| R4 | Fakturering av utomregional vård – Informationssäkerhet | Underlag för informationssäkerhet, framtagen under förstudien | Kontakta tjänsteansvarig på Inera |
| R5 | PM Uppgiftsutlämnande vid landstings fakturering utomlänsvård | Juridisk utredning gjord under förstudien | Kontakta tjänsteansvarig på Inera |
| R6 | Handledning | Stöddokument | https://inera.atlassian.net/wiki/spaces/OIU/pages/4129784030/Handledning+f+r+utoml+nsfakturering |
| R7 | IS_financial_billing_claim.docx | Informationsspecifikation Utomläns-fakturering | https://rivta.se/tkview/#/domain/financial:billing:claim |
| R8 | IS_strategicresourcemanagement.persons.person | Informations-specifikation Personuppgifter | https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person |
| R9 | Riksavtal för utomlänsvård och kommentarer | Version från och med september 2025. | https://skr.se/skr/halsasjukvard/ekonomiavgifter/utomlansvardriksavtal.943.html |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |
|  |  |  |
Ordlista

| Ord | Betydelse | Kommentar |
| :--- | :--- | :--- |
| Hemregion / Synonymer: 
Köpande region, köpare | Den region där patienten vid vårdtillfällets inledning är folkbokförd. Ett vårdtillfälle i sluten vård avgränsas av in- och utskrivningen vid ett sjukhus. | Definition enligt Riksavtal för utomlänsvård och kommentarer [R9] |
| Vårdregion / Synonymer: 
Säljande region, säljare, leverantör | Den region där en utomlänspatient undersöks eller behandlas. | Definition enligt Riksavtal för utomlänsvård och kommentarer [R9] |
| Köpande region / Köpare / Synonym: 
Hemregion | Region som ska betala för vården då en patient från regionen har vårdats hos leverantören. | I dokumentet används köpande region, köpare och hemregion synonymt. |
| Säljande region / Säljare / Synonymer: Vårdregion, Leverantör | Region som utfört vårdinsats på en utomlänspatient och som därmed har rätt att fakturera patientens hemregion. | I dokumentet används säljande region, säljare, vårdregion och leverantör synonymt. |
| Leverantör / Synonymer: Vårdregion, Säljande region, Säljare | Se säljande region / säljare | I dokumentet används termen leverantör i informationsmodellen samt i klass- och attributbeskrivningar, då detta är en term som används i beskrivningar av standardiserade meddelande för e-handel (termen kommer från SFTI - Single Face To Industry). |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
financial: billing: claim
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
operativt processtöd:samordna resurser över verksamhetsstrukturer:utomlänsfakturering
Utomlänsfakturering

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen financial: billing: claim. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.1

#### Oförändrade tjänstekontrakt
Samtliga tjänstekontrakt inom domänen är förändrade, se nedan.

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
Inga nya tjänstekontrakt i denna version

##### Förändrade tjänstekontrakt
Tjänstekontraktet ProcessClaimSpecification är förändrat i denna version.
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| ProcessClaimSpecification | 1.0.7 | 1.1 | Ej kompatibel |
|  | 1.1 | 1.0.7 | Ej kompatibel |

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
Föregående version är 1.0.7

## Tjänstedomänens arkitektur

### Flöden
Följande flöden finns definierade för denna tjänstedomän:
1.  Skapa och skicka fakturaunderlag
2.  Kreditering vid felaktig faktura eller fakturaunderlag
Som underlag för dessa flöden finns ett handledningsdokument framtaget [R6].

#### Flöde 1 – skapa och skicka fakturaunderlag
Då en patient får vård utanför sin hemregion faktureras hemregionen, enligt fastställda prislistor, för utgifter som uppkommit i samband med vården. En faktura skapas av vårdregionens ekonomisystem, medan fakturaunderlaget (som fakturan refererar till) skapas vid sidan om, i en separat databas/system. Både faktura och fakturaunderlag skickas till hemregionen. I flödet används benämningen säljande region som vårdregion och köpande region som hemregion.
Relevant flöde för denna tjänstekontraktsbeskrivning är det som är markerat med mörkare orange färg i flödesdiagrammet. Det ljusare flödet (skapa och skicka faktura) sker parallellt och visas för en ökad förståelse, men hanteras vid sidan om och inte av tjänstekontrakt inom denna domän.

![img_005.jpeg](images/img_005.jpeg)

##### Arbetsflöde

| Flöde | Beskrivning |
| :--- | :--- |
| Information om patientens uppgifter gällande utomlänsvård hämtas | I journalsystemet finns uppgifter om patienten och dennes besök i öppen eller slutenvården. Uppgifter som finns registrerade där används för att skapa ett fakturaunderlag. |
| Fakturaunderlag skapas och sparas | Baserat på uppgifterna från journalsystemet + övriga relevanta uppgifter (se informationsmodell) skapas ett fakturaunderlag av säljande region (vårdregion). |
| Fakturaunderlag skickas | Då fakturaunderlaget är skapat och sparat, kan det skickas till köpande region (patientens hemregion). |
| Fakturaunderlag tas emot | Köpande region/ hemregionen tar emot fakturaunderlaget. |
| Faktura matchas med fakturaunderlag | Köpande region / hemregion, som tar emot både faktura och fakturaunderlag, gör en matchning mellan dessa.  Matchningen görs med det fakturaunderlags-id som finns i fakturan. |

###### Roller

| Roll | Beskrivning |
| :--- | :--- |
| Journalsystem | Det system som används för att hämta uppgifter om en patients vård i vårdregionen (säljande region). |
| Säljande regions databas/system | Den databas eller det system som används för att skapa ett fakturaunderlag hos säljande region / vårdregion. |
| Köpande regions databas/system | Den databas eller det system som används för att spara mottaget fakturaunderlag hos köpande region /hemregion. Om något system inte finns, sker hanteringen manuellt. |

##### Sekvensdiagram
Då fakturaunderlag har skapats och sparats i säljande regions databas/system (tjänstekonsument nedan) skickas det till köpande regions databas/system (tjänsteproducent nedan) via den nationella tjänsteplattformen.

![Sekvensdiagram där](images/img_003.png)
Sekvensdiagram där
En regions tjänstekonsument skickar fakturaunderlag till en annan regions tjänsteproducent adresserad [logicalAddress] enligt kap 3.2
Om svar är [OK] så behöver inget mer göras av tjänstekonsument, om svar innehåller ett logiskt fel [ERROR] se krav på felhantering i kap 4.3
Vid händelse av SoapException eller Timeout ska reglerna för omsändning följas, se kap 4.2.1
Om svar är [OK] så behöver inget mer göras av tjänstekonsument, om svar innehåller ett logiskt fel [ERROR] se krav på felhantering i kap 4.3

#### Flöde 2 - Kreditering vid felaktig faktura eller fakturaunderlag
Då eventuella felaktigheter i fakturan eller fakturaunderlaget upptäcks, ska en kreditering göras av faktura och fakturaunderlag.
Följande avvikelser/felaktigheter kan inträffa [R6]:
Säljare har skickat felaktigt fakturaunderlag som stannat vid mottagningen (i tjänsteproducent) 
I de fall ett fakturaunderlag stoppas vid mottagningen efter schema- respektive schematronvalidering kommer säljaren att få ett svar som beskriver de fel som upptäckts.
Köparen har i detta läge inte läst in fakturaunderlaget i sitt system. Säljaren ska rätta felen och sända ett nytt fakturaunderlag. Säljaren ska även kontrollera att fakturan överensstämmer med det nya fakturaunderlaget i de fall fakturan ännu inte skickats (rekommendation är att sända faktura efter det att man fått ett OK svar) och vid behov göra rättelser.
Om säljaren redan skickat en faktura för ett fakturaunderlag som stoppats ska säljaren skicka en kreditfaktura utan fakturaunderlag.
Om fakturaunderlaget är OK sänds detta svar i retur till säljaren som då sänder aktuell faktura.
Säljare har skickat felaktigt fakturaunderlag men korrekt faktura
I de fall en säljare upptäcker att de har skapat ett felaktigt fakturaunderlag ska kreditering ske via kreditfaktura och ett digitalt kreditfakturaunderlag. Detta gäller även om fakturan är korrekt. Därefter skickas ny debetfaktura inkl. nytt fakturaunderlag. Undantag från denna regel är när uppgifterna som är felaktiga inte är av obligatorisk karaktär. Kontakt ska tas mellan säljare och köpare vid dessa tillfällen för bästa hantering. En utgångspunkt är att köparen ska kunna få faktura och underlag som säkerställer att korrekt betalning kan ske.
Säljare har skickat felaktigt fakturaunderlag och faktura med ett flertal fel
I de fallen både filen med fakturaunderlaget och fakturan innehåller ett flertal fel så ska en ny fil med fakturaunderlaget med ny identitet skapas tillsammans med en ny faktura. Tidigare utskickad faktura ska krediteras och ett fakturaunderlag ska skapas till krediteringen. Kontakt ska tas mellan säljare och köpare vid dessa tillfällen för bästa hantering. En utgångspunkt är att köparen ska kunna få faktura och underlag som säkerställer att korrekt betalning kan ske.
Säljare har skickat felaktigt fakturaunderlag och faktura med ett mindre antal fel
Om det endast är en mindre mängd fel i en fil med fakturaunderlaget ska kreditering ske av dessa uppgifter via att kreditfaktura skickas tillsammans med ett digitalt fakturaunderlag för kreditfakturan. Det ska finnas en referens till den felaktigt debiterade vårdkontakten och på vilken faktura/fakturaunderlag som denna har varit med på. Det kan även bli aktuellt att omfakturera dessa vårdkontakter på ny debetfaktura med ny fil med fakturaunderlag om exempelvis priset varit felaktigt.

![img_008.jpeg](images/img_008.jpeg)

##### Arbetsflöde

| Flöde | Beskrivning |
| :--- | :--- |
| Upptäckt av felaktig information i faktura eller fakturaunderlag | Felaktig information har upptäckts i fakturan eller fakturaunderlaget. / Se de olika alternativen ovan. |
| Kreditering av fakturaunderlag skapas och skickas (med referens till fakturaunderlag) | Säljande region / vårdregion skapar en kreditering av fakturaunderlag och skickar till köpande region / hemregion. Ska innehålla hänvisning till det ursprungliga fakturaunderlaget. |
| Nytt fakturaunderlag skapas och skickas | Efter skapad och skickad krediterat fakturaunderlag, kan ett nytt fakturaunderlag skapas och skickas, se flöde Skapa och skicka fakturaunderlag. |

###### Roller

| Roll | Beskrivning |
| :--- | :--- |
| Säljande regions databas/system | Den databas eller det system som används för att skapa en kreditering av fakturaunderlag samt nytt fakturaunderlag hos säljande region. |

##### Sekvensdiagram
Sekvensdiagrammet nedan visar att det först skickas ett krediterat fakturaunderlag för att i nästa steg skicka ett uppdaterat fakturaunderlag. Samma tjänstekontrakt används för de två stegen. Felhantering visas i flöde ’Skapa och skicka fakturaunderlag’.

![img_007.jpg](images/img_007.jpg)

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde 1 | Flöde 2 |
| :--- | :--- | :--- |
| ProcessClaimSpecification | X | X |

### Adressering
Adresseringen i domänen är regionsbaserad och det digitala fakturaunderlaget skickas till en mottagande adress i kommunikationsrutinen. Enbart en adress per huvudman anges i kommunikationsrutinen. Adressen (logisk adress) ska anges i form av mottagarens organisationsnummer.
Enligt Riksavtalet är det en huvudprincip att patientens hemregion (dvs. köpande region) ska faktureras och inte enskilda organisatoriska enheter.

### Aggregering och engagemangsindex
Används ej i denna domän.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Under den förstudie som gjordes av Inera 2015 [R3] hanterades frågor inom informationssäkerhet och information de slutsatser som man kom fram till under förstudien finns i bilaga ”Fakturering av utomregional vård – informationssäkerhet” [R4].
Även en juridisk utredning gjordes som återfinns i bilaga ”PM Uppgiftsutlämnande vid landsting fakturering utomlänsvård” [R5].
Se även informationssäkerhetsavsnittet i informationsspecifikationen [R7].

### Icke funktionella krav

#### Omsändning när tjänsteproducent är otillgänglig
Regler och riktlinjer för omsändning vid otillgänglig tjänsteproducent finns beskrivna i RIVTA BP 2.1.2 regel #22. Dessa regler är tillämpliga för tjänstekonsumenter av ProcessClaimSpecification-tjänstekontrakten.
En otillgänglig producent kan yttra sig på två olika sätt, det ena är vid timeout och det andra fallet är vid SoapException.
Tjänstekonsument bör ha en separat tråd för respektive tjänsteproducent man sänder till, där varje tråd har en omsändningspolicy enligt nedan.
Omsändningsfrekvens ska vara konfigurerbar och anges - i millisekunder - som paus mellan anrop till en och samma tjänsteproducent enligt SLA-krav under ”Last”, default ska vara 5000 ms. Omsändningsrekvens bör vara exponentiell backoff.
Max antal omsändningsförsök ska vara konfigurerbar, när max antal försök har uppnåtts ska systemet sluta att försöka sända meddelandet till tjänsteproducenten.
Max timeout ska vara konfigurerbar, när timeout har uppnåtts ska omsändning ske till max antal omsändningsförsök.

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 10 transaktioner per sekund | En producent ska hantera 10 samtidiga transaktioner. / En tjänstekonsument ska ej i en och samma transaktion skicka en nyttolast som är större än 5MB. |
| Aktualitet | Ej tillämpbar |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |
| Svarstid | < 3s | för anrop med en nyttolast på   < 1MB |
| Svarstid | < 6s | för anrop med en nyttolast på   < 2MB |
| Svarstid | < 9s | för anrop med en nyttolast på   < 3MB |
| Svarstid | <15s | För anrop med nyttolast på        < 5MB |

#### Övriga krav
Inga övriga krav.

### Felhantering
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception).
Exempel på felsituationer som rapporteras som tekniskt fel kan vara deadlock i databasen eller följdeffekter av programmeringsfel.
Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren. Användaren kommer enbart att se ”tekniskt fel” – inte detaljinformation.
Detaljinformationen riktar sig till systemförvaltaren.
För regler kring omsändning se 4.2.1.

#### Krav på en tjänsteproducent
Se RIV Tekniska anvisningar [R2].

##### Logiska fel
Vid ett logiskt fel i de uppdaterande tjänsterna levereras resultCode och comment. Syftet med comment är att tjänstekonsumenten av tjänsten ska kunna visa eller spara information om vad som gick fel.
En tjänsteproducent ska validera meddelanden enligt xml schema och tillhörande schematron-regler som följer med interaktionen.
ResultCode kan vara:

| Felkod | Beskrivning |
| :--- | :--- |
| OK | Transaktionen har utförts enligt uppdraget i begäran. |
| INFO | Transaktionen har utförts enligt uppdraget i begäran, men det finns ett meddelande som tjänstekonsumenten måste visa upp för användaren. Används ej i ProcessClaimSpecification. |
| ERROR | Transaktionen har INTE kunnat utföras enligt anrop p.g.a. logiskt fel. 
Fältet comment ska sättas till den rapport som skapas av schematron-reglerna eller schema-validering.
Meddelandet anses inte mottaget. / Exempel meddelande i comment (schematron): / Error: Total summa: 729001 fakturerat i fakturan är fel / Location: /urn1:ProcessClaimSpecification/urn1:claimSpecification/urn2:payableAmount/urn2:amount / Id: R5 / Test: . = sum(//urn2:invoicedAmountDetails/urn2:patientCareInvoiceNetAmount/urn2:amount) |

#### Krav på en tjänstekonsument
Se RIV Tekniska anvisningar [R2].
En tjänstekonsument ska validera både med xml schema samt schematron innan begäran skickas till tjänsteproducent.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot Nationell Informationsstruktur, här version 2016:1.
Mappning är ej gjord mot schema (XSD) i nedan tabell, men attributnamnen som framgår i modellen går att återfinna i fältregeltabellen.

### V-MIM
Klasser och attribut som är gråmarkerade i modellen finns ej med i denna version, men är viktiga och ska eventuellt med i en kommande version av domänen. De gråmarkerade attributen visas endast i modellen, ej i fältregler eller i mappningstabell.

![img_006.png](images/img_006.png)
PLATS FÖR BILD MED DIAGRAM

| Klass.attribut | Mappning mot Nationell Informationsstruktur 2016:1 |
| :--- | :--- |
| Fakturaunderlag vård | saknas |
| Fakturaunderlag vård_huvud | saknas |
| id | saknas |
| datum | saknas |
| tid | saknas |
| fakturatyp | saknas |
| fakturanummer | saknas |
| fakturadatum | saknas |
| referens till faktura | saknas |
| referens till fakturaunderlag vård id | saknas |
| fakturabelopp | saknas |
| ospecificerat | saknas |
| Leverantör | saknas |
| identitet | saknas |
| Kontaktuppgifter | saknas |
| namn | saknas |
| telefonnummer | saknas |
| epost | saknas |
| Köpare | saknas |
| identitet | saknas |
| Kontaktuppgifter | saknas |
| namn | saknas |
| telefonnummer | saknas |
| epost | saknas |
| Fakturaunderlag vård_rad | saknas |
| Patient | Person + / Vård- och omsorgstagare |
| Patient id | person.person-id + / vård- och omsorgstagare.id |
| Övrig information | saknas |
| länskod | saknas |
| kommunkod | saknas |
| listningsregion | saknas |
| LMA kortnummer | saknas |
| kön | person.kön |
| EU kortets nummer | saknas |
| ospecificerat | saknas |
| Vårdinsats | saknas |
| post id vårdinsats | saknas |
| vårdkontakts id | saknas |
| referens till Post id vårdinsats | saknas |
| orsak till kreditering | saknas |
| ospecificerat | saknas |
| Betalningsförbindelse | uppgift i patientjournal |
| remiss id | uppgift i patientjournal.id |
| betalningsförbindelse id | uppgift i patientjournal.id |
| betalningsförbindelsetyp avtal | saknas |
| betalningsförbindelsetyp kapitel | saknas |
| avtalspost i Riksavtalet | saknas |
| betalningsförbindelse ersättningstyp | saknas |
| ospecificerat | saknas |
| Vårdkategori | saknas |
| vård- och omsorgsform | saknas |
| offentlig vård | saknas |
| planerad vård | saknas |
| typ av besök | saknas |
| ospecificerat | saknas |
| Tidsomfång | saknas |
| fakturaperiod | saknas |
| Besökstid | vårdkontakt |
| inskrivnings eller besöksdatum för vård | vårdkontakt.tid |
| inskrivning eller besökstid | vårdkontakt.tid |
| Utskrivningsdatum och tid | vårdkontakt |
| utskrivningsdatum | vårdkontakt.tid |
| utskrivningstid | vårdkontakt.tid |
| Antal dagar | saknas |
| permissionsdagar | saknas |
| vårddagar | saknas |
| Vårdenhet | organisation |
| id | organisation.id |
| namn | organisation.namn |
| yrkeskod | hälso- och sjukvårdspersonal.befattning |
| ospecificerat | saknas |
| Kategorisering | saknas |
| produktkategori | saknas |
| prislista kod | saknas |
| DRG-kostnad | saknas |
| produktkod | saknas |
| pris | saknas |
| ytterfallsersättning vårdtid | saknas |
| ytterfallsersättning kostnad | saknas |
| Patient specifik åtgärd | saknas |
| typ av patientspecifik åtgärd | saknas |
| namn | saknas |
| antal | saknas |
| pris | saknas |
| totalbelopp | saknas |
| ospecificerat | saknas |
| Fakturerat | saknas |
| patient vårdkontakt fakturerat belopp brutto | saknas |
| patient vårdkontakt fakturerat belopp netto | saknas |
| patient vårdkontakt avdrag 6 procent momskompensation | saknas |
| patient vårdkontakt rabatt | saknas |
| patient vårdkontakt påslag och avgifter | saknas |
| patientavgift öppenvård | saknas |
| patientavgift erlagd öppenvård | saknas |
| patientavgift nedsatt kategori | saknas |
| patientavgift frikortsgrundad indikator | saknas |
| patientavgift slutenvård | saknas |
| ospecificerat | saknas |
| Verksamhet | Organisation |
| medicinskt verksamhetsområde | saknas |
| verksamhetskod | organisation.typ |
| vårdnivå | saknas |
| ospecificerat | saknas |
| Diagnos | Observation |
| Diagnos slutenvård | observation |
| Huvuddiagnos | observation |
| diagnoskod | observation.typ |
| Bidiagnos | observation |
| diagnoskod | observation.typ |
| Diagnos öppenvård | observation |
| Huvuddiagnos | observation |
| diagnoskod | observation.typ |
| Bidiagnos | observation |
| diagnoskod | observation.typ |
| Åtgärd | beslut |
| åtgärdskod | beslut.kod |
| ATC kod | beslut.kod |
| ospecificerat | saknas |

### Formatregler

#### Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

#### Format för tid
Tid anges på formatet ”ttmmss” formatbeskrivningen ”hhmmss”.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### Format för patient id

##### Personnummer
Personnummer anges enligt format ÅÅÅÅMMDDNNNN.

##### Samordningsnummer
Samordningsnummer anges enligt format ÅÅÅÅMMDDNNNN.
De inledande sex siffrorna utgår från personens födelsetid (år, månad och dag). Därefter följer ett tresiffrigt individnummer som motsvarar födelsenumret i ett personnummer. Individnumret hämtas slumpvis ur en serie 001-999 för alla som är födda samma dag. Numret är udda för män och jämnt för kvinnor. Siffran för födelsedag ökas med talet 60 och en kontrollsiffra beräknas på samma sätt som för ett personnummer.
Exempel
Samordningsnummer för en man som är född den 3 oktober 1970 och har individnummer 239 blir
19701003
           +60
————---
197010632391

##### Reservnummer
Format för lokala reservnummer: Olika format för varje region och därmed krav på flexibel hantering. Några exempel på reservnummer i olika regioner:
201612345678, 19521234TA3C, 20081234-0123, 123456-DA0A, 123456789A.
Format för nationellt reservnummer: XXYYMMDDNNGC.
Se informationsspecifikationen i domänen strategicresourcemanagement.persons.person för mer information om formatet [R8].

#### Format för organisationsnummer
Format enligt: NNNNNNNNNN (10 siffror)

#### Format för GLN-nummer
Format enligt NNNNNNNNNNNNN (13 siffror)

#### Format för Fakturaunderlag vård, id
Kodens uppbyggnad: prefix, organisationsnummer, datum samt en räknare med 999999 möjligheter.
ZVF1234567890ÅÅMMNNNNNN.

#### Format för belopp
Samtliga belopp anges som heltal eller med max 2 decimaler, exempelvis: 1123.40

## Tjänstekontrakt

### ProcessClaimSpecification
Tjänstekontraktet ProcessClaimSpecification används för att skicka fakturaunderlag då fakturering ska göras från en patients vårdregion till patientens hemregion.
Fakturan skapas vid sidan om, i ett ekonomisystem, och innehåller inga patientuppgifter utan dessa finns angivna i fakturaunderlaget. Fakturan innehåller en referens till fakturaunderlaget för att hålla ihop dem.
Tjänstekontraktet används även vid kreditering av fakturaunderlag (som görs vid felaktig faktura och/eller felaktigt fakturaunderlag).

#### Version
1.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn” med fotnot2. Dessa schematronregler beskrivs mer i detalj i kapitlet ”Övriga regler” nedan.
I beskrivningen anges det namn på klass/attribut som används i meddelandemodellen med fet stil. Olika färgkoder på raderna betyder:

| en till en (1..1,), |
| :--- |
| noll eller en till många (0..*, 1..*) |
Angivelse om fältet är obligatoriskt, obligatoriskt under nämnda förutsättningar, frivilligt, ska bli obligatoriskt senast 20xx-01, ska bli obligatoriskt under nämnda förutsättningar senast 20xx-01 anges i kolumnen Beskrivning. Med 20xx-01 menas att datumet när dessa uppgifter måste lämnas i fakturaunderlaget ännu inte är beslutat. Flera regioner har meddelat att det finns en omställningstid innan dessa uppgifter kan lämnas.

##### Begäran

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| processClaimSpecification | processClaimSpecificationType | Fakturaunderlag vård |  |
| id2 | string | Fakturaunderlag vård, id / En unik identitet som används för att identifiera fakturabilaga vid fakturering av utomläns vård. / Prefixet (ZVF) finns för att underlätta skanning av fakturabilagans id. / Kodens uppbyggnad: prefix, organisationsnummer, datum samt en räknare med 999999 möjligheter. / ZVF1234567890ÅÅMMNNNNNN. / Obligatoriskt. | 1..1 |
| issueDate | DateType | Fakturaunderlag vård, datum / Datum då fakturaunderlag för vård skapades. / Obligatoriskt. | 1..1 |
| issueTime | TimeStampType | Fakturaunderlag vård, tid / Tidpunkt då fakturaunderlag för vård skapades. / Frivillig uppgift. | 0..1 |
| typeOfInvoice2 | string | Fakturatyp / Kod som identifierar typ av faktura. / Kod enligt Svefaktura och SFTIs övriga fakturor. / 380=Faktura / 381=Kreditnota / Obligatoriskt. | 1..1 |
| invoiceId | String | Fakturanummer / Varje ny faktura ska ges en unik identitet. Numret bör vara unikt under hela arkiveringsperioden. / Fakturanumret ska vara utan mellanslag och bindestreck. / För att ge ett dokument en unik identitet kan GDTI användas. GDTI (GS1-dokumentidentitet, Global / Document Type Identifier) är ett alfanumeriskt fält som innehåller från 14 upp till 30 siffror. Antal positioner enligt standard SFTI E-handel. / Ett unikt nummer som används för att identifiera fakturan. / Frivillig uppgift. | 0..1 |
| invoiceDateOfIssue | DateType | Fakturadatum / Datum när fakturan utfärdades. / Frivillig uppgift. | 0..1 |
| referenceToInvoice | string | Referens till faktura / Används vid kreditering för att referera till den faktura som ska krediteras. / Referensen anges med fakturans unika identitet (fakturanumret). / Ska lämnas när fakturan är en kreditfaktura. / Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01. | 0..1 |
| referenceToProcessClaimSpecificationId2 | string | Referens till fakturaunderlag vård id / Vid kreditering av poster på kreditfaktura ska en referens anges till det id som finns på / originalfakturans fakturaunderlag. / Obligatoriskt när fakturan är en kreditfaktura. | 0..1 |
| payableAmount2 | AmountType | Fakturabelopp / Total debitering avseende en faktura och i enlighet med / leveransvillkoren. / Obligatoriskt. | 1..1 |
| ../amount | decimal | Belopp / Beloppet ska vara exakt samma belopp som på fakturan. / Obligatoriskt. | 1..1 |
| ../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK
codeSystem: ”1.0.4217” / Obligatoriskt. | 1..1 |
| unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../text | string |  | 1..1 |
| ../type | string |  | 0..1 |
| supplierParty | SupplierPartyType | Leverantör / Obligatoriskt. | 1..1 |
| ../identification2 | IIType | Leverantörens identitet / Identiteten ska kunna härledas till motsvarande namn, adress mm under hela den föreskrivna arkiveringstiden. / Identitet för part som definieras som juridisk säljare enligt ett kommersiellt avtal. / root: / Organisationsnummer= 1.3.7 / GLN-nummer = 2.51.1.6 / extension: / organisationsnumret eller GLN-numret / Obligatoriskt med organisationsnummer. / GLN-nummer kan även finnas med som frivillig identitet. | 1..2 |
| ../sellerContact | ContactType | Leverantörens kontaktuppgifter / Frivillig uppgift. | 0..1 |
| ../../name | string | Namn på person eller avdelning som avser kontakt för leverantör. / Frivillig uppgift. | 0..1 |
| ../../telephone | string | Leverantörens telefonnummer / Telefonnummer oredigerat. / Frivillig uppgift. | 0..1 |
| ../../electronicMail | string | Leverantörens epost / Adress till ett e-postkonto. / Frivillig uppgift. | 0..1 |
| customerParty | CustomerPartyType | Köpare | 1..1 |
| ../identification2 | IIType | Köparens identitet / Identiteten ska kunna härledas till motsvarande namn, / adress mm under hela den föreskrivna arkiveringstiden. / Identitet för part som definieras som juridisk köpare / enligt ett kommersiellt avtal. / root: / Organisationsnummer= 1.3.7 / GLN-nummer =2.51.1.6 / extension: / organisationsnumret eller GLN-numret / Obligatoriskt med organisationsnummer. / GLN-nummer kan även finnas med som frivillig identitet. | 1..2 |
| ../buyerContact | ContactType | Köparens kontaktuppgifter / Frivillig uppgift. | 0..1 |
| ../../name | string | Namn på person eller avdelning som avser kontakt för köpare. / Frivillig uppgift. | 0..1 |
| ../../telephone | string | Köparens telefonnummer / Telefonnummer oredigerat. / Frivillig uppgift. | 0..1 |
| ../../electronicMail | string | Köparens epost / Adress till ett e-postkonto. / Frivillig uppgift. | 0..1 |
| healthcareServicesSpecificationLine | HealthcareServicesSpecificationLineType | Fakturaunderlag vård, rad | 0..* |
| ../patientInformation | PatientInformationType | Patient | 1..1 |
| ../../patientIdentity | IIType | Patient id / Personnummer, samordningsnummer eller reservnummer ska anges. / Personnummer och samordningsnummer enligt den svenska folkbokföringen. / root / personnummer=“1.2.752.129.2.1.3.1” / samordningsnummer= / ”1.2.752.129.2.1.3.3” / reservnummer= / lokal reservnummer oid (ex. SLL: 1.2.752.97.3.1.3) alt. organisationsnummer om lokal reservnummer oid ej finns. / extension / Person- samordnings- eller reservnumret / Format: / Personnummer: ÅÅÅÅMMDDNNNN / Samordningsnr.: ÅÅÅÅMMDDNNNN / Lokala reservnummer=Olika format för varje region och därmed krav på flexibel hantering. / Nationellt reservnummer: XXYYMMDDNNGC / Obligatoriskt fält. | 1..1 |
| ../../patientOtherInformation |  | Patient, övrig information | 1..1 |
| ../../../county2 | CVType | Länskod / Koden avser det län där patientens folkbokföringsadress / finns.  Avser patientens folkbokförings län vid / vårdkontakten enligt förteckningen ”Rikets indelningar” / utgiven av Statistiska Centralbyrån (SCB). / För asylsökande sätts code till 99 och codeSystem utelämnas. / code: Enligt SCB, 2 siffror / codeSystem: 1.2.752.129.2.2.1.18 / Obligatoriskt. | 1..1 |
| ../../../municipality2 | CVType | Kommunkod / Koden avser den kommun där patientens folkbokföringsadress finns.  Avser patientens folkbokföringskommun vid vårdkontakten enligt förteckningen ”Rikets indelningar” utgiven av Statistiska Centralbyrån (SCB). / För asylsökande sätts 9901 (i kombination med länskod 99) och codeSystem utelämnas. / code: Enligt SCB, 4 siffror / codesystem: 1.2.752.129.2.2.1.17 / Obligatoriskt. | 1..1 |
| ../../../listingLocalAuthoritiesNumber2 | IIType | Listningsregion / HSA-id för patientens listningsregion. Anges i de fall patienten är utomlänspatient och listad i den vårdande regionen. / Ska bli obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. / root: 1.2.752.129.2.1.4.1 | 0..1 |
| ../../../LMACardNumber | String | LMA kortnummer / Identitet på LMA-kort som används av asylsökande. Migrationsverkets dossiernummer vilket är unikt för varje individ. / Format: XXXXXXXX (8 siffror). / Ska ifyllas när debitering / sker av asylsökande mellan regioner. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../gender2 | CVType | Kön / Patientens kön enligt skatteverket. / Kategorisering enligt Socialstyrelsen och ISO 5218. / code: / 0=Okänt. / 1=Man. / 2=Kvinna. / 9=Obestämt. / codesystem: ”1.2.752.129.2.2.1.1” / Frivillig uppgift. | 0..1 |
| ../../../EUCardNumber | String | EU-kortets nummer / Kort för EU-medborgare som berättigar till vård enligt nationell prislista. (för hantering mot privata vårdgivare) / Identitet på EU-kort. / Format (exempel 20 tecken): XXXXXXXXXXXXXXXXXXXX / Frivillig uppgift. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../healthcarePerformed | HealthcarePerformedType | Vårdinsats | 1..* |
| ../../lineId | positiveInteger | Post id vårdinsats / Löpande numrering av vårdinsatser inom en faktura. / Radnummer ska vara ett löpnummer i stigande ordning. / Ex 1, 2, 3, 4 osv Alt 10, 20, 30, … / Vid kreditering används detta fält som referens eftersom vårdkontaktsid ej är obligatoriskt. / Obligatoriskt. | 1..1 |
| ../../careContactId2 | string | Vårdkontakts-id / En unik identitet på besöket/vårdkontakten. / Hämtas ofta från journalsystemet. Via koden kan samtliga fakturor identifieras som skett på en vårdkontakt. / Ska alltid anges inom sluten vård. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../referenceToLineId | positiveInteger | Referens till PostId Vårdinsats / Vid kreditering av poster på kreditfaktura ska en referens / anges till det radnummer som finns på vårdkontakterna på originalfakturans fakturaunderlag. / Ska lämnas när fakturan är en kreditfaktura. / Några regioner behöver en omställningstid innan denna uppgift kan ifyllas (Uppföljning sker inom nätverksgruppen). / Ska bli obligatorisk under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../reasonForCredit2 | string | Orsak till kreditering / Kod för olika orsaker till kreditering. Anges vid kreditering. / Denna uppgift underlättar hur köpande region ska hantera kreditinformationen i uppföljningssystem och vårddatabas. Anges för kreditfakturor. / Ska bli obligatorisk under nämnda förutsättningar senast 20xx-01. / Koder: / 1= Kreditering då debiterad patient inte tillhör den region som fakturerats. Exempel: En patient faktureras som har flyttat från den region som fått fakturan innan vården har skett. / 2=Kreditering av en transaktion där priset är fel angivit. Exempel. Det har blivit fel pris fakturerat på en behandling som ska faktureras enligt DRG. Den debiterade vårdinsatsen krediteras i sin helhet och ersätts med en ny fakturering. / 3=Kreditering av en transaktion där det är fel produkt. Exempel: Det har blivit fel pris på grund av att det medicinska underlaget är fel och därmed har fel DRG-kod fakturerats. Den debiterade vårdinsatsen krediteras i sin helhet och ersätts med en ny fakturering. / 4=Kreditering av en transaktion på grund av att det skett en delfakturering tidigare. Exempel: Det sker en löpande patientspecifik debitering i avvaktan på att en DRG-kod fastställs för vårdkontakten. Kreditering sker av tidigare fakturerade patientspecifika debiteringar och ersätts med ny faktura för fastställd DRG-kod. (Rutin för delfakturering regleras i samverkansavtalen) Se även not nedan. / 5=Kreditering av en transaktion där vård har skett av en annan region utan att det funnits en giltig remiss/betalningsförbindelse. Exempel: En region har vårdat en patient inom den slutna vården utan att det har funnits en giltig remiss/betalningsförbindelse. I detta fall kan den region där patienten är skriven neka att betala denna vård och därmed behöver vårdinsatsen krediteras. / 6=Kreditering av en felaktig transaktion då vårdkontakten har fakturerats sex månader efter vårdens tidpunkt.  Exempel: En faktura på en debiterad vårdkontakt skickas från den behandlande regionen senare än 6 månader efter tidpunkt för vården. Riksavtalet ger då möjlighet för köpande region att få denna krediterad. / 7=Kreditering av en transaktion där dubbelfakturering skett. Exempel: En vårdkontakt har fakturerats dubbelt. Det dubbelt debiterade vården krediteras. / 8=Kreditering av en felaktig transaktion då vårdkontakten har fakturerats datummässigt tidigare än behandlingsdatum. Exempel: En faktura på en debiterad vårdkontakt har besöksdatum/inskrivningsdatum efter fakturadatum.  Fakturan är ex skickad den 15 maj 2016 och vården är relaterad till den 20 maj. / 9=Kreditering då fakturering har skett av ett besök eller en åtgärd som inte är debiteringsbar. Exempel: En telefonrådgivning har debiterats vilket inte är debiteringsbart enligt riksavtalet. / Not: Se punkt 4: I samband med debitering av vårddagar för en patient som ligger inlagd i sluten vård vid ett månadsbryt ska en månads debitering av vårddagar ske på en unik faktura när delfakturering sker. (Rutin för delfakturering regleras ofta i samverkansavtalen) Samtliga månaders debitering av en vårdkontakt i hålls samman av samma Vårdkontakts-id. Ingen kreditering ska ske. | 0..1 |
| ../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../text | string |  | 1..1 |
| ../../../type | string |  | 0..1 |
| ../../paymentCommitment | PaymentCommitmentType | Betalningsförbindelse | 0..1 |
| ../../../remittanceNumber | string | Remiss-id / Remissens ursprungliga remiss-id. / Uppgiften lämnas när en remiss finns. / Ska bli obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../../paymentCommitmentNumber | string | Betalningsförbindelse-id / Ursprunglig identitet för betalningsförbindelse. / Uppgiften lämnas när en remiss finns. / Ska bli obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../../typeOfAgreement2 | string | Betalningsförbindelsetyp avtal / Anger den typ av avtal enligt Riksavtalet som reglerar betalningen. / Uppgiften lämnas när en remiss finns. / 1=Riksavtal / 2=Regionavtal / 3=Mellanlänsavtal / Observera att kodverket kv_betalningsförbindelsetyp avtal (Oid 1.2.752.129.2.2.2.44) förvaltas inom domänen Remisshantering. Eventuella behov av korrigeringar ska kommuniceras med dem. / Ska bli obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../../typeOfChapter2 | string | Betalningsförbindelsetyp kapitel / Anger kodifiering utifrån Riksavtalets kapitel som reglerar betalning. / Uppgiften lämnas när en remiss finns. / 1=Kapitel 2 Vård efter initiativ från hemregionen / 2=Kapitel 2 Vårdgaranti / 3=Kapitel 3 Akutvård / 4=Kapitel 4 Patientens val / 5=Kapitel 5 Medicinsk service / 6=Kapitel 6 Hjälpmedel / 7=Kapitel 7 Transporter och resor / Observera att kodverket kv_ betalningsförbindelsetyp kapitel (Oid 1.2.752.129.5.1.37) förvaltas inom domänen Remisshantering. Eventuella behov av korrigeringar ska kommuniceras med dem. / Ska bli obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../../agreementInRiksavtalet | string | Avtalspost i Riksavtalet / Kapitel och punkt som avses i Riksavtalet. / Fältet ifylls endast i de fall vården har utförts utan remiss men med stöd av särskilt kapitel och avsnitt i Riksavtalet. / Giltiga värden: / 3.1= Kap 3.1 Akut- och förlossningsvård / 3.2 = Kap 3.2 Vård av vissa patienter / 4.1 = Kapitel 4.1 Öppen vård utan krav på remiss / 4.3 = Kapitel 4.3 Hemsjukvård / 4.4 = Kapitel 4.4 Abort / Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01. | 0..1 |
| ../../../typeOfReimbursement2 | string | Betalningsförbindelse, ersättningstyp / Anger ersättningstyp. Uppgiften lämnas när en remiss finns. / 1=Ersättning från patientens hemregion enligt reglerna i Riksavtalet. / 2=Ersättning från patientens / hemregion enligt hemregionens kontrakt med vårdgivaren. / Ska bli obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../healthcareCategory | HealthcareCategoryType | Vårdkategori | 1..1 |
| ../../../ typeOfCare2 | CVType | Vård- och omsorgsform / Kategorisering av öppen respektive sluten vård enligt Socialstyrelsens termbank. Sluten vård är hälso-och sjukvård när den ges till patient vars tillstånd kräver / resurser som inte kan tillgodoses inom öppen vård eller hemsjukvård. / Öppen vård bedrivs i allmänhet under dagtid. Vid behov av övernattning leder det i regel till inskrivning i sluten / vård. / Sluten vård bedrivs dygnet runt och kräver inskrivning. Öppen vård är hälso-och sjukvård när den ges till patient vars tillstånd medger att aktuell vårdinsats förväntas avslutas inom ett begränsat antal timmar. / Urval ur HSA kodverk ”Vård- och omsorgsform” / code: / 01=öppenvård / 02=slutenvård / codeSystem: ”1.2.752.29.4.16” / Obligatoriskt. | 1..1 |
| ../../../publicCare | boolean | Offentlig vård / Offentlig eller privat vård. / Offentlig vård är vård som är offentligt finansierad och bedrivs av region/kommun. / Privat vård är vård som är offentligt finansierad och bedrivs av privat vårdgivare. / true = offentlig vård / false = privat vård / Ska bli obligatoriskt fält senast 20xx-01. | 0..1 |
| ../../../plannedHealthcare | boolean | Planerad vård / Kategorisering enligt Socialstyrelsens termbank. / Definitioner: / Oplanerat vårdtillfälle: vårdtillfälle för vilket tid inte har avtalats / Oplanerat öppenvårdsbesök: öppenvårdsbesök för vilket tid inte har avtalats / Planerat vårdtillfälle: vårdtillfälle för vilket tid har avtalats / Planerat öppenvårdsbesök: öppenvårdsbesök för vilket tid har avtalats / true = planerad vård / false = ej planerad vård / Obligatoriskt. | 1..1 |
| ../../../typeOfVisit2 | string | Typ av besök / 1 = nybesök / 2 = återbesök / Telefonrådgivning kategoriseras som återbesök. / Med nybesök avses enligt Socialstyrelsens termbank / besök som inte har medicinskt samband med tidigare besök vid samma vårdcentral, klinik eller motsvarande. / Vid ett återbesök finns ett medicinskt samband. / Frivillig uppgift. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../timespan | TimespanType | Tidsomfång | 1..1 |
| ../../../healthcareVisitDateTime | HealthcareVisitDateTimeType | Besökstid | 1..1 |
| ../../../../careVisitDate2 | DateType | Inskrivnings- eller besöksdatum för vård / Besöksdatum för fakturerat besök/vårdkontakt. / Obligatorisk vid öppen vård. Patientens / inskrivningsdatum. Obligatorisk vid sluten vård. / Format: ÅÅÅÅMMDD / Obligatoriskt fält. | 1..1 |
| ../../../../careVisitTime | TimeStampType | Inskrivnings- eller besökstid / Exakt tid, timme och minut när inskrivning/besöket skedde. För att få tydlighet i en persons vårdkonsumtion / på en dag. / Format: ÅÅÅÅMMDDttmmss / Ska bli obligatoriskt fält senast 20xx-01. | 0..1 |
| ../../../ healthcareDischargeDateTime | HealthcareDischargeDateTimeType | Utskrivningsdatum och tid / Patientens utskrivningsdag och tidpunkt. / Obligatoriskt fält vid sluten vård när patienten har blivit utskriven. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../careDischargeDate2 | DateType | Utskrivningsdatum från vård / I de fall det är en delfakturering för en / inneliggande patient ska detta fält vara blankt. / Format: ÅÅÅÅMMDD / Obligatoriskt. | 1..1 |
| ../../../../careDischargeTime | TimeStampType | Utskrivningstid / Exakt tid, timme och minut när utskrivning skedde. För att få tydlighet i en persons vårdkonsumtion på en dag. / Ifylla vid utskrivning från sluten vård. / Format: ÅÅÅÅMMDDttmmss / Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01. | 0..1 |
| ../../../invoicePeriod2 | DatePeriodType | Fakturaperiod / Periodens startdatum: / Startdatum för en period i samband med delfakturering. / Ex i samband med att en patient vårdas över månadsgräns. / Periodens slutdatum: / Slutdatum för en period i samband med delfakturering. / Ex i samband med att patient vårdas över månadsgräns. / Format för både start och end: ÅÅÅÅMMDD / Ifylls när delfakturering sker utifrån samverkansavtal m.m. / Om fakturaperiod anges krävs ingen diagnoskod i sluten vård. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../numberOfDays | NumberOfDaysType | Antal dagar | 0..1 |
| ../../../../onLeave | positiveInteger | Antalet permissionsdagar / Fältet ifylls endast vid sluten vård och avser det antal permissionsdagar som en patient haft under vårdtillfället. / Avser antalet permissionsdagar som ingår i ett vårdtillfälle om patienten haft permission. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../inCare | positiveInteger | Antal vårddagar / Det antal vårddagar som kostnaden debiteras för. / Permissionsdagar ska vara frånräknade. / När in- och utskrivning sker samma dag räknas vårdtiden som en dag. / Ska alltid ifyllas vid sluten vård. / Fältet ifylls även om inte vårddagskostnad debiteras ex vid DRG-debitering. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../healthcareUnit | HealthcareUnitType | Vårdenhet | 1..1 |
| ../../../careUnitId | II | Id / Vårdenhetens identitet / Identitet på den vårdenhet som har utfört, alternativt är medicinskt ansvarig för, den vård som en patient har erhållit. Det är HSA-id för vårdenheten som ska anges. Anges i formatet: SEorganisationsnummer-kod. / root / “1.2.752.129.2.1.4.1” / extension / Exempel SE2321000115-094882. / Ska bli obligatoriskt senast 20xx-01. | 0..1 |
| ../../../careUnitName | string | Namn / Namnet på vårdenheten som utfört vården. / En vårdenhet är en organisatorisk enhet som tillhandahåller hälso- och / sjukvård. Rekommenderas att namnsättning sker enligt / HSA-id. I de fall HSA-id kod anges ska alltid namnsättningen följa koden. / Obligatorisk. | 1..1 |
| ../../../professionCodeForHealthcare2 | string | Yrkeskod / Yrkeskod för hälso- och sjukvårdspersonal som utfört behandlingen. / Yrkeskod ska anges enligt kodverk Kv yrkeskod, OID 1.2.752.129.5.1.29. / Kodverket följer Socialstyrelsens hosp-yrkeskoder men kompletteras med: / Undersköterska (US), / Teampersonal inkl. läkarmedverkan (TP), Teampersonal utan läkarmedverkan (TO), Övrig personal (OV). / Uppgiften ska lämnas inom öppen vård. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../categorization | CategorizationType | Kategorisering | 0..1 |
| ../../../productCategory2 | string | Produktkategori / Kategorisering för typ av prissättning/avgift. / Används för att kunna kategorisera olika typer av debiteringar. / 01=DRG-kod CC-kod för Nord-DRG. / 02 =DRG-kod för Nord DRG. / 03= Patientspecifikt. / 04=Kontaktersättning. / 99= Övrigt / Ska bli obligatoriskt senast 20xx-01. | 0..1 |
| ../../../priceList2 | string | Prislista kod / Kod för typ av prislista. / En gemensam kodifiering av aktuella samverkansavtal tas fram. Ifylls när faktureringen följer aktuellt samverkansavtal. / Följande avtal finns: / 1. Norra Sverige / 2. Uppsala/Örebro / 3. Stockholm/Gotland / 4. Sydöstra Sverige / 5. Västra Sverige / 6. Södra Sverige / Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01. | 0..1 |
| ../../../DRGCost | DRGCostType | DRG-kostnad / Minst en av DRG-kostnad eller Patient specifik åtgärd (se nedan) måste anges. | 0..1 |
| ../../../../DRGCode | CVType | DRG produktkod / Debiterad DRG-kod / Enbart kod enligt DRG sätts i elementet originalText. Koden innehåller fyra tecken, ingen förklarande text skickas i elementet. / Ska ifyllas när debiteringen avser pris för DRG. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../DRGPrice | AmounType | DRG pris / DRG-pris enligt prislista. / Det finns olika prislistor beroende på vilket avtal som fakturering sker från. / Uppgiften ifylls när vårdinsatsens debitering avser fakturering enligt DRG-priser. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../../extendedAllowanceCareTime | AmountType | Ytterfallsersättning, vårdtid / Ytterfallsersättning för den tid patienten har vårdats. / Belopp för ytterfallsersättning, vårdtid / Om vårdtiden avviker mot prislistans framräknade trimgräns/ytterfallsgräns kan ytterfallsersättning debiteras enligt avtal. När detta ska ske är reglerat i samverkansavtalen. / Ofta faktureras detta på egen / faktura. Det är viktigt att korrekt vårdkontakts-id anges dvs samma id som vid fakturerad vårdkontakt. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. / Exempel: / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../../extendedAllowanceCost | AmountType | Ytterfallsersättning, kostnad / Ytterfallsersättning för höga kostnader utöver patientens vårdtid. Belopp för ytterfallsersättning, kostnad. / Om kostnaden avviker mot prislistans  framräknade trimgräns/ytterfallsgräns kan ytterfallsersättning debiteras enligt avtal. När detta ska ske är reglerat i samverkansavtalen. / Ofta faktureras detta på egen / faktura. Det är viktigt att korrekt vårdkontakts-id anges dvs samma id som vid fakturerad vårdkontakt. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientSpecificCare | PatientSpecificCareType | Patient specifik åtgärd / Minst en av Patient specifik åtgärd eller DRG-kostnad (se ovan) måste anges. / Patientspecifika åtgärder enligt särskilda prislistor. Det kan förekomma ett flertal patientspecifika åtgärder / kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. För varje åtgärd ska ett pris anges. / Debitering av vårddagskostnader, besök, mm ska även framgå här. | 0..* |
| ../../../../patientSpecificCareCode | string | Typ av patient specifik åtgärd / Kod när debiteringen avser patientspecifika åtgärder, besök, vårddagar mm. / Uppgiften ifylls när vårdinsatsens debitering inte avser fakturering enligt DRG-priser. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../patientSpecificCareCodeName | string | Patientspecifik åtgärd, namn / Namn för patientspecifik åtgärd när kod för patientspecifik åtgärd har registrerats. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../numberOfPatientSpecificCare | integer | Antal patientspecifik åtgärd / Antalsuppgifter för patientspecifika åtgärder, vårddagar, / besök mm. Antalet åtgärder, vårddagar mm som debiteringen innehåller. / Ifylls alltid i samband med patientspecifik debitering. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../patientSpecificCarePrice | AmountType | Patientspecifik åtgärd, pris / Pris för patientspecifika åtgärder enligt särskilda prislistor när inte debiteringen sker utifrån DRG-priser. / Det kan förekomma ett flertal patientspecifika åtgärder kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. För varje åtgärd ska ett pris anges. / Även belopp för vårddagskostnad, besök mm anges här. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../../patientSpecificCareTotalAmount2 | AmountType | Patientspecifik åtgärd, totalbelopp / Totalbelopp för Patientspecifik åtgärd när detta har debiterats. / Ifylls alltid i samband med patientspecifik debitering. / Pris för patientspecifika åtgärder enligt särskilda prislistor. Det kan förekomma ett flertal patientspecifika åtgärder kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. / Även belopp för den totala vårddags-kostnaden, besökskostnaden anges här. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../../text | string |  | 1..1 |
| ../../../../../type | string |  | 0..1 |
| ../../invoicedAmountDetails | InvoicedAmountDetailsType | Fakturerat | 1..1 |
| ../../../patientCareInvoiceGrossAmount2 | AmountType | Patient vårdkontakt, fakturerat belopp brutto / Fakturerat bruttobelopp för vårdinsats. / Belopp efter avdrag av patientavgift. Om fakturerad vårdinsats avser patientspecifika åtgärder ska beloppet / motsvara samtliga detaljrader för patientspecifika priser. / Formel: ”DRG-pris”+”Ytterfallsersättning, / vårdtid”+”Ytterfallsersättning, kostnad” + alla ”Patientspecifik åtgärd, totalbelopp”–”Patientavgift erlagd / öppenvård”. / Samtliga belopp presenteras positivt i filen. / I de flesta fall är det tomt i ett av fälten DRG-pris eller Patientspecifik / åtgärd, totalbelopp. / OBS! I vissa samverkansavtal ska / inte Patientavgift erlagd öppenvård reducera priset. / Obligatoriskt fält. | 1..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientCareInvoiceNetAmount2 | AmountType | Patient vårdkontakt, fakturerat belopp netto / Fakturerat bruttobelopp för vårdinsats netto. / Fakturerat belopp efter avdrag/rabatter. Summan av kolumnen ska stämma med fakturerat belopp enl / fakturan. Om fakturan avser patientspecifika åtgärder / ska fakturerad vårdinsats motsvara samtliga detaljrader / för patientspecifika priser / Formel: ”Patient vårdkontakt, fakturerat belopp / brutto”+”Patient vårdkontakt, påslag/avgifter”-”Patient / vårdkontakt, avdrag 6 % momskompensation”-”Patient / vårdkontakt, rabatt”. / Samtliga belopp presenteras positivt i filen. Vilka uppgifter som ifylls beror på vilket samverkansavtal fakturering sker efter. / Obligatoriskt fält. | 1..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientCareAllowance | AmountType | Patient vårdkontakt, avdrag 6 % momskompensation / Avdrag (momskompensation) för 6 % moms som säljaren kan söka statsbidrag för vid köp från privat / vårdgivare. Ifylls endast vid privat vård och detta är reglerat i samverkansavtal. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientCareDiscount | AmountType | Patient vårdkontakt, rabatt / I fältet ska anges belopp för rabatt i de fall detta finns. Rabatter regleras i samverkansavtalen. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: 1.0.4217 | 1..1 |
| ../../../patientCareCharge | AmountType | Patient vårdtillfälle, påslag och avgifter / I fältet ska anges påslag för avgifter mm i det fall detta finns. Påslag/avgifter regleras i samverkansavtalen. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../outPatientCareFee | AmountType | Patientavgift öppenvård / Patientavgiften för öppenvård enligt vårdande regions prislista. / Information om vilken patientavgift som är beslutad för aktuell debitering. Kan anges om beloppet avviker från / Patientavgift erlagd öppenvård. / Fältet är frivillig uppgift. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../outPatientCareFeePaid | AmountType | Patientavgift erlagd öppenvård / Patientavgift för öppenvård som erlagts av patienten. / Den del som patienten betalt. Beloppet kan avvika / jämfört med fältet ”Patientavgift öppenvård” pga frikort / mm. / Ska endast ifyllas när patientavgiften påverkar fakturerat belopp. / När uppgift ska lämnas styrs av de olika samverkansavtalen. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientFeeReducedCategory2 | string | Patientavgift nedsatt, kategori / Kategorisering av varför patient inte betalar full avgift. Ska endast lämnas när patientavgiften påverkar priset / enligt prislista. / Detta regleras i samverkansavtalen. / Giltiga koder: / 01=Frikort / 02=Barn och ungdom / 03=Rådgivning, födelsekontroll / 04=Antibiotikafri behandling / 05=Person över 85 år / 99=Övrigt / Obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../../patientFreePassCauseIndicator | boolean | Patientavgift Frikortsgrundad indikator / Frikortsgrundande patientavgift. Information om debiterad vård är frikortsberättigad i säljande region. / Möjlighet att fånga en erlagd patientavgift för central hantering och bevakning av frikortsbelopp i köpande region. / True = är frikortsgrundad / false = ej frikortsgrundad / Frivillig uppgift. | 0..1 |
| ../../../inpatientCareFee | AmountType | Patientavgift, slutenvård / Patientens patientavgift för behandlingen i sluten vård. / Möjlighet att i framtiden fånga patientavgiften även i sluten vård. / Frivillig uppgift. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency2 | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../activity | ActivityType | Verksamhet | 1..1 |
| ../../../medicalFieldCode | string | Medicinskt verksamhetsområde / Treställig kod från Socialstyrelsen / Klinikkod (specialitet), medicinskt ansvarig enligt kodverk från Socialstyrelsen. / Obligatoriskt fält. | 1..1 |
| ../../../businessClassification | CVType | Verksamhetskod / Fyrställig kod för den typ av verksamhet som bedrivs enligt HSA:s verksamhetskodverk. / Uppgiften kan inhämtas från HSA, men det är viktigt att i så fall även titta på verksamhetskoder för vårdenhetens ingående enheter samt att först därefter välja den verksamhetskod som är aktuell för det specifika vårdtillfället. / code: Ur HSAs kodverk Verksamhetskod codesystem: 1.2.752.129.2.2.1.3 / Ska bli obligatoriskt fält senast 20xx-01. | 0..1 |
| ../../../careLevel2 | string | Vårdnivå / Kategorisering av vårdnivå. / Vårdnivå för aktuell vårdkontakt anges. / Primärvård avser hälso- och sjukvårdsverksamhet där öppenvård ges utan avgränsning när det gäller sjukdomar, ålder eller patientgrupper. Primärvården svarar för behovet av sådana åtgärder i form av medicinsk bedömning och behandling, omvårdnad, förebyggande arbete och rehabilitering som inte kräver särskilda medicinska eller tekniska resurser eller någon annan särskild kompetens. / Länssjukvård avser olika typer av specialistvård som täcker de flesta områden exklusive vård enligt regionsjukvård och nationell högspecialiserad vård. / Regionsjukvård avser vård som bedrivs vid Sveriges universitetssjukhus. Benämns i Riksavtalet för utomlänsvård som samverkansregionsjukvård. / Nationell högspecialiserad vård är vård inom områden som Socialstyrelsen har gett särskilt tillstånd till och ges endast hos ett fåtal vårdgivare som kan uppfylla kraven på kompetens, tillgänglighet och arbete i multidisciplinära team. / 1=Primärvård / 2=Länssjukvård / 3=Regionsjukvård / 4=Nationell högspecialiserad vård / Ska bli obligatoriskt fält senast 20xx-01. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../diagnosis2 | DiagnosisType | Diagnos | 0..1 |
| ../../../inpatientCareDiagnosis | PatientDiagnosisType | Diagnos slutenvård / Diagnos ska lämnas för sluten somatisk vård. (Ej psykiatrisk vård) / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../mainDiagnosis2 | DiagnosisCodeType | Huvuddiagnos / Huvuddiagnos, Diagnos 1. Ska registreras för somatisk / sluten vård.  (Ej psykiatrisk vård). / Huvuddiagnosen är det tillstånd (sjukdom, skada etc.) vars behandling och utredning varit / huvudorsaken till patientens sjukhusvistelse. / Obligatoriskt fält om fältet Diagnos slutenvård används. | 1..1 |
| ../../../../../diagnosisCode | CVType | Diagnoskod / Kod för diagnos. / Det kodsystem som styr vilken diagnos som angivits. / I sluten vård ska det alltid vara kod enligt ICD10-SE. / I öppen vård bör det vara enligt / ICD10-SE men även andra koddiagnoser kan finnas. / Code: / codesystem: ”1.2.752.116.1.1.1.1.3” / Obligatoriskt fält. | 1..1 |
| ../../../../biDiagnosis | DiagnosisCodeType | Bidiagnos / Diagnos 2-x . Det kan förekomma ett flertal bidiagnoser kopplade till ett sjukdomsfall. Dessa uppgifter måste / således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. / Obligatoriskt fält under nämnda förutsättningar. | 0..* |
| ../../../../../diagnosisCode | CVType | Diagnoskod / Kod för diagnos. / Det kodsystem som styr vilken diagnos som angivits. / I sluten vård ska det alltid vara kod enligt ICD10-SE. I öppen vård bör det vara enligt ICD10-SE men även / andra koddiagnoser kan finnas. / Code: / codesystem: ”1.2.752.116.1.1.1.1.3” / Obligatoriskt fält. | 1..1 |
| ../../../outpatientCareDiagnosis | PatientDiagnosisType | Diagnos öppenvård / Anges för öppen specialistvård när denna uppgift finns. Ska inte lämnas för primärvård och psykiatrisk vård. / Obligatoriskt fält under nämna förutsättningar. | 0..1 |
| ../../../../mainDiagnosis | DiagnosisCodeType | Huvuddiagnos / Huvuddiagnos, Diagnos 1. Ska registreras för somatisk öppenvård när denna uppgift finns. Ska inte lämnas för primärvård och psykiatrisk öppenvård. / Huvuddiagnosen är det tillstånd (sjukdom, skada etc.) vars behandling och utredning varit huvudorsaken till patientens sjukhusvistelse. / Obligatoriskt fält om fältet Diagnos öppenvård används. | 1..1 |
| ../../../../../diagnosisCode | CVType | Diagnoskod / Det kodsystem som styr vilken diagnos som angivits. / I sluten vård ska det alltid vara kod enligt ICD10-SE. I öppen vård bör det vara enligt ICD10-SE med även andra koddiagnoser kan finnas. / Code: / codesystem: ”1.2.752.116.1.1.1.1.3” / Obligatoriskt fält. | 1..1 |
| ../../../../biDiagnosis | DiagnosisCodeType | Bidiagnos / Diagnos 2-x .Det kan förekomma ett flertal bidiagnoser / kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. / Obligatoriskt fält under nämnda förutsättningar. | 0..* |
| ../../../../../diagnosisCode | CVType | Diagnoskod / Kod för diagnos. / Det kodsystem som styr vilken diagnos som angivits. / I sluten vård ska det alltid vara kod enligt ICD10-SE. I öppen vård bör det vara enligt ICD10-SE men även / andra koddiagnoser kan finnas. / Code: / codesystem: ”1.2.752.116.1.1.1.1.3” / Obligatoriskt fält. | 1..1 |
| ../../treatment | TreatmentType | Åtgärd | 0..1 |
| ../../../typeOfTreatment | CVType | Åtgärdskod / Det kan förekomma ett flertal åtgärder och därmed åtgärdskoder kopplade till ett sjukdomsfall. Dessa / uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. Åtgärder / ska inte lämnas för primärvård och psykiatrisk vård. / Enligt socialstyrelsens klassifikation av vårdåtgärder (KVÅ). / Code: / codesystem:” 1.2.752.116.1.3.2.1.4” / Obligatoriskt fält under nämnda förutsättningar. | 0..* |
| ../../../ATC | CVType | ATC kod / Läkemedel enligt ATC-kod. / Betydande kostnader för läkemedel i en behandling kan specificerat med ATC-koder. / Code: / codesystem: ”1.2.752.129.2.2.3.1.1” / Frivillig uppgift. | 0..* |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| Svar |  |  |  |

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeEnum | Status enligt generell regel. | 1..1 |
| comment | string | Meddelande enligt generell regel | 0..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraintsMock).
I schematronfilen contraintsMock.xml är id på regeln förkortad med R innan numret (tabellen nedan anger ÖR då R krockar med förkortningen för referenser i detta dokument).
Gemensamt för alla övriga regler som valideras mha schematron är att om fältet inte är obligatoriskt och inte finns med i nyttolasten så kommer regeln att inte ge ett fel.
Tjänstekonsument och tjänsteproducent ska validera begäran enligt följande regler:

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |

| ÖR1 [sch] | ProcessClaimSpecification | Inga tomma element tillåts |
| :--- | :--- | :--- |
| ÖR2 [sch] | issueDate (Fakturaunderlag vård, datum och tid) | Datumet får inte vara i framtiden |
| ÖR3 [sch] | supplierParty / (id säljare och köpare) | Obligatoriskt med 1.3.7 (organisationsnummer) för root, och 10 tecken för extension. / Man kan även skicka med ett sekundärt 2.51.1.6 (GLN). / Med ett värde på 13 tecken för 2.51.1.6. |
| ÖR4 [sch] | typeOfInvoice (fakturatyp) | Giltiga värden: 380, 381 |
| ÖR5 [sch] | payableAmount (fakturabelopp) | Total summa fakturerat i fakturan är fel. / Fakturabelopp och fakturerat belopp netto skiljer sig åt med mer än en krona. |
| ÖR6 [sch] | PatientCareInvoiceNetAmount (Patient vårdtillfälle, fakturerat belopp netto) | Nettofakturerat är fel. / patientCareInvoiceNetAmount = patientCareInvoiceGrossAmount + patientCareCharge – patientCareAllowance – patientCareDiscount |
| ÖR7 [sch] | patientId (patient id) | Endast ett av personnummer, samordningsnummer, reservnummer tillåtet |
| ÖR8 [sch] | county (län) | Exakt 2 tecken. |
| ÖR9 [sch] | municipality (kommun) | Exakt 4 tecken. |
| ÖR10 [sch] | gender (kön) | Giltiga värden: / 0,1,2,9 |
| ÖR11 [sch] | careContactId (vårdkontakt id) | Obligatoriskt för slutenvård |
| ÖR12[sch] | typeOfAgreement (betalningsförbindelsetyp avtal) | Giltiga värden: 1, 2, 3 |
| ÖR13 [sch] | typeOfChapter (betalningsförbindelsetyp kapitel) | Giltiga värden: / 1, 2, 3, 4, 5, 6, 7 |
| ÖR14 [sch] | typeOfReimbursement (Betalningsförbindelse, ersättningstyp) | Giltiga värden: 1, 2 |
| ÖR15 [sch] | typeOfCare (slutenvård öppenvård) | Giltiga värden: / 01, 02 |
| ÖR16 [sch] | typeOfVisit (typ av besök) | Giltiga värden: / 1, 2 |
| ÖR17 [sch] | careVisitDate (Inskrivnings-/besöksdatum för vård) | Får inte vara senare än bilagedatum |
| ÖR18 [sch] | careDischargeDate (utskrivningsdatum från vård) | Får inte vara tidigare än Besöksdatum |
| ÖR19 [sch] | invoicePeriod (fakturaperiod) | Både start och slutperiod ska vara med i Fakturaperiod |
| ÖR20 [sch] | invoicePeriod.start och invoicePeriod.end | Fakturaperiod får inte vara senare än bilagedatumet |
| ÖR21 [sch] | invoicePeriod.end | Fakturaperiod slutdatum får inte vara tidigare än fakturaperiod startdatum |
| ÖR22 [sch] | professionCodeForHealthcare (yrkeskod) | Giltiga värden: / AP AT AU BM BA DT FT HK KP LG LK NA OP OT PS PT RC RS SG SF SJ TH TL US TP TO OV |
| ÖR23 [sch] | professionCodeForHealthcare (yrkeskod) | Yrkeskod är obligatoriskt för öppenvård |
| ÖR24 [sch] | productCategory (produktkategori) | Giltiga värden: / 01, 02, 03, 04, 99 |
| ÖR25 [sch] | priceList (prislista, kod) | Giltiga värden: / 1, 2, 3, 4, 5, 6 |
| ÖR26 [sch] | patientSpecificCareTotalAmount (Patientspecifik åtgärd, totalbelopp) | Summa ”Patientspecifik åtgärd, totalbelopp” är fel. / patientSpecificCareTotalAmount = numberOfPatientSpecificCare * patientSpecificCarePrice |
| ÖR27 [sch] | patientCareInvoiceGrossAmount (Patient vårdkontakt, fakturerat belopp brutto) | Brutto fakturerat är fel. / PatientCareInvoiceGrossAmount = DRGPrice + ExtendedAllowanceCareTime + ExtendedAllowanceCost + PatientSpecificCareTotalAmount – OutPatientCareFeePaid |
| ÖR28 [sch] | patientCareInvoiceNetAmount (Patient vårdkontakt, fakturerat belopp netto) | Netto fakturerat är fel. / patientCareInvoiceNetAmount = patientCareInvoiceGrossAmount + patientCareCharge – patientCareAllowance – patientCareDiscount |
| ÖR29 [sch] | patientFeeReducedCategory (Patientavgift nedsatt, kategori) | Giltiga värden: / 01, 02, 03, 04, 05, 99 |
| ÖR30 [sch] | careLevel (vårdnivå) | Giltiga värden: / 1, 2, 3, 4 |
| ÖR31 [sch] | inPatientCareDiagnosis.mainDiagnosis | Huvuddiagnos är obligatoriskt för slutenvård om inte invoicePeriod har angetts. |
| ÖR32 [sch] | diagnosis (diagnos) | Code och codeSystem ska finnas. / Ersätts av R39 |
| ÖR33 [sch] | diagnosis, treatment, medicalFieldCode (diagnoser, åtgärder) | Diagnoser och åtgärder får ej förekomma när medicalFieldCode börjar med 9 |
| ÖR34 [sch] | listingLocalAuthoritiesNumber.root(listningsregion) | Måste vara satt till oid för hsaid (1.2.752.129.2.1.4.1) |
| ÖR35 [sch] | currency (valuta) | Valuta måste vara SEK, codeSystem måste vara 1.0.4217 |
| ÖR36 [sch] | reasonForCredit (orsak till kreditering) | Giltiga värden: / 1, 2, 3, 4, 5, 6, 7, 8, 9 |
| ÖR37 [sch] | id (fakturaunderlag id) | Id måste börja på ZVF samt ha en längd på 23 tecken. |
| ÖR38 [sch] | careDischargeDate (utskrivningsdatum) | Utskrivningsdatum får inte vara senare än Bilagedatum |
| ÖR39 [sch] | CVType.code, CVType.codeSystem | Verifierar att code och codeSystem är satt för alla CVType. / Undantag för county och municipality som har egna regler (ÖR40 och ÖR41) / Undantag även för DRGCode som har en egen regel ÖR42 |
| ÖR40 [sch] | counte.code, county.codeSystem | code och codeSystem måste ha giltiga värden. / Undantag för code 99 då codeSystem ej skickas med. |
| ÖR41 [sch] | municipality.code, municipality.codeSystem | code och codeSystem måste ha giltiga värden. / Undantag för code 9901 då codeSystem ej skickas med. |
| ÖR42 [sch] | DRGCode | Verifierar att DRGCode har originalText satt och endast originalText. |
| ÖR43 [sch] | lineID | Verifierar att lineId är unikt och i stigande ordning. |
| ÖR44 [sch] | categorization | Verifierar att minst en patientspecifik åtgärd eller DRG-kostnad anges. |
| ÖR45 [sch] | DRGCost | Verifierar att DRGPrice och DRGCode anges för varje DRGCost |
| ÖR46 [sch] | customerParty | Obligatoriskt med 1.3.7 (organisationsnummer) för root, och 10 tecken för extension. / Man kan även skicka med ett sekundärt 2.51.1.6 (GLN). / Med ett värde på 13 tecken för 2.51.1.6. |
| ÖR47 [sch] | patientSpecificCare | Om patientSpecificCare finns så måste elementen patientSpecificCareCode, patientSpecificCareCodeName, patientSpecificCarePrice samt numberOfPatientSpecificCare finnas. |
| ÖR48 [sch] | identification / (id säljare och köpare) | Verifierar längd på identification/extension som skall vara 10 tecken för 1.3.7 och 13 tecken för 2.51.1.6 |
| ÖR49 [sch] | medicalFieldCode | Verifierar medicalFieldCode gentemot mvo.xml som skall stämma överens med Socialstyrelsens register över godkända medicinska verksamhetskoder. |
| ÖR50 [sch] | agreementInRiksavtalet | Giltiga värden: 3.1, 3.2, 4.1, 4.3, 4.4 |
| ÖR51 [sch] | inCare (Antal vårddagar) | Obligatoriskt vid slutenvård. |
| ÖR52 [sch] | referenceToProcessClaimSpecificationId | Obligatoriskt vid kreditfaktura. |
|  |  |  |

| Regler i svaret | Regler i svaret | Regler i svaret |
| :--- | :--- | :--- |
| OK |  | Transaktionen har utförts enligt uppdraget i begäran. |
| INFO |  | Används ej i ProcessClaimSpecification |
| ERROR |  | Transaktionen har INTE kunnat utföras enligt anrop p.g.a. logiskt fel. / Fältet comment ska sättas till den rapport som skapas av schematron-reglerna eller schema-validering. / Meddelandet anses inte mottaget. / Exempel meddelande i comment (schematron): / Error: Total summa: 729001 fakturerat i fakturan är fel / Location: / /urn1:ProcessClaimSpecification/urn1:claimSpecification
/urn2:payableAmount/urn2:amount
Id: R5 / Test: . = sum(//urn2:invoicedAmountDetails/ urn2:patientCareInvoiceNetAmount/urn2:amount) |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav.

#### Annan information om kontraktet
Ingen övrig information om kontraktet.
