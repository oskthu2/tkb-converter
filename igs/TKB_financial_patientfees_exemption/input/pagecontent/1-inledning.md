# 1 Inledning

Källa: *Högkostnadsskydd*, tjänstekontraktbeskrivning version 1.0 (2024-03-25), [TKB_financial_patientfees_exemption.docx](TKB_financial_patientfees_exemption.docx).

### Dokumentinformation

| Dokument | Högkostnadsskydd (Tjänstekontraktbeskrivning) |
| :--- | :--- |
| Domän | financial: patientfees: exemption (Nationellt högkostnadsskydd) |
| Version | 1.0 |
| Datum | 2024-03-25 |

#### Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.0_RC1 |  | 2017-04-16 | utkast | Ranjdar Fallyih |  |
| 1.0_RC1 |  | 2017-08-15 | Uppdaterat fältregeltabell | Khaled Daham |  |
| 1.0_RC1 |  | 2017-09-07 | Uppdaterat fältregeltabell | Khaled Daham |  |
| 1.0_RC1 |  | 2017-10-30 | Lagt till giltighetstid för ett frikort / Uppdaterat adressering samt beskrivning av reservidentitet för engagemangindex / Uppdaterat MIM / Uppdaterat beskrivning för alla datumfält / Lagt till exempel under test-suite/ GetExemptionStatus/test/positive | Khaled Daham |  |
| 1.0_RC1 |  | 2017-12-14 | Uppdaterat beskrivning och bild under övriga regler | Khaled Daham |  |
| 1.0_RC1 |  | 2018-01-16 | Uppdaterat schematron-regler i constraints.xml samt lagt till fler exempelfiler under test-suite/ | Khaled Daham |  |
| 1..0_RC1 |  | 2018-02-14 | Uppdaterat MIM / Lagt till support-lib för SOAPui / Uppdaterat beskrivningar. | Khaled Daham |  |
| 1.0_RC1 |  | 2018-03-09 | Tagit bort registeredBy / Ändrat dateOfRegistration till TimeStampType | Khaled Daham |  |
| 1.0_RC1 |  | 2018-05-14 | Ändrar beskrivning för careGiver och careUnit från registrerad enhet till besökt enhet. / Lagt till akutalitetskrav samt samtidighetskrav. / Uppdaterat kravet på last. / Förtydligat kravet på adressering. / Förtydligat vilka belopp som får skickas (inga makulerade t.ex). / Lagt till en schematron-regel som kontrollerar belopp. / Lagt till validering av constraints.xml / Lagt till riktlinjer för hur nationellt reservId skall hanteras | Khaled Daham |  |
| 1.0_RC1 |  | 2018-06-01 | Korrigerat exempelfiler, testfall samt test-svit | Khaled Daham |  |
| 1.0_RC1 |  | 2019-04-16 | Förtydligande kring adressering. | Khaled Daham |  |
| 1.0_RC2 |  | 2020-04-26 | Kommunikationsmönstret ändrat från direktåtkomst (sammanhållen journalföring) till utlämnande. Tjänstekontraktet GetExemptionStatuses är därmed ändrat från synkront till asynkront där dess begäran och svar delats upp i två separata tjänstekontrakt – RequestExemptionStatuses och ProcessExemptionStatuses. | Thomas Fafoutis |  |
| 1.0_RC3 |  | 2020-09-15 | Krav på kontroll av spärr borttaget, p g a byte av kommunikationsmönster | Thomas Fafoutis |  |
| 1.0_RC3 |  | 2021-02-08 | Komplettering om header, skickad av aggregerade tjänster (ProcessingStatus) | Thomas Fafoutis |  |
| 1.0_RC3 |  | 2021-05-20 | Tillägg till adresseringsmönster för att stödja agenter | Thomas Fafoutis |  |
| 1.0_RC3 |  | 2023-05-02 | Korrigerat kardinalitet för transaktionernas tidsstämplar i MIM | Thomas Fafoutis |  |
| 1.0_RC4 |  | 2023-10-10 | Förtydliganden kring hur attributet requestId ska förmedlas. / Ändrat kardinalitet för IIType.extension [1..1]->[1..0]. / Frikortsnummer tillagt. | Thomas Fafoutis |  |
| 1.0 |  | 2024-03-27 | Korrigerat fel i fältet serviceDomain i kap 4.2. Namnrymden ska ha ”:” mellan samtliga delar | Thomas Fafoutis |  |

#### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | AB_financial_patientfees_exemption.docx | Obligatoriskt | Bifogad fil |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | IS_strategicresourcemanagement.persons.person.docx | Informationsspecifikation Personuppgifter | Tjänstedomän personuppgifter |
| R4 | Ärendehantering | För att rapportera fel eller otydligheter kan man skapa ärenden för domänen på följande bitbucket-länk. | Ärendehantering för högkostnadsskydd |
| R5 | IS_financial_patientfees_exemption.docx | Informationsspecifikation | Bifogad fil |
| R6 | TKB_itintegration_engagementindex.docx | Tjänstekontraktsbeskrivning för EngagemangsIndex | Tjänstedomän engagemangsindex |
| R7 | Flera dokument | Information om Personuppgiftstjänsten. | Personuppgiftstjänst |
| R8 | RIVTA Anvisningar Basic Profile Valfria tillägg 2.1 | I Kapitel 3 finns vidare information om den header (ProcessingStatus) som returneras av aggregerade tjänster | https://inera.atlassian.net/wiki/spaces/RTA/pages/3632899/RIV+Tekniska+Anvisningar+Basic+Profile+Valfria+till+gg+2.1 |

