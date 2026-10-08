## Inledning

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

clinicalprocess: healthcond: actoutcome

Denna domän hanterar information gällande utfall av olika undersökningar och aktiviteter, till exempel laboratoriesvar och bilddiagnostik. Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den ska fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn

Vård- och omsorg kärnprocess: hantera hälsorelaterade tillstånd: utfall av aktivitet

Utfall av aktivitet

### WEB beskrivning

Tjänstedomänen syftar till att tillmötesgå behovet av både patientens och vårdprofessionens direktåtkomst till patientens vårdinformation.

### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R 1 | AB_clinicalprocess_healthcond_actoutcome.docx | Obligatoriskt | [AB_clinicalprocess_healthcond_actoutcome.docx](AB_clinicalprocess_healthcond_actoutcome.docx) |
| R 2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/documents/ |
| R 3 | Bilaga_Gemensamma_typer_4.pdf |  | [Bilaga_Gemensamma_typer_4.pdf](Bilaga_Gemensamma_typer_4.pdf) |
| R 4 | RIV Tekniska Anvisningar Översikt Utgåva E | Finns på Webben | http://rivta.se/documents/ARK_0001/ |
| R 5 | Lista över vanligt förekommande kodverk och identifierare |  | https://inera.atlassian.net/wiki/spaces/KINT/pages/3615655 / https://inera.atlassian.net/wiki/spaces/KINT/pages/468746902 |
| R 6 | CDA-mappning av konsultationsremissvar |  | [Bilaga_MIM_Mappningar_GetReferralOutcome.xlsx](Bilaga_MIM_Mappningar_GetReferralOutcome.xlsx) |
| R 7 | CDA-mappning av labbsvar |  | [Bilaga_MIM_Mappningar_GetLaboratoryOrderOutcome.xlsx](Bilaga_MIM_Mappningar_GetLaboratoryOrderOutcome.xlsx) |
| R 8 | Handbok vid tillämpningen av Socialstyrelsens föreskrifter och allmänna råd (HSLF-FS 2016:40) om journalföring och behandling av personuppgifter i hälso- och sjukvården | Finns på Webben | https://www.socialstyrelsen.se/globalassets/sharepoint-dokument/artikelkatalog/handbocker/2017-3-2.pdf |
| R 9 | ISO8601-standarden för tidsformat | Finns på Webben | http://en.wikipedia.org/wiki/ISO_8601 |
| R 10 | Tabell över godkända tjänstedomäner | Finns på Webben | https://code.google.com/p/rivta/wiki/ServiceDomainTable |
| R11 | Ärendehantering | Finns på Webben | Ärendehantering |
| R12 | Hantering av binära bilagor | Finns på Webben | http://rivta.se/documents/ARK_0038/ |
| R13 | ARK-0040 - RIV Tekniska Anvisningar - Parallella huvudversioner av ett tjänstekontrakt |  | http://rivta.se/documents/ARK_0040/ |

### Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| K | Tjänstekonsument | Se referens R4 |
| AP | Anslutningspunkt | Se referens R4 |
| P | Tjänsteproducent | Se referens R4 |
| KS | Källsystem | Se referens R4 |
