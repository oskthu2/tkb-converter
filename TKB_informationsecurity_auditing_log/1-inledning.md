# 1 Inledning - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* **1 Inledning**

## 1 Inledning

# 1 Inledning

Källa: **Logg – Loggning och uppföljning av åtkomst till patientjournal**, tjänstekontraktsbeskrivning version 2.0.8 (2024-10-24), [TKB_informationsecurity_auditing_log.docx](TKB_informationsecurity_auditing_log.docx).

### Dokumentinformation

| | |
| :--- | :--- |
| Domän | informationsecurity: auditing: log |
| Version | 2.0.8 |
| Datum | 2024-10-24 |

#### Revisionshistorik

| | | | |
| :--- | :--- | :--- | :--- |
| 0.1 | 2012-09-18 | Upprättande | Göran Kristiansson, Logica |
| 0.2 | 2012-09-21 | Uppdatering, komplettering | Björn Skeppner, Inera |
| 0.3 | 2012-10-03 | Uppdaterat datatyper, returvärde och felhantering. | Göran Kristiansson |
| 0.4 | 2012-10-03 | Uppdaterad enligt mall, beskrivande text kompletterad | Björn Skeppner |
| 0.5 | 2012-10-11 | Uppdaterat datatyper så att namnrymd är lika. / Uppdaterat enligt mall. / Har uppdaterat rimlig tillgänglighet till / 99,80% (hämtat från SAD samtycke/patientrelation) | Göran Kristiansson |
| 0.6 | 2012-10-15 | Uppdaterat så 1..* Resource ligger under en datatyp som heter Resources för en tydligare samling av resurser. | Göran Kristiansson |
| 0.7 | 2012-10-23 | Ändrat namn på datatypen vårdgivare från careGiver till careProvider så att det blir enhetligt med tjänsterna samtycke, patientrelation och spärr. / Uppdaterat beskrivningen så att kontraktet inte innefattar de läsande tjänsterna mer än i vissa allmänna delar. | Göran Kristiansson |
| 0.8 | 2012-10-24 | Uppdaterat beskrivning av logisk adressering så att det inte beskriver en viss version av RIVTA. | Göran Kristiansson |
| 0.9 | 2012-10-31 | Lagt till underdomän querying. | Göran Kristiansson |
| 0.91 | 2012-11-05 | Uppdaterat timout för tjänster, beskrivning av åtkomst av äldre åtkomstloggar än 18 månader (kapitel 1.5) mm | Göran Kristiansson |
| 0.92 | 2012-11-13 | Ändrat ActivityType och PurposeType så ett dessa inte används i tjänsterna utan tjänsterna tar dessa som en sträng. Tjänsterna blir då mer framåtkompatibla om nya typer måste läggas till. / Uppdaterat PurposeType typer så att de stämmer med Hsa som de ser ut idag. | Göran Kristiansson |
| 0.93 | 2012-12-04 | Uppdaterad efter synpunkter från Johan Eltes | Björn Skeppner |
| 1.1 | 2014-01-20 | Lagt till CareUnitId som optionellt filter för tjänsterna GetLogsForCareProvider och GetLogsForUser. | Magnus Lexhagen, CGI |
| 1.2 | 2015-01-13 - 2015-02-05 | Nya attribut i GetAccessLogsForPatient samt stöd för aggregerande tjänster. (Björn) / Uppdaterat kardinalitet på objktet AccessLog så att de stämmer enligt loggschemat. (Göran) / Justerat kring aggregering & addresering. (Björn) / Justerad efter granskningskommentarer. (Björn) / Lagt till UserId som optional i GetAccessLogsForPatients. (Göran) / Ändrat datatyper i Accesslog så att dessa stämmer med datatyperna i log. (Göran) | Björn Skeppner, Inera / Göran Kristiansson, CGI |
| 1.2.1 | 2016-09-07 | Förtydligat text avseende adressering och aggregering enligt ärende https://bitbucket.org/rivta-domains/riv.ehr.log/issues/1/kritiska-uppdateringsbehov-av-tkb | Khaled Daham, Carity AB |
| 1.2.2 | 2016-09-09 | Krav på att queuedReportId inte får användas när aggregerande tjänst anropas för GetAccessLogsForPatient. | Khaled Daham, Carity AB |
| 1.2.2 | 2016-09-12 | Förtydligat i kap 2.7 att svar med queuedReportId inte skickas vidare ifrån aggregerande tjänst. | Khaled Daham, Carity AB |
| 2.0 | 2017-03-03 | Uppdaterat till ny TKB-mall, ny datatyp för patientId, lagt till flöden och sekvensscheman, samt tagit bort några tjänstekontrakt. | David Komar, Björn Skeppner, CAG |
| 2.0_RC1 | 2017-03-14 | Uppdaterad efter intern granskning | Björn Skeppner |
| 2.0_RC2 | 2017-06-21 | Felaktig kardinalitet på resultText | Björn Skeppner |
| 2.0.1 | 2018-01-24 | Förtydligande kring aggregering | Björn Skeppner/Khaled Daham |
| 2.0.1 | 2018-04-18 | Testmaterial migrerat från riv.ehr.log | Magnus Söderlind |
| 2.0.2 | 2020-01-20 | Generella förbättringar & förtydliganden i testmaterialet. Justerat brutna länkar etc / QueueTime saknades i datatyp ReportResultType. Justerat felaktiga namn på exempel på returkoder | Magnus Söderlind & Björn Skeppner |
| 2.0.3 | 2020-02-12 | Justerat referenser | Björn Skeppner |
| 2.0.4 | 2020-06-08 | Felaktig referens tidigare till kap 1.5 som ej fanns | Björn Skeppner |
| 2.0.5 | 2021-01-09 | Uppdaterat referens till RecourceType (KV_Informationstyp) samt lagt till referens #7 samt #8 | Björn Skeppner |
| 2.0.6_RC2 | 2022-07-17 | Lagt till 2 nya kontrakt, GetLogsByOrder samt GetFilesForOrderId. Text om aggregerande tjänst är borttaget från kap 3.2 / Förtydligat referensen till ARK_0041 och information om de begränsningar som gäller för loggning inom sammanhållen journalföring | Björn Skeppner |
| 2.0.6_RC3 | 2023-01-19 | Förtydligat referensen till ARK_0041 och information om de begränsningar som gäller för loggning inom sammanhållen journalföring. / Lagt till en regel för att en producent ska verifiera att attributet LogId är unikt. (6.1.3) / Lagt till en regel att en konsument ej får skicka >500 records/anrop (6.1.3) | Björn Skeppner |
| 2.0.6 | 2023-01-29 | Uppdaterat versionsnumret inför produktionssättning | Björn Skeppner |
| 2.0.7_RC1 | 2023-12-18 | Uppdaterat beskrivning av ResultCodeType VALIDATION_ERROR | Emma Fridén |
| 2.0.7_RC2 | 2024-01-16 | Anpassningar för att följa TKB-mall | Emma Fridén |
| 2.0.7_RC3 | 2024-01-24 | Uppdaterade referens (R3) | Emma Fridén |
| 2.0.7 | 2024-02-14 | Skarp version inkluderande: Uppdaterat beskrivning av ResultCodeType VALIDATION_ERROR, Uppdaterade referens (R3) | Emma Fridén |
| 2.0.8 | 2024-10-24 | Återskapa tidigare borttagen SjD (troligtvis av misstag) | Emma Fridén |

