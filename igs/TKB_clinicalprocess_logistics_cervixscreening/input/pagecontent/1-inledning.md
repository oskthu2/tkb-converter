# 1 Inledning

Källa: *Tjänstekontraktsbeskrivning, Screeningstöd livmoderhals*, version 1.0_RC4 (2020-12-09), [TKB_clinicalprocess_logistics_cervixscreening.docx](TKB_clinicalprocess_logistics_cervixscreening.docx).

### Dokumentinformation

| Dokument | Tjänstekontraktsbeskrivning, Screeningstöd livmoderhals |
| :--- | :--- |
| Domän | clinicalprocess: logistics: cervixscreening (vård- och omsorg kärnprocess: logistik: livmoderhalsscreening) |
| Version | 1.0_RC4 |
| Dokument-id | ARK_0015 |
| Datum | 2020-12-09 |

#### Revisionshistorik

| Version | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- |
| 0.50 | 2018-10-05 | Första version | Michael Schneider |  |
| 0.51 | 2019-01-23 | Lagt till beskrivningar i tjänstedomänens meddelande | Michael Schneider |  |
| 0.60 | 2019-01-29 | Korrigeringar efter informatik granskning / Tagit bort termer och beskrivning / Kortat ned beskrivning i avsnitt 3.1 Flöden – hänvisning till IS / Kortat ned avsnitt 4.1 Informationssäkerhet och juridik – hänvisning till IS och Legal analys / Avsnitt 4.2 Icke funktionella krav – borttagen / Lagt till fältregler / Lagt till tekniskt domännamn / Regelverk för CVType | Michael Schneider | Emmy Damberg / / Katrin Abdulal |
| 0.61 | 2019-01-30 | Ändrat svenskt namn/kortnamn / Uppdaterad MIM-schema | Michael Schneider |  |
| 0.62 | 2019-02-01 | Korrigerat allmän regel R1 | Michael Schneider |  |
| 0.70 | 2019-02-08 | Diverse rättningar och korrigeringar i avsnittet 3.1 Flöden / Korrigerat avsnitt 3.3 Obligatoriska kontrakt – samma namn på flödesbeskrivning som i avsnitt 3.1 Flöden / Lagt till formatregel för Datum / Korrigerat beskrivning personId/IIType / Korrigerat beskrivning sendingRegion/RegionType / Rättat felaktig formatangivelse registeredAt/DateType / Korrigerat beskrivning riskGroups/RiskGroupType / Rättat felaktig formatangivelse inclusionDate/DateType / Korrigerat beskrivning specimen/SpecimenType / Korrigerat beskrivning HPVstatusList/HPVStatusType / Reviderat skrivningar om SLA | Michael Schneider |  |
| 0.75 | 2019-02-27 | Modifierat sekvensdiagram – lagt till aktör (manuell sekretessprövning) | Michael Schneider |  |
| 0.76 | 2019-03-12 | Bytt namn på klassen Riskgrupp till Uppföljningsgrupp och ändrat engelskt nanm | Michael Schneider |  |
| 0.77 | 2019-03-19 | Förtydligat att uppföljningsgrupp innebär det som vårdprogrammet kallar kontrollfil. / Rättat beskrivning av fältet HPVstatusList/value i avsnitt 6.1.3. | Emmy Damberg |  |
| 0.80 | 2019-03-20 | Korrigeringar införda efter granskning av NMT | Michael Schneider |  |
| 0.81 | 2019-04-11 | Lagt till SNOMED CT koder / Lagt till OID SNOMED CT kod (1.2.752.116.2.1.1) / Uppdaterat Flöde – Kvinna flyttar mellan regioner | Michael Schneider |  |
| 1.0_RC1 | 2019-04-25 | Version för (I, S och T) kvalitetssäkring | Michael Schneider |  |
| 1.0 | 2019-05-22 | Granskad och godkänd version | Michael Schneider | A&R |
| 1.0.1 | 2019-06-19 | Lagt till referens till kodverket kv/län 1.2.752.129.2.2.1.18 (verksamhetsadressering) | Michael Schneider | Thomas Siltberg / (TK-förvaltningen) |
| 1.0.2 | 2919-09-15 | Ny klass för att förmedla nästa planerade kallelsetillfälle - PlannedInvitationType | Thomas Fafoutis |  |
| 1.0_RC2 | 2019-09-25 | Version för (I, S och T) kvalitetssäkring | Michael Schneider |  |
| 1.0_RC3 | 2019-10-21 | Version för I&S granskning. T granskning godkänd sedan tidigare för version 1.0_RC2 | Michael Schneider |  |
| 1.0_RC4 | 2020-10-20 | Lagt till ett förtydligande om att urvalet av SNOMED CT koder kan komma att förändras vid förändringar i vårdprogrammet / I avsnitt 4.3.1.1. användes fältnamnet comment istället för resultText / Lag till ny orsak till exkludering: patient ej lämplig för åtgärd på grund av medicinskt tillstånd | Oscar Möller |  |

#### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Screeningstöd livmoderhals | Obligatoriskt | Bitbucket |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Informationsspecifikation | Finns på Webben | Bitbucket |
| R4 | Lista över vanligt förekommande kodverk och identifierare | Finns på Webben | https://bitbucket.org/rivta-domains/best-practice/wiki/ListOfCommonlyUsedCodeSystems |
| R5 | Nationellt vårdprogram för prevention av livmoderhalscancer | Finns på webben | https://www.cancercentrum.se/samverkan/vara-uppdrag/prevention-och-tidig-upptackt/gynekologisk-cellprovskontroll/vardprogram/gallande-vardprogram/ |
| R6 | Sammanfattning av legal analys screeningstöd | Finns på webben | Bitbucket |
| R7 | Verksamhetsregelverk | Finns på webben | Bitbucket |

#### Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| Anslutningspunkt (AP) | Den server som hanterar inkommande anrop som förmedlats av en tjänsteplattform. Anslutningspunkten uppvisar ett server-certifikat som är betrott av tjänsteplattformen. | Se referens R2 |
| Källsystem (KS) | Det verksamhetssystem där originalinformationen skapas (t.ex. en driftsinstans av ett Kallelsesyste, LIS eller Journalsystem. | Se referens R2 |
| Tjänstekonsument (TK) | Informationssystem där aktörens agerande leder till automatiskt informationsutbyte med andra system En Tjänstekonsument använder en SOA-tjänst som i sin tur följer ett tjänstekontrakt. | Se referens R2 |
| Tjänsteproducent (TP) | Hanterar logik och format så som specificeras av ett tjänstekontrakt. | Se referens R2 |

#### Kompletterande dokument i källan

| Dokument | Fil |
|---|---|
| Arkitekturella beslut – Screeningstöd livmoderhals (referens R1) | [AB_clinicalprocess_logistics_cervixscreening.docx](AB_clinicalprocess_logistics_cervixscreening.docx) |
| Informationsspecifikation (referens R3) | [IS_clinicalprocess_logistics_cervixscreening.docx](IS_clinicalprocess_logistics_cervixscreening.docx) |
| Legal analys av Screeningstöd livmoderhals (jfr referens R6) | [Legal_analys_av_Screeningstod_livmoderhals.docx](Legal_analys_av_Screeningstod_livmoderhals.docx) |
| Självdeklaration för tjänstekonsument | [Sjalvdeklaration_for_Tjanstekonsument_ProcessCervixScreening.docx](Sjalvdeklaration_for_Tjanstekonsument_ProcessCervixScreening.docx) |
| Självdeklaration för tjänsteproducent | [Sjalvdeklaration_for_Tjansteproducent_ProcessCervixScreening.docx](Sjalvdeklaration_for_Tjansteproducent_ProcessCervixScreening.docx) |
| Självdeklaration för etablering av samverkan | [Sjalvdeklaration_Etablering_av_Samverkan_ProcessCervixScreening.docx](Sjalvdeklaration_Etablering_av_Samverkan_ProcessCervixScreening.docx) |

Referenserna R1, R3, R6 och R7 anges i TKB:n bara som "Bitbucket". R7 (Verksamhetsregelverk) finns inte i källan. Källan innehåller också en testsvit och arbetsmaterial (Visual Paradigm-modell), som inte publiceras här; testsvitens schematron-regler finns under avsnitt 7.

Detta är beskrivning av tjänstekontraktet i tjänstedomänen

clinicalprocess:logistic:cervixscreening.

Tjänstekontraktet är baserad på RIVTA 2.1 [R2] och reglerad genom arkitekturella beslut [R1].

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

Syftet med denna domän är att specifikt kommunicera och utbyta information relaterat till Nationellt vårdprogram för prevention av livmoderhalscancer ([R5]) mellan sjuvårdhuvudmännens kallelsekanslier.

Informationen är nödvändig att utbyta i syfte att säkerställa en obruten vårdkedja för att hälso- och sjukvården skall kunna erbjuda screening för livmoderhalscancer till kvinnor i åldern 23-64 år.  Oaktat vart en kvinna är folkbokförd. Eller vart en kvinna beslutar sig (via det fria vårdvalet) för att lämna ett cellprov eller genomgå eventuell nödvändig vård och behandling.

### 1.1 Svenskt namn

vård- och omsorg kärnprocess: logistik: livmoderhalsscreening

#### 1.1.1 Svenskt kortnamn

Livmoderhalsscreening
