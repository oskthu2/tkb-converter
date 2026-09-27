# 1 Inledning

Källa: *Tjänstekontraktsbeskrivning masterdata: citizen: patient*, version 1.0_RC1 (2017-01-26), [TKB_masterdata_citizen_patient.docx](TKB_masterdata_citizen_patient.docx). Dokumentet är till stor del en ej ifylld mall; texten återges ordagrant och fältreglerna enligt schemat finns i avsnitt 7.

### Dokumentinformation

| Dokument | Tjänstekontraktsbeskrivning masterdata: citizen: patient |
| :--- | :--- |
| Domän | masterdata: citizen: patient (underlagförprocesstöd: invånare: patientuppgifter) |
| Version | 1.0 (1.0_RC1 enligt revisionshistoriken) |
| Datum | 2017-01-26 enligt revisionshistoriken |
| Titelsida | Dokumentnamn(Title) / Underrubrik på titelsida / Version 1.4 / ARK_0015 / 2014-09-08 (mallens titelsida, ej ifylld) |

#### Mallens anvisningar (kvar i källdokumentet)

Källdokumentet är till stor del en ej ifylld TKB-mall. Mallens anvisningar återges här eftersom de står kvar i dokumentet.

> All grön text motsvaras av variabler. I MS Word, gå in under Arkiv-Egenskaper och välj fliken Eget och fyll i rätt värden för variablerna.

> Gulmarkerat är text som skall fyllas i och bytas ut.

> Blå text är anvisningar för hur denna mall skall fyllas i. Den SKALL tas bort i det färdiga dokumentet.

> Svart italic text är text som kan behållas från mallen.

> Tjänstekontraktbeskrivning är ett dokument som beskriver en viss revision av tjänstekontrakten i en tjänstedomän. Tjänstekontraktsbeskrivningen är en beskrivning som kompletterar den maskinläsabara beskrivningen. Den maskinläsbara beskrivningen följer RIV Tekniska Anvisningar. En tjänstekontraktsbeskrivning kompletterar den maskinläsbara anvisningen och är en teknisk anvisning som är baserad på resultat från tidigare faser i RIV-metoden. Dokumentet ska kunna läsas fristående.

> En Tjänstekontraktbeskrivning versionshanteras (förvaltas i original) och publiceras enligt riktlinjer för tjänstekontraktsförvaltningen .

> Målgruppen för Tjänstekontraktbeskrivningen är integratörer inom vårdgivare och hos leverantörer av IT-lösningar för vård och omsorg, med grundläggande kunskap om RIV Tekniska Anvisningar och den nationella, tekniska arkitekturen (T-boken).

> En tjänstekontraktsbeskrivning skall vara oberoende av specifika system. Den skall kunna användas som upphandlingsunderlag för utveckling av tjänstekonsumenter och tjänsteproducenter.

> När en revision av en tjänstedomän innehåller samma version av ett tjänstekontrakt som en tidigare version, måste beskrivningen i den senare revisionen vara identisk med motsvarande beskrivning i den tidigare revisionen. Förtydliganden och rättning av skrivfel kan förekomma, men inget som riskerar försämringar i interoperabilitet mellan konsumenter och producenter baserade på samma tjänstekontrakt ur de båda revisionerna.

> Dokumentet Arkitekturella beslut skall alltid åtfölja tjänstekontraktsbeskrivningen (även om det inte finns några dokumenterade beslut).

> Resterande del av anvisningen följer uppställningen i en Tjänstekontraktsbeskrivning. Se även Tjänstekontraktsbeskrivning – exempel.

#### Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.0_RC1 |  | 2017-01-26 | Första version | Khaled Daham, Carity AB |  |

#### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Dokumentnamn(Title) | Obligatoriskt | Plats där dokumentet finns |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |

#### Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |

#### Kompletterande dokument i källan

| Dokument | Fil |
|---|---|
| Arkitekturella beslut – masterdata: citizen: patient (referens R1) | [AB_masterdata_citizen_patient.docx](AB_masterdata_citizen_patient.docx) |
| Informationsspecifikation – masterdata: citizen: patient | [IS_masterdata_citizen_patient.docx](IS_masterdata_citizen_patient.docx) |

Källan innehåller även en meddelandemodell i Visual Paradigm-format (`docs/work_material/riv.masterdata.citizen.patient-MIM.vpp`), som inte publiceras här.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

masterdata: citizen: patient

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

OBS obligatorisk även om tom.

Övergripande beskrivning av de processer som stöds av denna domän.

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

underlagförprocesstöd:invånare:patientuppgifter

patientuppgifter

### 1.2 WEB beskrivning

Omfattning och disposition webbtext tjänstedomän + tjänstekontrakt:

1.       Cirka 1-2 meningar om syftet och nyttan med tjänstedomänen.

2.       Max 5 meningar om vad syftet med tjänstekontrakten är, som till exempel vilket/vilka typer av informationsflöden de stödjer. Inga tekniska detaljer, utan en övergripande summerande beskrivning.

OBS! Texten ska vara skriven på ett övergripande sätt så att även andra än tekniker kan förstå.

OBS! Texten är obligatorisk eftersom den kommer att visas ut på Ineras externa webbplats. Om detta kapitel är tomt, kommer det inte att visas någon beskrivning om domänen på inera.se.
