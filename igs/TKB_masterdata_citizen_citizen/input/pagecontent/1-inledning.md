# 1 Inledning

Källa: *Personuppgifter – Tjänstekontraktsbeskrivning*, version 2.0 (2016-02-24, revision RC3 2016-04-22), [TKB_masterdata_citizen_citizen.docx](TKB_masterdata_citizen_citizen.docx).

### Dokumentinformation

| Dokument | Personuppgifter – Tjänstekontraktsbeskrivning |
| :--- | :--- |
| Domän | masterdata: citizen: citizen (Underlagförprocesstöd: invånare: personuppgifter) |
| Version | 2.0 |
| Datum | 2016-02-24 (titelsidan); senaste revision RC3 2016-04-22 |
| Dokument-id | ARK_0015 |

#### Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 2.0 | 0.1 | 2016-01-25 | Första utkast | Daniel Fjällström, CGI |  |
| 2.0 | 0.2 | 2016-01-28 | Uppdateringar | Daniel Fjällström, CGI |  |
| 2.0 | 0.3 | 2016-02-01 | Uppdateringar | Daniel Fjällström, CGI |  |
| 2.0 | RC1 | 2016-02-11 | Uppdateringar efter granskning från Khaled | Daniel Fjällström, CGI |  |
| 2.0 | RC2 | 2016-02-29 | Uppdateringar efter granskning Inera A&R: / Kap 4.3 Felhantering / Ändrat till enbart tekniska fel via SOAP faults för läsande tjänst. / Övriga uppdateringar: / 7.1.21 ImmigrationIdentity / förbättrad struktur, landskodning. / 7.1.3 Address namnbyte till AddressInformation / Gender borttagen (används ej) | Per Mützell |  |
| 2.0 | RC3 | 2016-04-22 | protectedPersonIndicator: obligatorisk (tidigare optionell). / testIndicator: obligatorisk (tidigare optionell). / referredPersonalIdentityNumber  byter  namn till: referredPersonalIdentity. / searchDate byter  namn till notificationDate. / Dokumentationsändringar: / 2.1.3 	Förtydligande vilket äldre kontrakt som ersätts. / 3.1.1.2. 	Justering sekvensdiagram (enligt granskningsprotokoll). / 4.1 Informationssäkerhet och juridik, justerad. / 4.2.1 Justerat krav för last. / 5.1 Uppdaterad V-MIM enligt ovan. / 8. 	Förtydligande  vilka attribut som levereras vid sekretessmarkering / 7.1.29 searchDate, uppdaterad beskrivning / 7.1.29 modificationTime, uppdaterad beskrivning / 7.1.34 maritalStatus, rättad felstavning | Per Mützell |  |

#### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Personuppgifter | Obligatoriskt | Bilaga AB_masterdata_citizen_citizen.docx |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Informationsspecifikation - / Personuppgifter |  | Bilaga IS_masterdata_citizen_citizen.docx |
| R4 | ISO8601 | ISO8601-standarden för datum- och tidsformat | https://sv.wikipedia.org/wiki/ISO_8601 |
| R5 | RFC3339 | Standard för datum- och tidsformat för internetbaserade protokoll baserat på ISO8601 | https://www.ietf.org/rfc/rfc3339.txt |
| R6 | ISO 3166-1 alpha-2 | Standard för landskod | https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 |

#### Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| NAVET | Tjänst för att tillgängliggöra folkbokföringsuppgifter till myndigheter |  |
| PU-tjänst | Personuppgiftstjänst |  |

#### Kompletterande dokument i källan

| Dokument | Fil |
|---|---|
| Arkitekturella beslut – Personuppgifter (referens R1) | [AB_masterdata_citizen_citizen.docx](AB_masterdata_citizen_citizen.docx) |
| Informationsspecifikation – Personuppgifter (referens R3) | [IS_masterdata_citizen_citizen.docx](IS_masterdata_citizen_citizen.docx) |
| Informationsmodell (bild i källans docs-katalog) | [masterdata_citizen_citizen-infomodell.png](masterdata_citizen_citizen-infomodell.png) |

Källan innehåller även modellfilen `docs/masterdata_citizen_citizen.vpp` (Visual Paradigm), som inte publiceras här.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

masterdata: citizen: citizen

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

Underlagförprocesstöd: invånare: personuppgifter

Personuppgiftshantering

### 1.2 WEB beskrivning

Syftet med denna domän är primärt att tillgängliggöra personuppgifter registrerade i Skatteverkets folkbokföringsregister för invånare bosatta i Sverige. Folkbokföringsuppgifterna omfattar bland annat namn, adress, fastighetsuppgifter mm.

Konsumenter på domänens information kan vara de flesta vård- och omsorgssystem som hanterar patienter/invånare, men kan även behövas i system som hanterar medarbetare, katalogsystem, identitetshanteringssystem etc.

Uppgifterna i tjänsteproducent hålls ajour med uppgifterna i bakomliggande register primärt genom regelbundna aviseringar (alla förändringar sedan sist), kompletterat med online-slagning om uppgift saknas i tjänsteproducent.