#### Begrepp och termer

| Begrepp | Beskrivning |
| :--- | :--- |
| Personidentifierare | En identitetsbeteckning för att identifiera person, här i IT-system. Exempel: personnummer, samordningsnummer eller reservidentitet. |
| Personnummer | För varje folkbokförd person i Sverige fastställer Skatteverket ett personnummer som identitetsbeteckning. |
| Reservidentitet (även kallat reservnummer) | Tillfällig identitetsbeteckning för individ då säkerställt person- eller samordningsnummer saknas, t.ex. då individens identitet inte kan fastställas, vid vård i katastrofsituationer mm. |
| Lokal reservidentitet | Reservidentiteter som ges ut och hanteras lokalt i en organisation, t.ex. i ett landsting eller en kommun. |
| Individs huvudidentitet | Den nu gällande (aktuella) personidentifieraren för en individ. / Exempel1: En person har haft ett samordningsnummer, men får vid senare tillfälle ett personnummer. Personnumret blir personens nya huvudidentitet. / Exempel2: En patient i vården som inte är folkbokförd i Sverige får ett nationellt Reservid tilldelat hos en vårdgivare, eftersom patienten saknar personnummer/samordningsnummer. Senare konstateras hos vårdgivaren att patienten också haft en lokal reservidentitet där man dokumenterat en tidigare vårdkontakt. Vårdgivaren knyter den lokala lokal reservidentiteten till patientens nationella ReservId, vilket är patientens huvudidentitet. |
| Kopplade personidentifierare, kopplingsinformation | Flera personidentifierare för samma individ har kopplats samman i en IT-tjänst. Exempel: en patient har tidigare registrerats på ett nationellt ReservId (NRID), men identifieras senare med hens personnummer. NRID kopplas till patientens personnummer i en stödtjänst för personuppgifter. |

#### Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| Tjänstekonsument (K) | Informationssystem där aktörens agerande leder till automatiskt informationsutbyte med andra system (t.ex. e-tjänst eller journalsystem). En Tjänstekonsument använder en SOA-tjänst som i sin tur följer ett tjänstekontrakt. | Se referens R2 |
| Anslutningspunkt (AP) | Den server som hanterar inkommande anrop som förmedlats av en tjänsteplattform. Anslutningspunkten uppvisar ett server-certifikat som är betrott av tjänsteplattformen. | Se referens R2 |
| Tjänsteproducent (P) | Hanterar logik och format så som specificeras av ett tjänstekontrakt. | Se referens R2 |
| Källsystem (KS) | Det verksamhetssystem där originalinformationen skapas (t.ex. en driftsinstans av ett journalsystem). | Se referens R2 |
| PNR | Personnummer | Se referens [R3] |
| SNR | Samordningsnummer | Se referens [R3] |
| LRID | Reservidentitet | Se referens [R3] |
| NRID | Nationell ReservID | Se referens [R3] |

#### Kompletterande dokument i källan

| Dokument | Fil |
|---|---|
| Arkitekturella beslut | [AB_financial_patientfees_exemption.docx](AB_financial_patientfees_exemption.docx) |
| Informationsspecifikation | [IS_financial_patientfees_exemption.docx](IS_financial_patientfees_exemption.docx) |
| Regelverk för Nationellt Högkostnadsskydd | [Regelverk_for_Nationellt_Hogkostnadsskydd.docx](Regelverk_for_Nationellt_Hogkostnadsskydd.docx) |
| Utkast PM Legala förutsättningar – nationellt högkostnadsskydd | [Utkast_PM_Legala_forutsattningar_nationellt_hogkostnadsskydd.pdf](Utkast_PM_Legala_forutsattningar_nationellt_hogkostnadsskydd.pdf) |
| Självdeklaration, begärande part (RequestExemptionStatuses) | [SjD_Hogkostnadsskydd_BegarandePart.docx](SjD_Hogkostnadsskydd_BegarandePart.docx) |
| Självdeklaration, utlämnande part (ProcessExemptionStatuses) | [SjD_Hogkostnadsskydd_UtlamnandePart.docx](SjD_Hogkostnadsskydd_UtlamnandePart.docx) |
| Engagemangsindex, uppdateringsregler | [riv_financial_patientfees_exemption_ei_update_constraints.xml](riv_financial_patientfees_exemption_ei_update_constraints.xml) |

Källan innehåller inga XML-exempel. Den innehåller även Visual Paradigm-modeller med exporterade bilder (`docs/work_material/`), SoapUI-testsviter, kodgenereringsfiler och ett oanvänt schema för `interoperability_headers`, som inte publiceras här.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

financial.patientfees.exemption: Högkostnadsskydd

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

Nationellt Högkostnadsskydd

Högkostnadsskydd
