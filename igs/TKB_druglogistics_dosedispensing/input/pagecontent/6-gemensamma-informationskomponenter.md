## Gemensamma informationskomponenter

*SAKNAS I KÄLLDOKUMENT.* Det finns ingen TKB. Objekten och uppräkningarna nedan är återgivna ur dokumentet [Pascal – Objekt och felhantering](Objekt_och_felhantering.pdf) (version 1.5, 2012-03-21), som gränssnittsspecifikationerna i [avsnitt 7](7-tjanstekontrakt.html) hänvisar till som ref[1] (mekanisk konvertering från PDF; vid tveksamhet gäller PDF:en). Motsvarande typer i domänschemat följer efter kodverken.

### Objekt-Patientinformation

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Förnamn |  | 25 | 1..1 |
| Efternamn |  | 25 | 0..1 |
| Identitetstyp | Person, samordnings eller reservnummer | Enum | 1..1 |
| Personid |  | 12 | 1..1 |

### Objekt-Behörighetsinformation

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Förnamn |  | 25 | 1..1 |
| Efternamn |  | 25 | 1..1 |
| Förskrivarkod |  | 7 | 0..1 |
| Yrkeskod |  | Enum | 1..1 |
| Arbetsplatskod |  | 13 | 1..1 |
| Hsaid | Förskrivares hsaid | 64 | 0..1 |
| Personnummer |  | 12 | 1..1 |
| Organisationsnummer |  | 20 | 0..1 |

### Objekt-BoendeinfoResponse

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Adress |  | 40 | 0..1 |
| Postnummer |  | 10 | 0..1 |
| Ort |  | 20 | 0..1 |
| Telefon |  | 15 | 1..1 |
| Dosmottagareid |  | 13 | 1..1 |
| Dosmottagarenamn |  | 40 | 1..1 |

### Objekt-Leveransadress

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Boendeenhetsnamn |  | 40 | 0..1 |
| Boendeenhetsid |  | 10 | 0..1 |
| Boendeenhetsadress |  | 20 | 0..1 |
| Boendeenhetspostnr |  | 10 | 1..1 |
| Boendeenhetsavdelning |  | 10 | 0..1 |
| Arbetsplatskod |  | 13 | 1..1 |
| Dosmottagareid |  | 13 | 1..1 |
| Dosmottagarenamn |  | 40 | 1..1 |

### Objekt-Kontaktinformation

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| PAL förskrivarkod |  | 7 | 0..1 |
| PAL förnamn |  | 25 | 0..1 |
| PAL efternamn |  | 25 | 0..1 |
| Anhörigkontaktnamn | Används ej | 50 | 0..1 |
| Anhörigkontaktemail | Används ej | 40 | 0..1 |
| Ansvarigkontaktnamn |  | 50 | 0..1 |
| Ansvarigkontaktadress |  | 50 | 0..1 |
| Ansvarigkontaktpostnummer |  | 5 | 0..1 |
| Ansvarigkontaktpostort |  | 25 | 0..1 |
| Ansvarigkontakttelefon1 |  | 15 | 0..1 |
| Ansvarigkontakttelefon2 |  | 15 | 0..1 |
| Vårdandeenhetid |  | 10 | 0..1 |
| Vårdandeenhetnamn |  | 40 | 0..1 |
| Vårdandeenhetpostnummer |  | 5 | 0..1 |
| Vårdandeenhetpostort |  | 25 | 0..1 |

### Objekt-Betalningsinformation

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Betalningsform |  | 10 | 0..1 |
| Information |  | 40 | 0..1 |
| Betalningsansvarig fornamn |  | 25 | 0..1 |
| Betalningsansvarig fornamn |  | 25 | 0..1 |
| Betalningsansvarig adress |  | 25 | 0..1 |
| Betalningsansvarig postnummer |  | 10 | 0..1 |
| Betalningsansvarig ort |  | 15 | 0..1 |
| Betalningsansvarig telefon |  | 15 | 0..1 |

### Objekt-Produktionsinformation

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Dosaktör |  | 10 | 1..1 |
| Dosapotek namn |  | 25 | 1..1 |
| Betalningsansvarig fornamn | GLN-kod | 13 | 0..1 |
| Stopptid beställning | Absoluttid | Kalender | 0..1 |
| Stopptid ordination | Absoluttid | Kalender | 1..1 |
| Första dosdag |  | Kalender | 0..1 |
| Dosvecka |  | 10 | 0..1 |
| Doseringsschema |  | Klass | 1..1 |
| Dosmottagareid |  | 13 | 1..1 |
| Dosmottagarenamn |  | 40 | 1..1 |