#### Referenser

| | | |
| :--- | :--- | :--- |
| #1 | RIV PDL-specifikation / Dokumentet har avpublicerats | RIV Specifikation, http://rivta.se/documents/ARK_0031/PDLiP_RIV_1.0.pdf |
| #2 | PDL | Patientdatalag (2008:355), http://www.regeringen.se/sb/d/6150/a/71234 |
| #3 | HSLF-FS 2016:40 | Socialstyrelsens föreskrifter: / Journalföring och behandling av personuppgifter i hälso- och sjukvården / https://www.socialstyrelsen.se/kunskapsstod-och-regler/regler-och-riktlinjer/foreskrifter-och-allmanna-rad/konsoliderade-foreskrifter/201640-om-journalforing-och-behandling-av-personuppgifter-i-halso–och-sjukvarden/ |
| #4 | RIV TA | RIV Teknisk Anvisning Basic Profile / http://rivta.se/ |
| #5 | RIV Tekniska Anvisningar – Kryptografi | ARK_0036, http://rivta.se/documents/ARK_0036/ |
| #5 | Regel #11, Logiska fel | RIV Tekniska Anvisningar - Tjänsteschema 2.1, http://rivta.se/documents/ARK_0005/ |
| #6 | Arkitekturella beslut | AB_informationsecurity_auditing_log |
| #7 | KV Informationstyp (RecourceType) | Kodverksförvaltningen, KV Informationstyp |
| #8 | Tillämpningsanvisning PDL-loggning | http://rivta.se/documents/ARK_0041 |

#### Kompletterande dokument i källan

| | |
| :--- | :--- |
| Arkitekturella beslut (referens R6) | [AB_informationsecurity_auditing_log.docx](AB_informationsecurity_auditing_log.docx) |
| Informationsspecifikation | [IS_informationsecurity_auditing_log.docx](IS_informationsecurity_auditing_log.docx) |

Självdeklarationer och XML-exempel finns under respektive kontrakt i avsnitt 7. Källan innehåller även SoapUI-testsviter och kodgenereringsfiler, som inte publiceras här.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

informationsecurity: auditing: log

Tjänstekontrakten är baserade på RIVTA 2.1 [R4] och reglerade genom arkitekturella beslut [R6].

Logghanteringstjänsten lagrar information om åtkomstrelaterade händelser från olika system på ett strukturerat sätt, och används av system och tjänster som till exempel NPÖ och Pascal. Syftet är att man i efterhand ska kunna se vem som tagit del av vilken patientinformation.

Tjänstekontrakten för Logghantering säkerställer att uppföljning av åtkomst till journaluppgifter sker på ett enhetligt sätt, och enligt de lagar och förordningar som gäller. Tjänstekontrakten kan göra det möjligt för patienten/medborgaren att själv ta del av åtkomstloggar via till exempel Mina vårdkontakter eller motsvarande tjänst.

### 1.1 Svenskt namn

Loggtjänst

Informationssäkerhet:Uppföljning:Åtkomstlogg

