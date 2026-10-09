## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

clinicalprocess: healthcond: description

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den ska fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Vård- och omsorg kärnprocess:hantera hälsorelaterade tillstånd:tillståndsbeskrivning

Tillståndsbeskrivning

### Beskrivning
Denna domän hantera information som beskriver patientens hälsotillstånd, till exempel vårdanteckningar, diagnoser, uppmärksamhetsinformation och funktionsstatus. Domänen syftar till att tillmötesgå vårdprofessionens behov av direktåtkomst till patientens vårdinformation (så kallad sammanhållen journalföring) såväl som patientens egen åtkomst till sin vårdinformation.

Tjänstekontrakten i denna domän hanterar specifikt patientens journalanteckningar, och klinisk information som beskriver patientens hälsotillstånd, exempelvis vårdanteckningar, diagnoser, uppmärksamhetsinformation (som innefattar bland annat allvarliga allergier och allvarliga sjukdomar) samt funktionsstatus. Domänens kontrakt stödjer tjänsteinteraktioner där konsumenten är i behov av att läsa informationen från ett eller flera källsystem.

### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | AB_clinicalprocess_healthcond_description | Obligatoriskt | [Bilaga](AB_clinicalprocess_healthcond_description.docx) |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Bilaga Mappningar_GetCareDocumentation.xslx | - | [Bilaga](Bilaga_Mappningar_GetCareDocumentation.xlsx), återgiven i [8 Bilaga Mappningar](8-bilaga-mappningar.html#mappningar-getcaredocumentation) |
| R4 | Bilaga Mappningar_GetDiagnosis.xslx | - | [Bilaga](Bilaga_Mappningar_GetDiagnosis.xlsx), återgiven i [8 Bilaga Mappningar](8-bilaga-mappningar.html#mappningar-getdiagnosis) |
| R5 | Bilaga Mappningar_GetAlertInformation.xslx | - | [Bilaga](Bilaga_Mappningar_GetAlertInformation.xlsx), återgiven i [8 Bilaga Mappningar](8-bilaga-mappningar.html#mappningar-getalertinformation) |
| R6 | ISO8601-standarden för tidsformat | Finns på Webben | http://en.wikipedia.org/wiki/ISO_8601 |
| R7 | RIV Tekniska  Anvisningar / Översikt. Version 2.0.4 | Finns på Webben | http://rivta.se/documents/ARK_0001/ |
| R8 | Tabell över godkända tjänstedomäner | Finns på Webben | http://rivta.se/domains/ |
| R9 | Senaste version av SOSFS 2016:40 Socialstyrelsens föreskrifter och allmänna råd om journalföring och behandling av personuppgifter i hälso- och sjukvården | Finns på Webben | https://www.socialstyrelsen.se/kunskapsstod-och-regler/regler-och-riktlinjer/foreskrifter-och-allmanna-rad/konsoliderade-foreskrifter/201640-om-journalforing-och-behandling-av-personuppgifter-i-halso--och-sjukvarden/ |
| R10 | Journalföring och behandling av personuppgifter i hälso- och sjukvården - Handbok vid tillämpningen av Socialstyrelsens föreskrifter och allmänna råd (HSLF-FS 2016:40) om journalföring och behandling av personuppgifter i hälso- och sjukvården. | Finns på Webben | https://www.socialstyrelsen.se/globalassets/sharepoint-dokument/artikelkatalog/foreskrifter-och-allmanna-rad/2016-4-44.pdf |
| R11 | DocBook | Finns på Webben | https://docbook.org/ / https://docbook.org/schemas/ / https://docbook.org/tools/ |
| R12 | Apache Commons Text StringEscapeUtils | Finns på Webben | https://commons.apache.org/proper/commons-text/apidocs/org/apache/commons/text/StringEscapeUtils.html |
| R13 | Kodverkslistan | Finns på Webben | https://inera.atlassian.net/wiki/spaces/KINT/pages/2648506471/Kodverk+och+urval+i+de+nationella+tj+nstekontrakten |
| R14 | Lista över identifierare | Finns på Webben | https://inera.atlassian.net/wiki/spaces/KINT/pages/468746902/Identifierare+i+nationella+tj+nstekontrakt |
| R15 | Bilaga Gemensamma_typer_7.pdf | - | [Bilaga](Bilaga_Gemensamma_typer_7.pdf) |
| R16 | RIV Tekniska Anvisningar - Binära bilagor | Finns på Webben | http://rivta.se/documents/ARK_0038/ |
| R17 | RIV Tekniska Anvisningar - Parallella huvudversioner av ett tjänstekontrakt | Finns på Webben | http://rivta.se/documents/ARK_0040/ |
| R18 | ADL-Taxonomin® – en bedömning av aktivitetsförmåga | - | https://www.arbetsterapeuterna.se/foerbundet/webbutik-och-gratismaterial/adl-taxonomin-en-bedoemning-av-aktivitetsfoermaaga/?gclid=CjwKCAiAi_D_BRApEiwASslbJydARYULhS7YIycf5gdsOw9jqCQRMO27Npd8ouxMFl5u_QrHhqbUahoC0gAQAvD_BwE |

### Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| K | Tjänstekonsument | Se referens R7 |
| P | Tjänsteproducent | Se referens R7 |
