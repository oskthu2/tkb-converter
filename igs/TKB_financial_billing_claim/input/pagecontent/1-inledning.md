# 1 Inledning

Källa: *Tjänstekontraktsbeskrivning Utomlänsfakturering*, version 1.1 (2025-10-13), [TKB_financial_billing_claim.docx](TKB_financial_billing_claim.docx).

### Dokumentinformation

| Dokument | Tjänstekontraktsbeskrivning Utomlänsfakturering (financial:billing:claim) |
| :--- | :--- |
| Svenskt namn | operativt processtöd: samordna resurser över verksamhetsstrukturer: utomlänsfakturering |
| Version | 1.1 |
| Datum | 2025-10-13 |

#### Revisionshistorik

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
| 1.1_RC1 | 2025-07-17 | Bente Sjöberg-Silfverling | Uppdaterat version, länkar och ändrat landsting till region i dokumentet. / Ändrat ’Referens till fakturaunderlag vård id’ till obligatorisk med ny schematronregel ÖR52. / Ändrat schematronregel ÖR5 så att 'Patient vårdkontakt, fakturerat belopp netto' och 'Fakturabelopp' kan skiljas åt med upp till en krona ifall fakturabelopp avrundats till heltal. / Ändrat kardinalitet för fältet ’unspecified’ under ’paymentCommitment’ till 0..*. / Uppdaterat tillåtna värden för fältet ’Avtalspost i Riksavtalet’ efter kapiteländring i nya Riksavtalet. / Utökat beskrivning för ’Vårdenhets id’ att även innefatta medicinskt ansvarig vårdenhet utöver vårdenhet där vård utförts. / Uppdaterat beskrivning för ’Betalningsförbindelsetyp avtal’, ’Betalningsförbindelsetyp kapitel’, ’Betalningsförbindelsetyp id’, ’DRG produktkod’, ’Offentlig vård’, ’Remiss-id’, ’Referens till faktura’ och ’Vårdnivå’. |
| 1.1 | 2025-10-13 | Bente Sjöberg-Silfverling | Mindre ändringar efter kvalitetsgranskning. |

#### Referenser

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

#### Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |
|  |  |  |

#### Ordlista

| Ord | Betydelse | Kommentar |
| :--- | :--- | :--- |
| Hemregion / Synonymer: / Köpande region, köpare | Den region där patienten vid vårdtillfällets inledning är folkbokförd. Ett vårdtillfälle i sluten vård avgränsas av in- och utskrivningen vid ett sjukhus. | Definition enligt Riksavtal för utomlänsvård och kommentarer [R9] |
| Vårdregion / Synonymer: / Säljande region, säljare, leverantör | Den region där en utomlänspatient undersöks eller behandlas. | Definition enligt Riksavtal för utomlänsvård och kommentarer [R9] |
| Köpande region / Köpare / Synonym: / Hemregion | Region som ska betala för vården då en patient från regionen har vårdats hos leverantören. | I dokumentet används köpande region, köpare och hemregion synonymt. |
| Säljande region / Säljare / Synonymer: Vårdregion, Leverantör | Region som utfört vårdinsats på en utomlänspatient och som därmed har rätt att fakturera patientens hemregion. | I dokumentet används säljande region, säljare, vårdregion och leverantör synonymt. |
| Leverantör / Synonymer: Vårdregion, Säljande region, Säljare | Se säljande region / säljare | I dokumentet används termen leverantör i informationsmodellen samt i klass- och attributbeskrivningar, då detta är en term som används i beskrivningar av standardiserade meddelande för e-handel (termen kommer från SFTI - Single Face To Industry). |

#### Kompletterande dokument i källan

| Dokument | Fil |
|---|---|
| Arkitekturella beslut – Underlag för Utomlänsfakturering (referens R1) | [AB_financial_billing_claim.docx](AB_financial_billing_claim.docx) |
| Informationsspecifikation Utomlänsfakturering (referens R7) | [IS_financial_billing_claim.docx](IS_financial_billing_claim.docx) |
| Verksamhetskodslista 2006 | [Verksamhetskodslista2006.pdf](Verksamhetskodslista2006.pdf) |

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

financial: billing: claim

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

operativt processtöd:samordna resurser över verksamhetsstrukturer:utomlänsfakturering

Utomlänsfakturering