### Objekt-Vårdtagarstatus

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Vårdtagar status |  | Enum | 1..1 |
| Från tid |  | Kalender | 0..1 |
| Till tid |  | Kalender | 0..1 |

### Enum-Yrkeskod

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Läkare |  | LK |
| Barnmorska |  | BM |
| Sjuksköterska |  | SJ |
| Tandläkare |  | TL |
| Röntgensjuksköterska |  | RS |
| Tandhygenist |  | TH |

### Enum-Vårdtagarstatus

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Aktiv |  | 1 |
| Vilade |  | 2 |
| Tillfälligadressändring |  | 3 |
| Avförd |  | 4 |
| Avliden |  | 5 |
| Ej registrerad |  | 6 |

### Enum-Meddelandestatus

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Läst |  | L |
| Oläst |  | O |
| Borttagen |  | B |
| Borttagen/Läst/Oläst |  | BLO |
| Läst/Oläst |  | LO |
| Borttagen/Läst |  | BL |

### Enum-kommunikationsriktning

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Till dosapotek |  | 1 |
| Från dosapotek |  | 2 |

### Enum-Meddelandetyp

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Ordinationsbundet | Används ej | OB |
| Personbundet |  | PB |
| Fristående |  | FR |
| Meddelandebundet |  | MB |

### Enum-Meddelandeprio

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Låg |  | L |
| Normal |  | N |
| Hög |  | H |

### Enum-Beställningsurval

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Personurval | Endast en | PU |
| Dosmottagare | En eller flera | DM |
| Beställningsidentitet | En eller flera | BU |
| Vårdgivare | Endast en | VG |

### Enum-Beställningsstatus

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Mottagen |  | 1 |
| Avvisad |  | 2 |
| Expedierad |  | 3 |
| Avbeställd |  | 4 |

### Enum-Identitetstyp

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Personnummer |  | P |
| Samordningsnummer | Används ej | S |
| Reservnummer | Används ej | R |

### Kodverk

Enumerationerna i domänschemat är modellerade som kodverk (CodeSystem) med tillhörande värdemängd (ValueSet), och fälten i de logiska modellerna är bundna till värdemängden (required).

| Typ i schemat | Kodverk | Värdemängd | Koder |
| :--- | :--- | :--- | :--- |
| BestallningsStatusEnum | [Beställningsstatus](CodeSystem-dosedispensing-bestallningsstatus-cs.html) | [BestallningsStatusVS](ValueSet-dosedispensing-bestallningsstatus-vs.html) | 1, 2, 3, 4, 5 |
| BestallningsurvalEnum | [Beställningsurval](CodeSystem-dosedispensing-bestallningsurval-cs.html) | [BestallningsurvalVS](ValueSet-dosedispensing-bestallningsurval-vs.html) | PU, DM, BU, VG |
| IdentitetstypEnum | [Identitetstyp](CodeSystem-dosedispensing-identitetstyp-cs.html) | [IdentitetstypVS](ValueSet-dosedispensing-identitetstyp-vs.html) | P, R, S |
| KommunikationsriktningEnum | [Kommunikationsriktning](CodeSystem-dosedispensing-kommunikationsriktning-cs.html) | [KommunikationsriktningVS](ValueSet-dosedispensing-kommunikationsriktning-vs.html) | 1, 2 |
| MeddelandePrioritetEnum | [Meddelandeprioritet](CodeSystem-dosedispensing-meddelandeprioritet-cs.html) | [MeddelandePrioritetVS](ValueSet-dosedispensing-meddelandeprioritet-vs.html) | L, N, H |
| MeddelandeStatusEnum | [Meddelandestatus](CodeSystem-dosedispensing-meddelandestatus-cs.html) | [MeddelandeStatusVS](ValueSet-dosedispensing-meddelandestatus-vs.html) | L, O, B, BLO, LO, BL |
| MeddelandetypEnum | [Meddelandetyp](CodeSystem-dosedispensing-meddelandetyp-cs.html) | [MeddelandetypVS](ValueSet-dosedispensing-meddelandetyp-vs.html) | OB, PB, FR, MB, VG |
| ResultatkodEnum | [Resultatkod](CodeSystem-dosedispensing-resultatkod-cs.html) | [ResultatkodVS](ValueSet-dosedispensing-resultatkod-vs.html) | 1, 2, 3 |
| VardtagarStatusEnum | [Vårdtagarstatus](CodeSystem-dosedispensing-vardtagarstatus-cs.html) | [VardtagarStatusVS](ValueSet-dosedispensing-vardtagarstatus-vs.html) | 1, 2, 3, 4, 5, 6 |
| YrkesKodEnum | [Yrkeskod](CodeSystem-dosedispensing-yrkeskod-cs.html) | [YrkesKodVS](ValueSet-dosedispensing-yrkeskod-vs.html) | LK, TL, BM, SJ, RS, TH |

### Typer i domänschemat

*SAKNAS I KÄLLDOKUMENT.* Komponenterna nedan är de typer ur domänschemana som används av tjänstekontrakten. Beskrivningarna är schemaannoteringarna. Flera typer finns i mer än en version av domänschemat; versionen anges då inom parentes.

### AvbestallningsinfoRequest

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Patientinformation | PatientinfoResponse |  | 1..1 |
| bestallningsid | string |  | 1..1 |
| radid | string |  | 0..1 |
| NPLpackid | string |  | 0..1 |
| varunummer | string |  | 0..1 |
| receptid | string |  | 0..1 |
| ordinationsid | string |  | 1..1 |
| dosunderlagsversion | string |  | 0..1 |
| meddelandetillapotek | string |  | 0..1 |
| onskadleveranstid | dateTime |  | 0..1 |

### BehorighetsinfoRequest

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| fornamn | string |  | 1..1 |
| efternamn | string |  | 1..1 |
| forskrivarkod | string |  | 0..1 |
| yrkeskod | YrkesKodEnum |  | 0..1 |
| arbetsplatskod | string |  | 1..1 |
| hsaid | string |  | 0..1 |
| personnummer | string |  | 0..1 |
| organisationsnummer | string |  | 0..1 |

### BestallningsinfoRequest

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Patientinformation | PatientinfoResponse |  | 1..1 |
| bestallningsid | string |  | 1..1 |
| radid | string |  | 0..1 |
| NPLpackid | string |  | 0..1 |
| varunummer | string |  | 0..1 |
| receptid | string |  | 0..1 |
| ordinationsid | string |  | 1..1 |
| dosunderlagsversion | string |  | 0..1 |
| antalforpackningar | string |  | 0..1 |
| akutbestallning | boolean |  | 0..1 |
| maxveckodos | string |  | 0..1 |
| maxdygnsdos | string |  | 0..1 |
| dosmottagareid | string |  | 0..1 |
| dosmottagarenamn | string |  | 0..1 |
| meddelandetillapotek | string |  | 0..1 |
| onskadleveransdatum | dateTime |  | 1..1 |

### BestallningsinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| bestallningsid | string |  | 1..1 |
| radid | string |  | 0..1 |
| Patientinformation | PatientinfoResponse |  | 1..1 |
| NPLpackid | string |  | 0..1 |
| varunummer | string |  | 0..1 |
| receptid | string |  | 0..1 |
| ordinationsid | string |  | 1..1 |
| dosunderlagsversion | string |  | 0..1 |
| bestallningsresultat | int |  | 0..1 |
| bestallningsresultattext | string |  | 0..1 |
| bestallningsstatus | BestallningsStatusEnum |  | 1..1 |
| statustidpunkt | dateTime |  | 1..1 |
| bestallningstatustext | string |  | 0..1 |
| meddelandefranapotek | string |  | 0..1 |
| onskadleveranstid | dateTime |  | 0..1 |
| planeradleveranstid | dateTime |  | 0..1 |
| dosmottagareid | string |  | 0..1 |
| dosmottagarenamn | string |  | 0..1 |
| bestallningstid | dateTime |  | 0..1 |
| bestallarefornamn | string |  | 1..1 |
| bestallareefternamn | string |  | 1..1 |
| bestallarearbetsplats | string |  | 1..1 |

### BestallningsutvalRequest

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| bestallningsurval | BestallningsurvalEnum |  | 1..1 |
| bestallningsid | string |  | 0..1 |
| patientid | string |  | 0..1 |
| patientidtyp | IdentitetstypEnum |  | 0..1 |
| patientfornamn | string |  | 0..1 |
| patientefternamn | string |  | 0..1 |
| vardgivarid | string |  | 0..1 |
| dosmottagareid | string |  | 0..* |
| bestallningsstatus | BestallningsStatusEnum |  | 1..1 |
| frandatum | dateTime |  | 1..1 |
| tilldatum | dateTime |  | 1..1 |

### BetalningsinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| form | string |  | 0..1 |
| information | string |  | 0..1 |
| betalningsansvarigfornamn | string |  | 0..1 |
| betalningsansvarigefternamn | string |  | 0..1 |
| betalningsansvarigadress | string |  | 0..1 |
| betalningsansvarigpostnummer | string |  | 0..1 |
| betalningsansvarigort | string |  | 0..1 |
| betalningsansvarigtelefon | string |  | 0..1 |

### BoendeinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| adress | string |  | 0..1 |
| postnummer | string |  | 0..1 |
| ort | string |  | 0..1 |
| telefon | string |  | 0..1 |
| dosmottagareid | string |  | 0..1 |
| dosmottagarenamn | string |  | 0..1 |

### DoseringsschemaResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| periodlangd | int | Antal dagar som dosering skall galla. Vid regelbunden dosering anges periodlangd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag. | 1..1 |
| intagstillfalle | IntagstillfalleResponse | Beskriver tid och mangd for intag av lakemedel. | 1..* |

### HamtaMeddelandeninfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| meddelandeid | string |  | 1..1 |
| Patientinformation | PatientinfoResponse |  | 0..1 |
| kommunikationsriktning | KommunikationsriktningEnum |  | 0..1 |
| tidigaremeddelandeid | string |  | 0..1 |
| ordinationsid | string |  | 0..1 |
| glnkod | string |  | 0..1 |
| dosapoteknamn | string |  | 0..1 |
| sandningstidpunkt | dateTime |  | 1..1 |
| sandarefornamn | string |  | 1..1 |
| sandareefternamn | string |  | 1..1 |
| sandarehsaid | string |  | 0..1 |
| sandareyrkeskod | YrkesKodEnum |  | 0..1 |
| sandarearbetsplats | string |  | 0..1 |
| rubrik | string |  | 0..1 |
| prioritet | MeddelandePrioritetEnum |  | 0..1 |
| meddelandestatus | MeddelandeStatusEnum |  | 1..1 |
| meddelandestatusfornamn | string |  | 1..1 |
| meddelandestatusefternamn | string |  | 1..1 |
| meddelandestatusarbetsplats | string |  | 1..1 |
| statustidpunkt | dateTime |  | 1..1 |
| meddelande | string |  | 1..1 |

### IntagstillfalleResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| intagstillfalle | int | Klockslag nar patienten ska inta medicinering. | 1..1 |
| intagsmangd | double | Intagsmangd per tillfalle | 0..1 |
| dagIPeriod | int | Dag i perioden nar intag skall goras. Exempel: Intag ska ske varje mandag och onsdag och startdatum ar pa en mandag. Mandag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period= 1. Onsdag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period=3. | 1..1 |

### KontaktinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| PALforskrivarkod | string |  | 0..1 |
| PALfornamn | string |  | 0..1 |
| PALefternamn | string |  | 0..1 |
| anhorigkontaktnamn | string |  | 0..1 |
| anhorigkontaktemail | string |  | 0..1 |
| ansvarigkontaktnamn | string |  | 0..1 |
| ansvarigkontaktemail | string |  | 0..1 |
| ansvarigkontaktadress | string |  | 0..1 |
| ansvarigkontaktpostnummer | string |  | 0..1 |
| ansvarigkontaktpostort | string |  | 0..1 |
| ansvarigkontakttelefon1 | string |  | 0..1 |
| ansvarigkontakttelefon2 | string |  | 0..1 |
| vardandeenhetid | string |  | 0..1 |
| vardandeenhetnamn | string |  | 0..1 |
| vardandeenhetpostort | string |  | 0..1 |
| vardandeenhetpostnummer | string |  | 0..1 |

### LeveransadressinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| boendeenhetnamn | string |  | 1..1 |
| boendeenhetid | string |  | 1..1 |
| boendeenhetadress | string |  | 1..1 |
| boendeenhetpostnummer | string |  | 1..1 |
| boendeenhetpostort | string |  | 1..1 |
| boendeenhetavdelning | string |  | 0..1 |
| arbetsplatskod | string |  | 1..1 |
| dosmottagareid | string |  | 0..1 |
| dosmottagarenamn | string |  | 0..1 |

### MeddelandeninfoRequest

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Meddelandetyp | MeddelandetypEnum |  | 1..1 |
| Patientinformation | PatientinfoResponse |  | 0..1 |
| kommunikationsriktning | KommunikationsriktningEnum |  | 0..1 |
| tidigaremeddelandeid | string |  | 0..1 |
| ordinationsid | string |  | 0..1 |
| glnkod | string |  | 0..1 |
| sandningstidpunkt | dateTime |  | 1..1 |
| rubrik | string |  | 0..1 |
| prioritet | MeddelandePrioritetEnum |  | 0..1 |
| meddelande | string |  | 1..1 |

### MeddelandenutvalRequest

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Meddelandetyp | MeddelandetypEnum |  | 1..1 |
| Patientinformation | PatientinfoResponse |  | 0..1 |
| meddelandeid | string |  | 0..1 |
| meddelandestatus | MeddelandeStatusEnum |  | 0..1 |
| ordinationsid | string |  | 0..1 |
| vardgivarespersonid | string |  | 0..1 |
| forskrivarkod | string |  | 0..1 |
| frantid | dateTime |  | 0..1 |
| tilltid | dateTime |  | 0..1 |

### PatientinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| fornamn | string | Anvandarens fornamn. | 1..1 |
| mellannamn | string | Anvandarens mellanamn. | 0..1 |
| efternamn | string | Anvandarens efternamn. | 1..1 |
| identitetstyp | IdentitetstypEnum |  | 1..1 |
| personid | string | Anvandarens personid | 1..1 |
| lanskod | string | Anvandarens folkbokforda lanskod | 0..1 |
| kommunkod | string | Anvandarens folkbokforda kommunkod | 0..1 |

### ProduktionsinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| dosaktor | string |  | 0..1 |
| dosapotek | string |  | 1..1 |
| dosapotekid | string |  | 1..1 |
| stopptidbestallning | dateTime |  | 0..1 |
| stopptidordination | dateTime |  | 0..1 |
| forstadosdag | dateTime |  | 1..1 |
| dosvecka | string |  | 0..1 |
| doseringsschema | DoseringsschemaResponse |  | 1..1 |
| dosmottagareid | string |  | 0..1 |
| dosmottagarenamn | string |  | 0..1 |

### ProduktsortimentResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| nplid | string |  | 1..1 |
| nplpackid | string |  | 1..1 |
| glnkod | string |  | 0..* |

### UppdateraMeddelandestatus

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| meddelandeid | string |  | 1..1 |
| meddelandestatus | MeddelandeStatusEnum |  | 1..1 |
| statustidpunkt | dateTime |  | 1..1 |

### VardandeEnhetResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| vardandeenhetid | string |  | 1..1 |
| vardandeenhetnamn | string |  | 1..1 |
| vardandeenhetpostort | string |  | 1..1 |
| glnkod | string |  | 1..1 |

### Vardtagarinformation

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hemmaboende | boolean |  | 1..1 |
| dosapoteksid | string |  | 1..1 |
| dosapoteknamn | string |  | 1..1 |
| forstadosdag | dateTime |  | 1..1 |
| avvikandedosschema | boolean |  | 1..1 |
| Patientinformation | PatientinfoResponse |  | 1..1 |
| Hemmaboendeinformation | BoendeinfoResponse |  | 0..1 |
| Tillfalligadress | BoendeinfoResponse |  | 0..1 |
| Leveransadressinformation | LeveransadressinfoResponse |  | 0..1 |
| Kontaktinformation | KontaktinfoResponse |  | 1..1 |
| Betalningsinformation | BetalningsinfoResponse |  | 0..1 |
| Produktionsinfo | ProduktionsinfoResponse |  | 0..1 |
| Vardtagarstatus | Vardtagarstatusinfo |  | 0..* |
| vilandestatusorsak | string |  | 0..* |

### Vardtagarstatusinfo

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| statuskod | VardtagarStatusEnum |  | 1..1 |
| frantid | dateTime |  | 0..1 |
| tilltid | dateTime |  | 0..1 |
