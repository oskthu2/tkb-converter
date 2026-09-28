# 7 Tjänstekontrakt - se.apotekensservice: or — Ordinationer v7.0.0

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

## Tjänstekontrakt

**SAKNAS I KÄLLDOKUMENT.** Det finns inga kontraktsbeskrivningar. Beskrivningarna nedan är hämtade ur WSDL och XSD. Alla kontrakt har SOAP-huvudena LogicalAddress och ArgosHeader och returnerar fel som `ApplicationException` eller `SystemException` (se [avsnitt 4](4-tjanstedomanens-krav-och-regler.md)). ArgosHeaderType har följande fält, alla string och 0..1: forskrivarkod, legitimationskod, fornamn, efternamn, yrkesgrupp, befattningskod, arbetsplatskod, arbetsplatsnamn, postort, postadress, postnummer, telefonnummer, requestId, rollnamn, hsaID, katalog, organisationsnummer, systemnamn, systemversion, systemIp. Enligt WSDL-filerna anger dokumentationen vilka ArgosHeader-fält som är obligatoriska för respektive tjänsteinteraktion; den dokumentationen finns inte i källan.

### HamtaAktuellaOrdinationer

#### Version

5.2

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:or:HamtaAktuellaOrdinationerResponder:5` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:or:HamtaAktuellaOrdinationer:5` |
| SOAP-action | `urn:riv:se.apotekensservice:or:HamtaAktuellaOrdinationerResponder:5:HamtaAktuellaOrdinationer` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| personnummer | PersonnummerType | Giltigt personnummer för patient. | 1..1 |
| ordinationsId | OrdinationsIdType | OrdinationsId. Anges om bara en ordination ska returneras. | 0..1 |
| grupplegitimationskod | LegitimationskodType | Användarens 6-ställiga grupplegitimationskod. Obligatorisk för Apotekselev, receptarieelev, Teknikerelev och Europeisk farmaceut. | 0..1 |
| gruppforskrivarkod | ForskrivarkodType | Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| **Svar** |   |   |   |
| apoteksInformationLista | ApoteksinformationResponse | Lista med apotek därifrån förändringar eller skapande utförts på/av ordinationerna. | 0..* |
| ../aktorsnamn | AktorsnamnType | Officiellt namn för aktör | 0..1 |
| ../aktorsorgnr | OrgNrType | Aktörens organisationsnummer. | 0..1 |
| ../allmantelefon | TelefonnummerBasType | Telefonnummer för receptexpedition | 0..1 |
| ../besoksadress | BesoksadressType | Expeditionsställets besöksadress | 0..1 |
| ../eReceptDjur | boolean | Anger om apoteket expedierar erecept för djur | 0..1 |
| ../fax | FaxType | Expeditionsställets faxnummer | 0..1 |
| ../glnKod | GlnKodType | Expeditionsställets GLN-kod | 1..1 |
| ../huvudtypkod | ExpeditionsstalleHuvudtypkodType | Kod som beskriver huvudverksamheten för expeditionsstället | 0..1 |
| ../namn | ExpeditionsstalleNamnType | Expeditionsställets officiella namn | 0..1 |
| ../ort | ExpeditionsstalleOrtType | Expeditionsställets besöksort | 0..1 |
| ../registrerad | boolean | Anger om apoteket finns registrerat i EXPO. Om false så saknar alla fält utom glnKod värden. | 1..1 |
| ../slutdatum | dateTime | Datum för stängning av verksamhet | 0..1 |
| ../startdatum | dateTime | Datum för start av verksamhet | 0..1 |
| arbetsplatsInfoLista | ArbetsplatsInfoResponse | Lista med arbetsplatser därifrån förändringar utförts på ordinationerna. | 0..* |
| ../arbetsplatsNamn | ArbetsplatsNamnType | ArbetsplatsNamn | 0..1 |
| ../arbetsplatsOrt | ArbetsplatsOrtType | ArbetsplatsOrt | 0..1 |
| ../arbetsplatskod | ArbetsplatskodType | Arbetsplatskod | 1..1 |
| ../faxnummer | FaxType | Faxnummer | 0..1 |
| ../giltigSlut | dateTime | Slutdatum för arbetsplatsens giltighetsperiod. | 0..1 |
| ../giltigStart | dateTime | Startdatum för arbetsplatsens giltighetsperiod. | 0..1 |
| ../postadress | PostadressType | Postadress | 0..1 |
| ../postnummer | PostnummerType | Postnummer | 0..1 |
| ../registrerad | boolean | Anger om arbetsplatsen finns registrerad i ARKO. Om false så saknar alla fält utom arbetsplatskod värden. | 1..1 |
| ../telefonnummer1 | TelefonnummerBasType | Telefonnummer 1 | 0..1 |
| ../telefonnummer2 | TelefonnummerBasType | Telefonnummer 2 | 0..1 |
| artikelLista | ArtikelResponse | Lista med artikelinformation för de varor som ingår i ordinationerna. | 0..* |
| ../alternativtAntalKlartext | AlternativtAntalKlartextType | Sammanslagning av multiplar, antal och alternativ enhet. Om alternativ enhet saknas för artikeln är detta fält tomt. | 0..1 |
| ../antalKlartext | AntalKlartextType | Sammanslagning av multiplar, antal och enhet på storleken. | 0..1 |
| ../artikelbenamning | ArtikelbenamningType | Sammanfattande beskrivning på en artikel (läkemedelsnamn + läkemedelsform + styrka + styrkans enhet + företag vid behov) Förkortningar kan förekomma. | 0..1 |
| ../atcKlartext | AtcKlartextType | ATC-kod i klartext enligt lexikontabell. Språk anges på svenska (sv). | 0..1 |
| ../atcKod | AtcKodType | ATC-kod | 0..1 |
| ../avregistreringsdatum | dateTime | Datum då artikeln blev avregistrerad. | 0..1 |
| ../bestallningsstoppad | boolean | Markering om artikel enligt TLV är beställningsstoppad i gällande prisperiod. | 0..1 |
| ../foregaendePrisperiodensvara | boolean | Markering som anger om artikeln var definierad som föregående prisperiodens vara. | 0..1 |
| ../formansberattigad | boolean | Markering som visar om artikeln är förmånsberättigad enligt VARA, vilket beslutas av TLV. | 0..1 |
| ../forpackningsenhet | ForpackningsenhetType | Enhet på förpackningsstorleken, i klartext. Returnerar den alternativa enheten om sådan finns angiven för artikeln. Språk anges på svenska (sv). | 0..1 |
| ../forpackningsinnehall | ForpackningsinnehallType | Beskrivning av förpackning, innehåll och antal. | 0..1 |
| ../forpackningsmangd | ForpackningsmangdType | Totala mängden i förpackningen. Returnerar den alternativa förpackningsmängden om sådan finns angiven för artikeln. | 0..1 |
| ../forpackningstyp | ForpackningstypType | Beskrivning av förpackningstyp för en artikel. | 0..1 |
| ../forsaljningsstoppad | boolean | Markering som visar om artikeln inte längre får försäljas. Sant om antingen artikeln eller produkten är försäljningsstoppad. | 0..1 |
| ../forskrivningsratter | ForskrivningsratterType | Lista med förskrivningsrätter för artikeln. Använder koder enligt NPL. | 0..* |
| ../forskrivningsrattsyrken | YrkesInfoResponse | Lista med yrken som har förskrivningsrätt för artikeln. Listan utvinns ur förskrivningsrättskoderna, översätts till tvåställiga yrkeskoder och klartexter. Varje yrke finns max en gång i listan. | 0..* |
| ../../yrkesKod | YrkeskodType | Yrkeskod för utfärdarkategori. | 1..1 |
| ../../yrkesKodKlartext | YrkesKodKlartextType | Yrkeskod för utfärdarkategori, klartext. | 1..1 |
| ../historiskaVarunummer | VaruNrType | Lista över eventuella tidigare varunummer. Används om en artikel har fått nytt varunummer. | 0..* |
| ../intressent | IntressentType | Intressent (företag) som är ansvarig för artikeln. | 0..1 |
| ../lakemedel | boolean | Markering som visar om en artikel är ett läkemedel. | 0..1 |
| ../narkotikaklass | NarkotikaklassType | Koden för narkotikaklass enligt Läkemedelsverkets förteckning: - = Ospecificerad 0 = Ej narkotikaklassad 1 = II 2 = Narkotika förteckning IV/V 3 = III 4 = IV 5 = V 6 = I | 0..1 |
| ../narkotikaklassKlartext | NarkotikaklassKlartextType | Narkotikaklass i klartext enligt Läkemedelsverket förteckning. Klartext enligt lexikontabell för narkotikaklass. Språk anges på svenska (sv). | 0..1 |
| ../nplId | NplIdType | Produktid, antingen NPL-id eller SB-id. Unikt id för en läkemedelsprodukt. Alla förpackningar med samma styrka/form/tillverkare grupperas i samma produktid. | 0..1 |
| ../nplPackageId | NplPackIdType | Förpackningsid, antingen NPL-packid eller SB-packid. Unikt id för en läkemedelsartikel. | 0..1 |
| ../prisperiodensvara | boolean | Markering som anger om artikeln är definierad som prisperiodens vara. | 0..1 |
| ../produkttyp | ProdukttypType | Artikelns produkttyp som kod. | 0..1 |
| ../produkttypKlartext | ProdukttypKlartextType | Artikelns produkttyp som klartext enligt lexikontabell för produkttyp. Språk anges på svenska (sv). | 0..1 |
| ../registrerad | boolean | Anger om artikeln finns registrerad i VARA. | 1..1 |
| ../sarskiltLakemedelKod | SarskiltLakemedelKodType | Kod som anger om särskild receptblankett krävs och om recept får itereras. 1 = Särskilt receptblankett krävs INTE. 2 = Särskild receptblankett krävs. Recepten får itereras. 3 = Särskild receptblankett krävs. Recepten får EJ itereras. 4 = Särskild receptblankett krävs. Recept för humant bruk får itereras. - = Ospecifierat | 0..1 |
| ../tillhandahalls | boolean | Markering som visar om artikeln marknadsförs på den svenska marknaden. Sant om både artikeln och produkten tillhandahålls. | 0..1 |
| ../utbytbar | boolean | Markering som anger om artikeln är utbytbar enligt VARA. | 0..1 |
| ../varunummer | VaruNrType | Nordiskt varunummer som är unikt för handelsvaror. För läkemedel kan dubbletter förekomma vid parallellimport. | 0..1 |
| ../extension | Extension2Type |   | 0..1 |
| ../../utlamnandebegransningKod | UtlamnandebegransningKodType | Kod som anger om produkten får utlämnas från apotek endast om den har förskrivits av en läkare med viss specialistkompetens. | 0..1 |
| ../../utlamnandebegransningKlartext | UtlamnandebegransningKlartextType | Anger om produkten får utlämnas från apotek endast om den har förskrivits av en läkare med viss specialistkompetens. | 0..1 |
| forskrivarInfoLista | ForskrivarinfoResponse | Lista med förskrivare som gjort förändringar i ordinationerna. | 0..* |
| ../efternamn | EfternamnType | Efternamn | 0..1 |
| ../fornamn | FornamnType | Förnamn | 0..1 |
| ../forskrivarkod | ForskrivarkodType | Förskrivarkod. | 1..1 |
| ../giltig | boolean | Sann om förskrivaren är giltig. | 1..1 |
| ../gruppforskrivarkodKlartext | GruppforskrivarkodKlartextType | Gruppförskrivarkod klartext. | 0..1 |
| ../yrkesKodInfoLista | YrkesKodInfoResponse | Lista av yrkeskodsinformation. | 0..* |
| ../../specialistKodKlartext | SpecialistKodKlartextType | Lista med specialistkod för utfärdarkategori, klartext. | 0..* |
| ../../yrkesKodKlartext | YrkesKodKlartextType | Yrkeskod för utfärdarkategori, klartext. | 1..1 |
| ../../inskrankt | boolean | Sann om förskrivaren (per yrkeskod) har inskränkt förskrivningsrätt. | 0..1 |
| ordinationslista | OrdinationslistaResponse | Ordinationslista | 1..1 |
| ../dispenseradordinationLista | DispenseradOrdinationResponse | Lista med dispenserade ordinationer. | 0..* |
| ../../affResultat | AFFResultatResponse | Information om aff-fel för ordinationen. | 1..1 |
| ../../../affFelLista | AFFFelResponse | Lista med AFF-fel | 0..* |
| ../../../../allvarlighetsgrad | AllvarlighetsgradType | Kod för att beskriva hur allvarligt ett AFF-fel är. 1 = Accepterad med varning, 2 = Avvisad. | 1..1 |
| ../../../../felkod | AffFelkodType | Felkod enligt Automatisk format- och författningskontroll (AFF). | 1..1 |
| ../../../../felmeddelande | AffFelmeddelandeType | Felmeddelande för AFF-fel. | 1..1 |
| ../../../affStatus | AffStatusType | Status för hela ordinationen eller uttaget. Allvarligaste AFF-felet styr status för hela ordinationen. 0 = Accepterad, 1 = Accepterad med varning, 2 = Avvisad. | 1..1 |
| ../../../avvisningsorsak | AvvisningType | Information om avvisningsorsak. | 0..1 |
| ../../../kontrolltidpunkt | dateTime | Datum och tidpunkt för utförd AFF-kontroll. | 1..1 |
| ../../../kontrolltyp | AffKontrolltypType | Typ av AFF-kontroll som har genomförts. 1 = AFF-PRENEF 2 = AFF-NEF 3 = AFF-REG 4 = AFF-KORR 5 = AFF-EXP 6 = AFF-KEX 7 = AFF-MAK 8 = AFF-NOD 9 = AFF-UTS | 1..1 |
| ../../akut | boolean | Markering att ordinationen är akut. | 0..1 |
| ../../apoteketsKommentar | ApoteketsKommentarType | Farmaceutens kommentar på ordinationen. | 0..1 |
| ../../artikelinformation | ArtikelinformationResponse | Information om artikeln som ordinerats. | 1..1 |
| ../../../nplId | NplIdType | NPL-id alternativt SB-id som identifierar läkemedelprodukt. | 0..1 |
| ../../../nplPackId | NplPackIdType | NPL pack-id alternativt SB Pack-id som identifierar läkemedelsartikel. | 0..1 |
| ../../../utbyttArtikel | boolean | Markering om substitution har skett vid expedition. Kan endast sättas via uttag. | 0..1 |
| ../../../varunr | VaruNrType | Identitet på förskriven eller expedierad artikel. | 0..1 |
| ../../behandlingsinformation | BehandlingsinformationResponse |   | 1..1 |
| ../../../andamalKlartext | AndamalKlartextType | Ändamål i klartext | 0..1 |
| ../../../behandlingsslut | dateTime | Datum om tidpunkt då behandlingen avslutas. | 0..1 |
| ../../../behandlingsstart | dateTime | Datum om och tidpunkt då behandlingen påbörjas. | 0..1 |
| ../../../doseringstext1 | DoseringstextType | Doseringstext från förskrivare eller korrigerad av farmaceut | 0..1 |
| ../../../doseringstext2 | DoseringstextType | Kompletterande doseringstext för exempelvis extempore och licensläkemedel. | 0..1 |
| ../../../sprakkod | SprakkodType | Främmande språk för doseringstext enligt ISO-639-1 | 0..1 |
| ../../dispenseringsregler | DispenseringsreglerResponse | Dispenseringsregler | 1..1 |
| ../../../bytesEj | DispenseringsreglerBytesEjType | Markering att farmaceut eller patient beslutat att ordinerad artikel ej får bytas ut. A=Apoteks-nej, P=Patient-nej. Får enbart anges för Ordinationstyp=D (Dispenserad ordination). | 0..1 |
| ../../../ejTillatenSubstitution | boolean | Markering om förskriven vara ej får bytas ut enligt förskrivare. | 0..1 |
| ../../../forman | boolean | Förskrivarens uppgift om ordinationen ska innefattas i förmånen. | 1..1 |
| ../../../insattningstidpunkt | dateTime | Datum när patienten skall påbörja intag. | 0..1 |
| ../../../sistaGiltighetsdag | dateTime | Ordinationens sista giltighetsdag. | 0..1 |
| ../../doseringsschema | DoseringsschemaResponse | Information om intag. Valfritt för stående, obligatorisk dispenserad ordination, får ej anges för vid behov. | 0..1 |
| ../../../intagstillfalle | IntagstillfalleResponse | Beskriver tid och mängd för intag av läkemedel. | 1..* |
| ../../../../dagIPeriod | DagIPeriodType | Dag i perioden när intag skall göras. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period= 1. Onsdag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period=3. | 1..1 |
| ../../../../intagsmangd | IntagsmangdType | Intagsmängd per tillfälle. Null hanteras som enligt ordination. | 0..1 |
| ../../../../intagstillfalle | IntagstillfalleType | Klockslag när patienten ska inta medicinering. | 1..1 |
| ../../../periodlangd | PeriodlangdType | Antal dagar som dosering skall gälla. Vid regelbunden dosering anges periodlängd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag. | 1..1 |
| ../../forandring | ForandringResponse | Information om eventuell historikskapande händelse (förändring). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../forskrivarKommentar | EtikettTextType | Förskrivarens kommentar till apoteket. | 0..1 |
| ../../harForandrats | boolean | Markering om ordinationen har ändrats av förskrivare eller farmaceut. | 1..1 |
| ../../historisktOrdinationsId | OrdinationsIdType | Hänvisning till en eventuell historisk post av ordinationen. Alla historiska poster har tillståndsstatus Historik (211). En historisk post skapas exempelvis vid korrigering. | 0..1 |
| ../../korrigerbar | boolean | Markering om ordinationen är korrigerbar. | 0..1 |
| ../../leveransMeddelande | EtikettTextType | Leveransinformation om ordinationen skickas till ett ombud. | 0..1 |
| ../../makulering | MakuleringResponse | Information om eventuell historikskapande händelse (makluering). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../orsakskod | MakuleringOrsakskodType | Orsakskod som strukturerat beskriver orsak till makulering. | 1..1 |
| ../../../orsakskodKlartext | MakuleringOrsakskodKlartextType | Orsakskoder vid makulering: 1 = Fel patient. 2 = Fel läkemedel/vara/ styrka/ändamål. Patienten informerad. 3 = Utsatt lm/Inaktuell medicinering. Patienten informerad. Gäller ej dospatienter då utsättning skall användas. 4 = Annan orsak. Patienten informerad. | 1..1 |
| ../../../paUppdragAv | MakuleringPaUppdragAvType | Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare. | 1..1 |
| ../../../samtyckeMakulering | boolean | Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../notatOrdination | KommentarType | Förskrivarens notat kopplat till en specifik ordination. | 0..1 |
| ../../ordinationsId | OrdinationsIdType | Ordinationens unika id som sätts av eHälsomyndigheten. | 1..1 |
| ../../ordinationsinformation | OrdinationsinformationResponse | Kompletterande information om ordinationen. | 1..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Den som godkänt ordinationen. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../lagringstidpunkt | dateTime | Datum och tid då ordinationen skapades i OR. | 1..1 |
| ../../../mottagandeApotek | GlnKodType | Apoteks-id (GLN) vid direktadressering av ordinationer. | 0..1 |
| ../../../ordinationstidpunkt | dateTime | Datum och eventuell tid för ordinationens utfärdande. | 1..1 |
| ../../../ordinator | OrdinatorResponse | Den ordinatör som utfärdat ordinationen. | 1..1 |
| ../../../../arbetsplatskod | AltArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 0..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 1..1 |
| ../../../../kontaktuppgift | KontaktuppgiftResponse | Ordinatörens kontaktinformation. | 1..1 |
| ../../../../../adress1 | AdressType | Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../adress2 | AdressType | Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postnummer | PostnummerType | Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postort | PostortType | Patientens eller förskrivarens postort. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer1 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer2 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 2. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../utfardarkategori | UtfardarkategoriType | Förskrivarens utfärdarkategori enligt NEF. LAK = Läkare ATL = AT-läkare LMF = Läkare med förordnande TAN = Tandläkare VET = Veterinär TAH = Tandhygienist BMO = Barnmorska SSK = Sjuksköterska HJM = Hjälpmedelsförskrivare | 1..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../originalformat | OriginalformatType | Originalhandlingens ursprung. 0 = Pappersordination 1 = Telefonordination 2 = E-recept (NEF) (3 = Faxordination patient) 4 = Faxordination 5 = E-ordination 6 = Utskrivet från OR 7 = Utskriven E-ordination. | 1..1 |
| ../../../originalordinationsId | OriginalordinationsIdUuidType | Unikt id för en ordination. Dock ej unikt för e-recept som tillhör receptsamling. | 1..1 |
| ../../../patient | PatientResponse | Den patient som ordinationen gäller för. | 1..1 |
| ../../../../efternamn | EfternamnType | Patientens efternamn. Hämtas från första delen (före kommatecken) av patientens Rednamn som fås vid anrop mot FOLK. | 1..1 |
| ../../../../fodelsedatum | FodelsedatumResponse | Födelsedatum och kön för patienter som inte har fullständigt personnummer. | 0..1 |
| ../../../../../fodelsedatum | dateTime | Födelsedatum för patient som saknar giltigt personnummer. | 1..1 |
| ../../../../../kon | KonType | Patientens kön. Giltiga värden är: 1 = Man 2 = Kvinna 3 = Ej specificerat | 1..1 |
| ../../../../fornamn | FornamnType | Patientens förnamn. Hämtas från andra delen (efter kommatecken) av patientens Rednamn som fås vid anrop mot FOLK. | 1..1 |
| ../../../../kontaktuppgift | KontaktuppgiftResponse | Kontaktuppgifter för patienten. | 0..1 |
| ../../../../../adress1 | AdressType | Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../adress2 | AdressType | Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postnummer | PostnummerType | Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postort | PostortType | Patientens eller förskrivarens postort. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer1 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer2 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 2. | 0..1 |
| ../../../../personnummer | PersonnummerType | Giltigt personnummer. | 0..1 |
| ../../../registrerandeApotekspersonal | RegistrerandeApotekspersonalResponse | Den som registrerat ordinationen. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../testindikator | TestindikatorType | Markering om ordinationen är äkta, för test eller för utbildning. 1 = Äkta 2 = Test 3 = Utbildning | 1..1 |
| ../../ordinationsstatus | OrdinationsstatusResponse |   | 1..1 |
| ../../../radversion | RadversionType | Ordinationens versionsnummer för intern versionshantering av en ordination. Ny radversion av ordinationen skapas vid varje uttag. Returneras alltid men kan vara utan värde. | 1..1 |
| ../../../status | OrdinationsStatusType | Status för dosunderlag, ordination eller uttag. | 1..1 |
| ../../../tidpunkt | dateTime | Datum och tid då dosunderlag, ordination eller uttag senast förändrades. | 1..1 |
| ../../ordinationstyp | OrdinationstypType | Typ av ordination. Anges enbart på ordinationer till dospatient. B = Helförpackning vid behov S = Helförpackning stående D = Dispenserad ordination | 0..1 |
| ../../radnummerNEF | RadnummerNEFType | Unikt id för en rad i en receptsamling som skickas in via NEF. Radnumret är en kombination av rad inom receptsamlingen och eventuellt flerval. Id:t sätts av vårdsystemet. Radnummer utan flerval: 1,2,…n Radnummer med flerval: 1-1, 1-2, 1-n | 0..1 |
| ../../senastDispenseratUttag | SenastDispenseratUttagResponse | Senast dispenseratuttag | 0..1 |
| ../../../senastExpedieratNPLId | NplIdType | Senast expedierat NPL-id eller SB-id. | 0..1 |
| ../../../senastExpedieratNPLPackId | NplPackIdType | Senast expedierat NPL Pack-id eller SB Pack-id. | 0..1 |
| ../../../senastExpedieratVarunr | VaruNrType | Senast expedierat varunr | 0..1 |
| ../../../senasteExpedieradMangd | ExpedieradMangdType | Senaste expedierad mängd | 1..1 |
| ../../../senasteFormansval | FormansvalType | Förmån som användes vid senaste expedition. R = Med förmån U = Utan förmån L = Livsmedel F = Kostnadsfritt | 1..1 |
| ../../../senasteUttagsdatum | dateTime | Datum för senaste uttag | 1..1 |
| ../../tidigareOrdinationsId | OrdinationsIdType | Koppling till föregående ordination vid ordinationsförändringar. Ordinationerna behandlas som olika, fristående ordinationer. Används exempelvis vid förlängningar eller för att koppla ihop en ordination som skrivits ut på receptoriginal och registrerats in i OR igen. | 0..1 |
| ../../utsattning | UtsattningResponse | Information om eventuell historikskapande händelse (utsättning). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. Utsättning innehållande enbart utsättningstidpunkt kan dock förekomma i kombination med annat historikskapande objekt. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../../utsattningstidpunkt | dateTime | Datum när patienten skall avsluta intag. | 0..1 |
| ../../extension | Extension3Type |   | 0..1 |
| ../../../sparradUppgiftKod | SparradUppgiftKodType | Kod för spärrad uppgift i receptet. | 0..1 |
| ../../../sparradUppgiftKlartext | SparradUppgiftKlartextType | Klartext för spärrad uppgift i receptet. | 0..1 |
| ../dosunderlag | DosunderlagResponse | Dospatients dosunderlag. | 0..1 |
| ../../dosordinator | DosordinatorResponse | Dosordinatör. | 0..1 |
| ../../../arbetsplatskod | AltArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 1..1 |
| ../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tid då Dosunderlaget skapades. | 1..1 |
| ../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../dosproducent | GlnKodType | Apoteks-id på dosproducent som patienten är kopplad till. | 0..1 |
| ../../dosunderlagsstatus | DosunderlagsstatusResponse | Tillståndsstatus för dosunderlag. | 1..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Förändrande apotekspersonal | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../status | DosunderlagsstatusType | Status för dosunderlag, ordination eller uttag. | 1..1 |
| ../../../tidpunkt | dateTime | Datum och tid då dosunderlag, ordination eller uttag senast förändrades. | 1..1 |
| ../../dosunderlagsversion | DosunderlagsversionType | Ny Dosunderlagsversion skapas varje gång Dosunderlaget ändrar status till "Ej godkänt". Dosunderlagsversionen skrivs ut på dosreceptet. | 1..1 |
| ../../godkannandeFarmaceut | GodkannandeFarmaceutResponse | Godkännande Farmaceut. | 0..1 |
| ../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../godkannandetidpunkt | dateTime | Datum och tid för dosunderlagets godkännande. | 1..1 |
| ../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../helforpackningsordinationLista | HelforpackningsordinationResponse | Lista med helförpackningsordinationer. | 0..* |
| ../../affResultat | AFFResultatResponse | Information om aff-fel för ordinationen. | 1..1 |
| ../../../affFelLista | AFFFelResponse | Lista med AFF-fel | 0..* |
| ../../../../allvarlighetsgrad | AllvarlighetsgradType | Kod för att beskriva hur allvarligt ett AFF-fel är. 1 = Accepterad med varning, 2 = Avvisad. | 1..1 |
| ../../../../felkod | AffFelkodType | Felkod enligt Automatisk format- och författningskontroll (AFF). | 1..1 |
| ../../../../felmeddelande | AffFelmeddelandeType | Felmeddelande för AFF-fel. | 1..1 |
| ../../../affStatus | AffStatusType | Status för hela ordinationen eller uttaget. Allvarligaste AFF-felet styr status för hela ordinationen. 0 = Accepterad, 1 = Accepterad med varning, 2 = Avvisad. | 1..1 |
| ../../../avvisningsorsak | AvvisningType | Information om avvisningsorsak. | 0..1 |
| ../../../kontrolltidpunkt | dateTime | Datum och tidpunkt för utförd AFF-kontroll. | 1..1 |
| ../../../kontrolltyp | AffKontrolltypType | Typ av AFF-kontroll som har genomförts. 1 = AFF-PRENEF 2 = AFF-NEF 3 = AFF-REG 4 = AFF-KORR 5 = AFF-EXP 6 = AFF-KEX 7 = AFF-MAK 8 = AFF-NOD 9 = AFF-UTS | 1..1 |
| ../../apoteketsKommentar | ApoteketsKommentarType | Farmaceutens kommentar på ordinationen. | 0..1 |
| ../../artikelinformation | ArtikelinformationResponse | Information om artikeln som ordinerats. | 1..1 |
| ../../../nplId | NplIdType | NPL-id alternativt SB-id som identifierar läkemedelprodukt. | 0..1 |
| ../../../nplPackId | NplPackIdType | NPL pack-id alternativt SB Pack-id som identifierar läkemedelsartikel. | 0..1 |
| ../../../utbyttArtikel | boolean | Markering om substitution har skett vid expedition. Kan endast sättas via uttag. | 0..1 |
| ../../../varunr | VaruNrType | Identitet på förskriven eller expedierad artikel. | 0..1 |
| ../../behandlingsinformation | BehandlingsinformationResponse |   | 1..1 |
| ../../../andamalKlartext | AndamalKlartextType | Ändamål i klartext | 0..1 |
| ../../../behandlingsslut | dateTime | Datum om tidpunkt då behandlingen avslutas. | 0..1 |
| ../../../behandlingsstart | dateTime | Datum om och tidpunkt då behandlingen påbörjas. | 0..1 |
| ../../../doseringstext1 | DoseringstextType | Doseringstext från förskrivare eller korrigerad av farmaceut | 0..1 |
| ../../../doseringstext2 | DoseringstextType | Kompletterande doseringstext för exempelvis extempore och licensläkemedel. | 0..1 |
| ../../../sprakkod | SprakkodType | Främmande språk för doseringstext enligt ISO-639-1 | 0..1 |
| ../../doseringsschema | DoseringsschemaResponse | Information om intag. Valfritt för stående, obligatorisk dispenserad ordination, får ej anges för vid behov. | 0..1 |
| ../../../intagstillfalle | IntagstillfalleResponse | Beskriver tid och mängd för intag av läkemedel. | 1..* |
| ../../../../dagIPeriod | DagIPeriodType | Dag i perioden när intag skall göras. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period= 1. Onsdag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period=3. | 1..1 |
| ../../../../intagsmangd | IntagsmangdType | Intagsmängd per tillfälle. Null hanteras som enligt ordination. | 0..1 |
| ../../../../intagstillfalle | IntagstillfalleType | Klockslag när patienten ska inta medicinering. | 1..1 |
| ../../../periodlangd | PeriodlangdType | Antal dagar som dosering skall gälla. Vid regelbunden dosering anges periodlängd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag. | 1..1 |
| ../../forandring | ForandringResponse | Information om eventuell historikskapande händelse (förändring). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../forskrivarKommentar | EtikettTextType | Förskrivarens kommentar till apoteket. | 0..1 |
| ../../harForandrats | boolean | Markering om ordinationen har ändrats av förskrivare eller farmaceut. | 1..1 |
| ../../helforpackningsregler | HelforpackningsreglerResponse |   | 1..1 |
| ../../../ejTillatenSubstitution | boolean | Markering om förskriven vara ej får bytas ut enligt förskrivare. | 0..1 |
| ../../../forman | boolean | Förskrivarens uppgift om ordinationen ska innefattas i förmånen. | 1..1 |
| ../../../forskrivetAntalUttag | AntalUttagType | Antal tillåtna uttag på ordinationen. | 1..1 |
| ../../../forstaUttagFore | dateTime | Datum inom vilket första uttag av läkemedel måste göras. Sker inte någon expedition på receptet innan detta datum sätts hela ordinationen till utgången. | 0..1 |
| ../../../insattningstidpunkt | dateTime | Datum när patienten skall påbörja intag. | 0..1 |
| ../../../intervall | IntervallResponse | Absolut expeditionsintervall. | 0..1 |
| ../../../../expeditionsintervall | ExpeditionsintervallType | Absolut expeditionsintervall. Av förskrivaren angiven kortaste tid mellan två expeditioner. | 1..1 |
| ../../../../intervallenhet | IntervallenhetType | Enhet för det absoluta expeditionsintervallet. Kan anges i dagar, veckor eller månader. Mn = Månader V = Veckor Dg = Dagar Obligatorisk parameter om Expeditionsintervall anges. | 1..1 |
| ../../../resterandeAntalUttag | ResterandeAntalUttagType | Kvarvarande antal uttag på ordinationen | 1..1 |
| ../../../sistaGiltighetsdag | dateTime | Ordinationens sista giltighetsdag. | 0..1 |
| ../../../slutexpedierad | boolean | Markering om farmaceut anser att ordinationen är slutexpedierad. Används då kvarvarande mängd är minde än minsta förpackningsstorlek för aktuell artikel. | 1..1 |
| ../../../slutexpedieradAvFarmaceut | boolean | Farmaceut har markerat att ordinationen är slutexpedierad. | 0..1 |
| ../../historisktOrdinationsId | OrdinationsIdType | Hänvisning till en eventuell historisk post av ordinationen. Alla historiska poster har tillståndsstatus Historik (211). En historisk post skapas exempelvis vid korrigering. | 0..1 |
| ../../korrigerbar | boolean | Markering om ordinationen är korrigerbar. | 0..1 |
| ../../leveransMeddelande | EtikettTextType | Leveransinformation om ordinationen skickas till ett ombud. | 0..1 |
| ../../makulering | MakuleringResponse | Information om eventuell historikskapande händelse (makluering). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../orsakskod | MakuleringOrsakskodType | Orsakskod som strukturerat beskriver orsak till makulering. | 1..1 |
| ../../../orsakskodKlartext | MakuleringOrsakskodKlartextType | Orsakskoder vid makulering: 1 = Fel patient. 2 = Fel läkemedel/vara/ styrka/ändamål. Patienten informerad. 3 = Utsatt lm/Inaktuell medicinering. Patienten informerad. Gäller ej dospatienter då utsättning skall användas. 4 = Annan orsak. Patienten informerad. | 1..1 |
| ../../../paUppdragAv | MakuleringPaUppdragAvType | Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare. | 1..1 |
| ../../../samtyckeMakulering | boolean | Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../mangdinformation | MangdinformationResponse |   | 1..1 |
| ../../../antalForpackningar | AntalForpackningarType | Antal förpackningar per uttag | 1..1 |
| ../../../ingenDygnsdos | boolean | Markering att dygnsdos inte kan anges. Exempelvis vid ordination av kräm. | 0..1 |
| ../../../maxDygnsdos | MaxDygnsdosType | Maximal mängd läkemedel som får förbrukas per dygn enligt doseringsschema eller doseringsanvisning. | 0..1 |
| ../../../maxVeckodos | MaxVeckodosType | Maximal mängd läkemedel som får förbrukas per vecka enligt doseringsschema eller doseringsanvisning. | 0..1 |
| ../../../startforpackning | boolean | Anger om startförpackning ska expedieras vid första uttag | 1..1 |
| ../../../totalmangd | TotalmangdType | Förskriven totalmängd. | 1..1 |
| ../../../totalmangdKvar | TotalmangdKvarType | Resterande mängd som finns kvar på receptet | 1..1 |
| ../../notatOrdination | KommentarType | Förskrivarens notat kopplat till en specifik ordination. | 0..1 |
| ../../ordinationsId | OrdinationsIdType | Ordinationens unika id som sätts av eHälsomyndigheten. | 1..1 |
| ../../ordinationsinformation | OrdinationsinformationResponse | Kompletterande information om ordinationen. | 1..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Den som godkänt ordinationen. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../lagringstidpunkt | dateTime | Datum och tid då ordinationen skapades i OR. | 1..1 |
| ../../../mottagandeApotek | GlnKodType | Apoteks-id (GLN) vid direktadressering av ordinationer. | 0..1 |
| ../../../ordinationstidpunkt | dateTime | Datum och eventuell tid för ordinationens utfärdande. | 1..1 |
| ../../../ordinator | OrdinatorResponse | Den ordinatör som utfärdat ordinationen. | 1..1 |
| ../../../../arbetsplatskod | AltArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 0..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 1..1 |
| ../../../../kontaktuppgift | KontaktuppgiftResponse | Ordinatörens kontaktinformation. | 1..1 |
| ../../../../../adress1 | AdressType | Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../adress2 | AdressType | Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postnummer | PostnummerType | Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postort | PostortType | Patientens eller förskrivarens postort. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer1 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer2 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 2. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../utfardarkategori | UtfardarkategoriType | Förskrivarens utfärdarkategori enligt NEF. LAK = Läkare ATL = AT-läkare LMF = Läkare med förordnande TAN = Tandläkare VET = Veterinär TAH = Tandhygienist BMO = Barnmorska SSK = Sjuksköterska HJM = Hjälpmedelsförskrivare | 1..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../originalformat | OriginalformatType | Originalhandlingens ursprung. 0 = Pappersordination 1 = Telefonordination 2 = E-recept (NEF) (3 = Faxordination patient) 4 = Faxordination 5 = E-ordination 6 = Utskrivet från OR 7 = Utskriven E-ordination. | 1..1 |
| ../../../originalordinationsId | OriginalordinationsIdUuidType | Unikt id för en ordination. Dock ej unikt för e-recept som tillhör receptsamling. | 1..1 |
| ../../../patient | PatientResponse | Den patient som ordinationen gäller för. | 1..1 |
| ../../../../efternamn | EfternamnType | Patientens efternamn. Hämtas från första delen (före kommatecken) av patientens Rednamn som fås vid anrop mot FOLK. | 1..1 |
| ../../../../fodelsedatum | FodelsedatumResponse | Födelsedatum och kön för patienter som inte har fullständigt personnummer. | 0..1 |
| ../../../../../fodelsedatum | dateTime | Födelsedatum för patient som saknar giltigt personnummer. | 1..1 |
| ../../../../../kon | KonType | Patientens kön. Giltiga värden är: 1 = Man 2 = Kvinna 3 = Ej specificerat | 1..1 |
| ../../../../fornamn | FornamnType | Patientens förnamn. Hämtas från andra delen (efter kommatecken) av patientens Rednamn som fås vid anrop mot FOLK. | 1..1 |
| ../../../../kontaktuppgift | KontaktuppgiftResponse | Kontaktuppgifter för patienten. | 0..1 |
| ../../../../../adress1 | AdressType | Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../adress2 | AdressType | Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postnummer | PostnummerType | Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postort | PostortType | Patientens eller förskrivarens postort. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer1 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer2 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 2. | 0..1 |
| ../../../../personnummer | PersonnummerType | Giltigt personnummer. | 0..1 |
| ../../../registrerandeApotekspersonal | RegistrerandeApotekspersonalResponse | Den som registrerat ordinationen. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../testindikator | TestindikatorType | Markering om ordinationen är äkta, för test eller för utbildning. 1 = Äkta 2 = Test 3 = Utbildning | 1..1 |
| ../../ordinationsstatus | OrdinationsstatusResponse |   | 1..1 |
| ../../../radversion | RadversionType | Ordinationens versionsnummer för intern versionshantering av en ordination. Ny radversion av ordinationen skapas vid varje uttag. Returneras alltid men kan vara utan värde. | 1..1 |
| ../../../status | OrdinationsStatusType | Status för dosunderlag, ordination eller uttag. | 1..1 |
| ../../../tidpunkt | dateTime | Datum och tid då dosunderlag, ordination eller uttag senast förändrades. | 1..1 |
| ../../ordinationstyp | OrdinationstypType | Typ av ordination. Anges enbart på ordinationer till dospatient. B = Helförpackning vid behov S = Helförpackning stående D = Dispenserad ordination | 0..1 |
| ../../radnummerNEF | RadnummerNEFType | Unikt id för en rad i en receptsamling som skickas in via NEF. Radnumret är en kombination av rad inom receptsamlingen och eventuellt flerval. Id:t sätts av vårdsystemet. Radnummer utan flerval: 1,2,…n Radnummer med flerval: 1-1, 1-2, 1-n | 0..1 |
| ../../senasteHelforpackningsuttag | SenasteHelforpackningsuttagResponse |   | 0..1 |
| ../../../nastaUttagInomFormanen | dateTime | Datum för nästa tillåtna uttag inom förmånen. | 0..1 |
| ../../../senastExpedieratNPLId | NplIdType | Senast expedierat NPL-id eller SB-id. | 0..1 |
| ../../../senastExpedieratNPLPackId | NplPackIdType | Senast expedierat NPL Pack-id eller SB Pack-id. | 0..1 |
| ../../../senastExpedieratVarunr | VaruNrType | Senast expedierat varunr | 0..1 |
| ../../../senasteExpedieradMangd | ExpedieradMangdType | Senaste expedierad mängd | 1..1 |
| ../../../senasteFormansval | FormansvalType | Förmån som användes vid senaste expedition. U = Utan förmån R = Med förmån L = Livsmedel F = Kostnadsfritt | 1..1 |
| ../../../senasteUttagInomFormanen | dateTime | Datum för senaste uttag inom förmånen enligt förmånsreglerna. | 0..1 |
| ../../../senasteUttagsdatum | dateTime | Datum för senaste uttag | 1..1 |
| ../../tidigareOrdinationsId | OrdinationsIdType | Koppling till föregående ordination vid ordinationsförändringar. Ordinationerna behandlas som olika, fristående ordinationer. Används exempelvis vid förlängningar eller för att koppla ihop en ordination som skrivits ut på receptoriginal och registrerats in i OR igen. | 0..1 |
| ../../utsattning | UtsattningResponse | Information om eventuell historikskapande händelse (utsättning). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. Utsättning innehållande enbart utsättningstidpunkt kan dock förekomma i kombination med annat historikskapande objekt. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../../utsattningstidpunkt | dateTime | Datum när patienten skall avsluta intag. | 0..1 |
| ../../extension | Extension3Type |   | 0..1 |
| ../../../sparradUppgiftKod | SparradUppgiftKodType | Kod för spärrad uppgift i receptet. | 0..1 |
| ../../../sparradUppgiftKlartext | SparradUppgiftKlartextType | Klartext för spärrad uppgift i receptet. | 0..1 |
| ../personnummer | PersonnummerType | Patientens personnummer. | 0..1 |
| ../underlagsversion | UnderlagsversionType | Version på Ordinationslista. Används för att verifiera att klientsystemet har rätt underlag vid uppdateringar. | 0..1 |

#### FHIR-artefakter

* [HamtaAktuellaOrdinationerRequest](StructureDefinition-hamtaaktuellaordinationer-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [HamtaAktuellaOrdinationer](StructureDefinition-hamtaaktuellaordinationer.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [HamtaAktuellaOrdinationerInteraction_5.2_rivtabp21.wsdl](HamtaAktuellaOrdinationerInteraction_5.2_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [HamtaAktuellaOrdinationerResponder_5.2.xsd](HamtaAktuellaOrdinationerResponder_5.2.xsd) | Tjänsteschema |

### HamtaIckeAktuellaOrdinationer

#### Version

6.2

| | |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:or:HamtaIckeAktuellaOrdinationerResponder:6` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:or:HamtaIckeAktuellaOrdinationer:6` |
| SOAP-action | `urn:riv:se.apotekensservice:or:HamtaIckeAktuellaOrdinationerResponder:6:HamtaIckeAktuellaOrdinationer` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| fromDatum | dateTime | Från och med datum för perioden som ska visas. | 0..1 |
| personnummer | PersonnummerType | Giltigt personnummer för patient. | 1..1 |
| ordinationsId | OrdinationsIdType | OrdinationsId. Anges om bara en ordination ska returneras. | 0..1 |
| grupplegitimationskod | LegitimationskodType | Användarens 6-ställiga grupplegitimationskod. Obligatorisk för Apotekselev, receptarieelev, Teknikerelev och Europeisk farmaceut. | 0..1 |
| gruppforskrivarkod | ForskrivarkodType | Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| **Svar** |   |   |   |
| apoteksInformationLista | ApoteksinformationResponse | Lista med apotek därifrån förändringar eller skapande utförts på/av ordinationerna. | 0..* |
| ../aktorsnamn | AktorsnamnType | Officiellt namn för aktör | 0..1 |
| ../aktorsorgnr | OrgNrType | Aktörens organisationsnummer. | 0..1 |
| ../allmantelefon | TelefonnummerBasType | Telefonnummer för receptexpedition | 0..1 |
| ../besoksadress | BesoksadressType | Expeditionsställets besöksadress | 0..1 |
| ../eReceptDjur | boolean | Anger om apoteket expedierar erecept för djur | 0..1 |
| ../fax | FaxType | Expeditionsställets faxnummer | 0..1 |
| ../glnKod | GlnKodType | Expeditionsställets GLN-kod | 1..1 |
| ../huvudtypkod | ExpeditionsstalleHuvudtypkodType | Kod som beskriver huvudverksamheten för expeditionsstället | 0..1 |
| ../namn | ExpeditionsstalleNamnType | Expeditionsställets officiella namn | 0..1 |
| ../ort | ExpeditionsstalleOrtType | Expeditionsställets besöksort | 0..1 |
| ../registrerad | boolean | Anger om apoteket finns registrerat i EXPO. Om false så saknar alla fält utom glnKod värden. | 1..1 |
| ../slutdatum | dateTime | Datum för stängning av verksamhet | 0..1 |
| ../startdatum | dateTime | Datum för start av verksamhet | 0..1 |
| arbetsplatsInfoLista | ArbetsplatsInfoResponse | Lista med arbetsplatser därifrån förändringar utförts på ordinationerna. | 0..* |
| ../arbetsplatsNamn | ArbetsplatsNamnType | ArbetsplatsNamn | 0..1 |
| ../arbetsplatsOrt | ArbetsplatsOrtType | ArbetsplatsOrt | 0..1 |
| ../arbetsplatskod | ArbetsplatskodType | Arbetsplatskod | 1..1 |
| ../faxnummer | FaxType | Faxnummer | 0..1 |
| ../giltigSlut | dateTime | Slutdatum för arbetsplatsens giltighetsperiod. | 0..1 |
| ../giltigStart | dateTime | Startdatum för arbetsplatsens giltighetsperiod. | 0..1 |
| ../postadress | PostadressType | Postadress | 0..1 |
| ../postnummer | PostnummerType | Postnummer | 0..1 |
| ../registrerad | boolean | Anger om arbetsplatsen finns registrerad i ARKO. Om false så saknar alla fält utom arbetsplatskod värden. | 1..1 |
| ../telefonnummer1 | TelefonnummerBasType | Telefonnummer 1 | 0..1 |
| ../telefonnummer2 | TelefonnummerBasType | Telefonnummer 2 | 0..1 |
| artikelLista | ArtikelResponse | Lista med artikelinformation för de varor som ingår i ordinationerna. | 0..* |
| ../alternativtAntalKlartext | AlternativtAntalKlartextType | Sammanslagning av multiplar, antal och alternativ enhet. Om alternativ enhet saknas för artikeln är detta fält tomt. | 0..1 |
| ../antalKlartext | AntalKlartextType | Sammanslagning av multiplar, antal och enhet på storleken. | 0..1 |
| ../artikelbenamning | ArtikelbenamningType | Sammanfattande beskrivning på en artikel (läkemedelsnamn + läkemedelsform + styrka + styrkans enhet + företag vid behov) Förkortningar kan förekomma. | 0..1 |
| ../atcKlartext | AtcKlartextType | ATC-kod i klartext enligt lexikontabell. Språk anges på svenska (sv). | 0..1 |
| ../atcKod | AtcKodType | ATC-kod | 0..1 |
| ../avregistreringsdatum | dateTime | Datum då artikeln blev avregistrerad. | 0..1 |
| ../bestallningsstoppad | boolean | Markering om artikel enligt TLV är beställningsstoppad i gällande prisperiod. | 0..1 |
| ../foregaendePrisperiodensvara | boolean | Markering som anger om artikeln var definierad som föregående prisperiodens vara. | 0..1 |
| ../formansberattigad | boolean | Markering som visar om artikeln är förmånsberättigad enligt VARA, vilket beslutas av TLV. | 0..1 |
| ../forpackningsenhet | ForpackningsenhetType | Enhet på förpackningsstorleken, i klartext. Returnerar den alternativa enheten om sådan finns angiven för artikeln. Språk anges på svenska (sv). | 0..1 |
| ../forpackningsinnehall | ForpackningsinnehallType | Beskrivning av förpackning, innehåll och antal. | 0..1 |
| ../forpackningsmangd | ForpackningsmangdType | Totala mängden i förpackningen. Returnerar den alternativa förpackningsmängden om sådan finns angiven för artikeln. | 0..1 |
| ../forpackningstyp | ForpackningstypType | Beskrivning av förpackningstyp för en artikel. | 0..1 |
| ../forsaljningsstoppad | boolean | Markering som visar om artikeln inte längre får försäljas. Sant om antingen artikeln eller produkten är försäljningsstoppad. | 0..1 |
| ../forskrivningsratter | ForskrivningsratterType | Lista med förskrivningsrätter för artikeln. Använder koder enligt NPL. | 0..* |
| ../forskrivningsrattsyrken | YrkesInfoResponse | Lista med yrken som har förskrivningsrätt för artikeln. Listan utvinns ur förskrivningsrättskoderna, översätts till tvåställiga yrkeskoder och klartexter. Varje yrke finns max en gång i listan. | 0..* |
| ../../yrkesKod | YrkeskodType | Yrkeskod för utfärdarkategori. | 1..1 |
| ../../yrkesKodKlartext | YrkesKodKlartextType | Yrkeskod för utfärdarkategori, klartext. | 1..1 |
| ../historiskaVarunummer | VaruNrType | Lista över eventuella tidigare varunummer. Används om en artikel har fått nytt varunummer. | 0..* |
| ../intressent | IntressentType | Intressent (företag) som är ansvarig för artikeln. | 0..1 |
| ../lakemedel | boolean | Markering som visar om en artikel är ett läkemedel. | 0..1 |
| ../narkotikaklass | NarkotikaklassType | Koden för narkotikaklass enligt Läkemedelsverkets förteckning: - = Ospecificerad 0 = Ej narkotikaklassad 1 = II 2 = Narkotika förteckning IV/V 3 = III 4 = IV 5 = V 6 = I | 0..1 |
| ../narkotikaklassKlartext | NarkotikaklassKlartextType | Narkotikaklass i klartext enligt Läkemedelsverket förteckning. Klartext enligt lexikontabell för narkotikaklass. Språk anges på svenska (sv). | 0..1 |
| ../nplId | NplIdType | Produktid, antingen NPL-id eller SB-id. Unikt id för en läkemedelsprodukt. Alla förpackningar med samma styrka/form/tillverkare grupperas i samma produktid. | 0..1 |
| ../nplPackageId | NplPackIdType | Förpackningsid, antingen NPL-packid eller SB-packid. Unikt id för en läkemedelsartikel. | 0..1 |
| ../prisperiodensvara | boolean | Markering som anger om artikeln är definierad som prisperiodens vara. | 0..1 |
| ../produkttyp | ProdukttypType | Artikelns produkttyp som kod. | 0..1 |
| ../produkttypKlartext | ProdukttypKlartextType | Artikelns produkttyp som klartext enligt lexikontabell för produkttyp. Språk anges på svenska (sv). | 0..1 |
| ../registrerad | boolean | Anger om artikeln finns registrerad i VARA. | 1..1 |
| ../sarskiltLakemedelKod | SarskiltLakemedelKodType | Kod som anger om särskild receptblankett krävs och om recept får itereras. 1 = Särskilt receptblankett krävs INTE. 2 = Särskild receptblankett krävs. Recepten får itereras. 3 = Särskild receptblankett krävs. Recepten får EJ itereras. 4 = Särskild receptblankett krävs. Recept för humant bruk får itereras. - = Ospecifierat | 0..1 |
| ../tillhandahalls | boolean | Markering som visar om artikeln marknadsförs på den svenska marknaden. Sant om både artikeln och produkten tillhandahålls. | 0..1 |
| ../utbytbar | boolean | Markering som anger om artikeln är utbytbar enligt VARA. | 0..1 |
| ../varunummer | VaruNrType | Nordiskt varunummer som är unikt för handelsvaror. För läkemedel kan dubbletter förekomma vid parallellimport. | 0..1 |
| ../extension | Extension2Type |   | 0..1 |
| ../../utlamnandebegransningKod | UtlamnandebegransningKodType | Kod som anger om produkten får utlämnas från apotek endast om den har förskrivits av en läkare med viss specialistkompetens. | 0..1 |
| ../../utlamnandebegransningKlartext | UtlamnandebegransningKlartextType | Anger om produkten får utlämnas från apotek endast om den har förskrivits av en läkare med viss specialistkompetens. | 0..1 |
| forskrivarInfoLista | ForskrivarinfoResponse | Lista med förskrivare som gjort förändringar i ordinationerna. | 0..* |
| ../efternamn | EfternamnType | Efternamn | 0..1 |
| ../fornamn | FornamnType | Förnamn | 0..1 |
| ../forskrivarkod | ForskrivarkodType | Förskrivarkod. | 1..1 |
| ../giltig | boolean | Sann om förskrivaren är giltig. | 1..1 |
| ../gruppforskrivarkodKlartext | GruppforskrivarkodKlartextType | Gruppförskrivarkod klartext. | 0..1 |
| ../yrkesKodInfoLista | YrkesKodInfoResponse | Lista av yrkeskodsinformation. | 0..* |
| ../../specialistKodKlartext | SpecialistKodKlartextType | Lista med specialistkod för utfärdarkategori, klartext. | 0..* |
| ../../yrkesKodKlartext | YrkesKodKlartextType | Yrkeskod för utfärdarkategori, klartext. | 1..1 |
| ../../inskrankt | boolean | Sann om förskrivaren (per yrkeskod) har inskränkt förskrivningsrätt. | 0..1 |
| ordinationKortInfolista | OrdinationslistaKortInfoResponse | Ordinationslista | 1..1 |
| ../dispenseradordinationLista | DispenseradOrdinationResponse | Lista med dispenserade ordinationer. | 0..* |
| ../../affResultat | AFFResultatResponse | Information om aff-fel för ordinationen. | 1..1 |
| ../../../affFelLista | AFFFelResponse | Lista med AFF-fel | 0..* |
| ../../../../allvarlighetsgrad | AllvarlighetsgradType | Kod för att beskriva hur allvarligt ett AFF-fel är. 1 = Accepterad med varning, 2 = Avvisad. | 1..1 |
| ../../../../felkod | AffFelkodType | Felkod enligt Automatisk format- och författningskontroll (AFF). | 1..1 |
| ../../../../felmeddelande | AffFelmeddelandeType | Felmeddelande för AFF-fel. | 1..1 |
| ../../../affStatus | AffStatusType | Status för hela ordinationen eller uttaget. Allvarligaste AFF-felet styr status för hela ordinationen. 0 = Accepterad, 1 = Accepterad med varning, 2 = Avvisad. | 1..1 |
| ../../../avvisningsorsak | AvvisningType | Information om avvisningsorsak. | 0..1 |
| ../../../kontrolltidpunkt | dateTime | Datum och tidpunkt för utförd AFF-kontroll. | 1..1 |
| ../../../kontrolltyp | AffKontrolltypType | Typ av AFF-kontroll som har genomförts. 1 = AFF-PRENEF 2 = AFF-NEF 3 = AFF-REG 4 = AFF-KORR 5 = AFF-EXP 6 = AFF-KEX 7 = AFF-MAK 8 = AFF-NOD 9 = AFF-UTS | 1..1 |
| ../../akut | boolean | Markering att ordinationen är akut. | 0..1 |
| ../../apoteketsKommentar | ApoteketsKommentarType | Farmaceutens kommentar på ordinationen. | 0..1 |
| ../../artikelinformation | ArtikelinformationResponse | Information om artikeln som ordinerats. | 1..1 |
| ../../../nplId | NplIdType | NPL-id alternativt SB-id som identifierar läkemedelprodukt. | 0..1 |
| ../../../nplPackId | NplPackIdType | NPL pack-id alternativt SB Pack-id som identifierar läkemedelsartikel. | 0..1 |
| ../../../utbyttArtikel | boolean | Markering om substitution har skett vid expedition. Kan endast sättas via uttag. | 0..1 |
| ../../../varunr | VaruNrType | Identitet på förskriven eller expedierad artikel. | 0..1 |
| ../../behandlingsinformation | BehandlingsinformationResponse |   | 1..1 |
| ../../../andamalKlartext | AndamalKlartextType | Ändamål i klartext | 0..1 |
| ../../../behandlingsslut | dateTime | Datum om tidpunkt då behandlingen avslutas. | 0..1 |
| ../../../behandlingsstart | dateTime | Datum om och tidpunkt då behandlingen påbörjas. | 0..1 |
| ../../../doseringstext1 | DoseringstextType | Doseringstext från förskrivare eller korrigerad av farmaceut | 0..1 |
| ../../../doseringstext2 | DoseringstextType | Kompletterande doseringstext för exempelvis extempore och licensläkemedel. | 0..1 |
| ../../../sprakkod | SprakkodType | Främmande språk för doseringstext enligt ISO-639-1 | 0..1 |
| ../../dispenseringsregler | DispenseringsreglerResponse | Dispenseringsregler | 1..1 |
| ../../../bytesEj | DispenseringsreglerBytesEjType | Markering att farmaceut eller patient beslutat att ordinerad artikel ej får bytas ut. A=Apoteks-nej, P=Patient-nej. Får enbart anges för Ordinationstyp=D (Dispenserad ordination). | 0..1 |
| ../../../ejTillatenSubstitution | boolean | Markering om förskriven vara ej får bytas ut enligt förskrivare. | 0..1 |
| ../../../forman | boolean | Förskrivarens uppgift om ordinationen ska innefattas i förmånen. | 1..1 |
| ../../../insattningstidpunkt | dateTime | Datum när patienten skall påbörja intag. | 0..1 |
| ../../../sistaGiltighetsdag | dateTime | Ordinationens sista giltighetsdag. | 0..1 |
| ../../doseringsschema | DoseringsschemaResponse | Information om intag. Valfritt för stående, obligatorisk dispenserad ordination, får ej anges för vid behov. | 0..1 |
| ../../../intagstillfalle | IntagstillfalleResponse | Beskriver tid och mängd för intag av läkemedel. | 1..* |
| ../../../../dagIPeriod | DagIPeriodType | Dag i perioden när intag skall göras. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period= 1. Onsdag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period=3. | 1..1 |
| ../../../../intagsmangd | IntagsmangdType | Intagsmängd per tillfälle. Null hanteras som enligt ordination. | 0..1 |
| ../../../../intagstillfalle | IntagstillfalleType | Klockslag när patienten ska inta medicinering. | 1..1 |
| ../../../periodlangd | PeriodlangdType | Antal dagar som dosering skall gälla. Vid regelbunden dosering anges periodlängd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag. | 1..1 |
| ../../forandring | ForandringResponse | Information om eventuell historikskapande händelse (förändring). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../forskrivarKommentar | EtikettTextType | Förskrivarens kommentar till apoteket. | 0..1 |
| ../../harForandrats | boolean | Markering om ordinationen har ändrats av förskrivare eller farmaceut. | 1..1 |
| ../../historisktOrdinationsId | OrdinationsIdType | Hänvisning till en eventuell historisk post av ordinationen. Alla historiska poster har tillståndsstatus Historik (211). En historisk post skapas exempelvis vid korrigering. | 0..1 |
| ../../korrigerbar | boolean | Markering om ordinationen är korrigerbar. | 0..1 |
| ../../leveransMeddelande | EtikettTextType | Leveransinformation om ordinationen skickas till ett ombud. | 0..1 |
| ../../makulering | MakuleringResponse | Information om eventuell historikskapande händelse (makluering). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../orsakskod | MakuleringOrsakskodType | Orsakskod som strukturerat beskriver orsak till makulering. | 1..1 |
| ../../../orsakskodKlartext | MakuleringOrsakskodKlartextType | Orsakskoder vid makulering: 1 = Fel patient. 2 = Fel läkemedel/vara/ styrka/ändamål. Patienten informerad. 3 = Utsatt lm/Inaktuell medicinering. Patienten informerad. Gäller ej dospatienter då utsättning skall användas. 4 = Annan orsak. Patienten informerad. | 1..1 |
| ../../../paUppdragAv | MakuleringPaUppdragAvType | Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare. | 1..1 |
| ../../../samtyckeMakulering | boolean | Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../notatOrdination | KommentarType | Förskrivarens notat kopplat till en specifik ordination. | 0..1 |
| ../../ordinationsId | OrdinationsIdType | Ordinationens unika id som sätts av eHälsomyndigheten. | 1..1 |
| ../../ordinationsinformation | OrdinationsinformationResponse | Kompletterande information om ordinationen. | 1..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Den som godkänt ordinationen. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../lagringstidpunkt | dateTime | Datum och tid då ordinationen skapades i OR. | 1..1 |
| ../../../mottagandeApotek | GlnKodType | Apoteks-id (GLN) vid direktadressering av ordinationer. | 0..1 |
| ../../../ordinationstidpunkt | dateTime | Datum och eventuell tid för ordinationens utfärdande. | 1..1 |
| ../../../ordinator | OrdinatorResponse | Den ordinatör som utfärdat ordinationen. | 1..1 |
| ../../../../arbetsplatskod | AltArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 0..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 1..1 |
| ../../../../kontaktuppgift | KontaktuppgiftResponse | Ordinatörens kontaktinformation. | 1..1 |
| ../../../../../adress1 | AdressType | Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../adress2 | AdressType | Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postnummer | PostnummerType | Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postort | PostortType | Patientens eller förskrivarens postort. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer1 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer2 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 2. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../utfardarkategori | UtfardarkategoriType | Förskrivarens utfärdarkategori enligt NEF. LAK = Läkare ATL = AT-läkare LMF = Läkare med förordnande TAN = Tandläkare VET = Veterinär TAH = Tandhygienist BMO = Barnmorska SSK = Sjuksköterska HJM = Hjälpmedelsförskrivare | 1..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../originalformat | OriginalformatType | Originalhandlingens ursprung. 0 = Pappersordination 1 = Telefonordination 2 = E-recept (NEF) (3 = Faxordination patient) 4 = Faxordination 5 = E-ordination 6 = Utskrivet från OR 7 = Utskriven E-ordination. | 1..1 |
| ../../../originalordinationsId | OriginalordinationsIdUuidType | Unikt id för en ordination. Dock ej unikt för e-recept som tillhör receptsamling. | 1..1 |
| ../../../patient | PatientResponse | Den patient som ordinationen gäller för. | 1..1 |
| ../../../../efternamn | EfternamnType | Patientens efternamn. Hämtas från första delen (före kommatecken) av patientens Rednamn som fås vid anrop mot FOLK. | 1..1 |
| ../../../../fodelsedatum | FodelsedatumResponse | Födelsedatum och kön för patienter som inte har fullständigt personnummer. | 0..1 |
| ../../../../../fodelsedatum | dateTime | Födelsedatum för patient som saknar giltigt personnummer. | 1..1 |
| ../../../../../kon | KonType | Patientens kön. Giltiga värden är: 1 = Man 2 = Kvinna 3 = Ej specificerat | 1..1 |
| ../../../../fornamn | FornamnType | Patientens förnamn. Hämtas från andra delen (efter kommatecken) av patientens Rednamn som fås vid anrop mot FOLK. | 1..1 |
| ../../../../kontaktuppgift | KontaktuppgiftResponse | Kontaktuppgifter för patienten. | 0..1 |
| ../../../../../adress1 | AdressType | Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../adress2 | AdressType | Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postnummer | PostnummerType | Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postort | PostortType | Patientens eller förskrivarens postort. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer1 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer2 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 2. | 0..1 |
| ../../../../personnummer | PersonnummerType | Giltigt personnummer. | 0..1 |
| ../../../registrerandeApotekspersonal | RegistrerandeApotekspersonalResponse | Den som registrerat ordinationen. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../testindikator | TestindikatorType | Markering om ordinationen är äkta, för test eller för utbildning. 1 = Äkta 2 = Test 3 = Utbildning | 1..1 |
| ../../ordinationsstatus | OrdinationsstatusResponse |   | 1..1 |
| ../../../radversion | RadversionType | Ordinationens versionsnummer för intern versionshantering av en ordination. Ny radversion av ordinationen skapas vid varje uttag. Returneras alltid men kan vara utan värde. | 1..1 |
| ../../../status | OrdinationsStatusType | Status för dosunderlag, ordination eller uttag. | 1..1 |
| ../../../tidpunkt | dateTime | Datum och tid då dosunderlag, ordination eller uttag senast förändrades. | 1..1 |
| ../../ordinationstyp | OrdinationstypType | Typ av ordination. Anges enbart på ordinationer till dospatient. B = Helförpackning vid behov S = Helförpackning stående D = Dispenserad ordination | 0..1 |
| ../../radnummerNEF | RadnummerNEFType | Unikt id för en rad i en receptsamling som skickas in via NEF. Radnumret är en kombination av rad inom receptsamlingen och eventuellt flerval. Id:t sätts av vårdsystemet. Radnummer utan flerval: 1,2,…n Radnummer med flerval: 1-1, 1-2, 1-n | 0..1 |
| ../../senastDispenseratUttag | SenastDispenseratUttagResponse | Senast dispenseratuttag | 0..1 |
| ../../../senastExpedieratNPLId | NplIdType | Senast expedierat NPL-id eller SB-id. | 0..1 |
| ../../../senastExpedieratNPLPackId | NplPackIdType | Senast expedierat NPL Pack-id eller SB Pack-id. | 0..1 |
| ../../../senastExpedieratVarunr | VaruNrType | Senast expedierat varunr | 0..1 |
| ../../../senasteExpedieradMangd | ExpedieradMangdType | Senaste expedierad mängd | 1..1 |
| ../../../senasteFormansval | FormansvalType | Förmån som användes vid senaste expedition. R = Med förmån U = Utan förmån L = Livsmedel F = Kostnadsfritt | 1..1 |
| ../../../senasteUttagsdatum | dateTime | Datum för senaste uttag | 1..1 |
| ../../tidigareOrdinationsId | OrdinationsIdType | Koppling till föregående ordination vid ordinationsförändringar. Ordinationerna behandlas som olika, fristående ordinationer. Används exempelvis vid förlängningar eller för att koppla ihop en ordination som skrivits ut på receptoriginal och registrerats in i OR igen. | 0..1 |
| ../../utsattning | UtsattningResponse | Information om eventuell historikskapande händelse (utsättning). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. Utsättning innehållande enbart utsättningstidpunkt kan dock förekomma i kombination med annat historikskapande objekt. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../../utsattningstidpunkt | dateTime | Datum när patienten skall avsluta intag. | 0..1 |
| ../../extension | Extension3Type |   | 0..1 |
| ../../../sparradUppgiftKod | SparradUppgiftKodType | Kod för spärrad uppgift i receptet. | 0..1 |
| ../../../sparradUppgiftKlartext | SparradUppgiftKlartextType | Klartext för spärrad uppgift i receptet. | 0..1 |
| ../dosunderlag | DosunderlagResponse | Dospatients dosunderlag. | 0..1 |
| ../../dosordinator | DosordinatorResponse | Dosordinatör. | 0..1 |
| ../../../arbetsplatskod | AltArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 1..1 |
| ../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tid då Dosunderlaget skapades. | 1..1 |
| ../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../dosproducent | GlnKodType | Apoteks-id på dosproducent som patienten är kopplad till. | 0..1 |
| ../../dosunderlagsstatus | DosunderlagsstatusResponse | Tillståndsstatus för dosunderlag. | 1..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Förändrande apotekspersonal | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../status | DosunderlagsstatusType | Status för dosunderlag, ordination eller uttag. | 1..1 |
| ../../../tidpunkt | dateTime | Datum och tid då dosunderlag, ordination eller uttag senast förändrades. | 1..1 |
| ../../dosunderlagsversion | DosunderlagsversionType | Ny Dosunderlagsversion skapas varje gång Dosunderlaget ändrar status till "Ej godkänt". Dosunderlagsversionen skrivs ut på dosreceptet. | 1..1 |
| ../../godkannandeFarmaceut | GodkannandeFarmaceutResponse | Godkännande Farmaceut. | 0..1 |
| ../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../godkannandetidpunkt | dateTime | Datum och tid för dosunderlagets godkännande. | 1..1 |
| ../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../helforpackningsordinationLista | HelforpackningsordinationResponse | Lista med helförpackningsordinationer. | 0..* |
| ../../affResultat | AFFResultatResponse | Information om aff-fel för ordinationen. | 1..1 |
| ../../../affFelLista | AFFFelResponse | Lista med AFF-fel | 0..* |
| ../../../../allvarlighetsgrad | AllvarlighetsgradType | Kod för att beskriva hur allvarligt ett AFF-fel är. 1 = Accepterad med varning, 2 = Avvisad. | 1..1 |
| ../../../../felkod | AffFelkodType | Felkod enligt Automatisk format- och författningskontroll (AFF). | 1..1 |
| ../../../../felmeddelande | AffFelmeddelandeType | Felmeddelande för AFF-fel. | 1..1 |
| ../../../affStatus | AffStatusType | Status för hela ordinationen eller uttaget. Allvarligaste AFF-felet styr status för hela ordinationen. 0 = Accepterad, 1 = Accepterad med varning, 2 = Avvisad. | 1..1 |
| ../../../avvisningsorsak | AvvisningType | Information om avvisningsorsak. | 0..1 |
| ../../../kontrolltidpunkt | dateTime | Datum och tidpunkt för utförd AFF-kontroll. | 1..1 |
| ../../../kontrolltyp | AffKontrolltypType | Typ av AFF-kontroll som har genomförts. 1 = AFF-PRENEF 2 = AFF-NEF 3 = AFF-REG 4 = AFF-KORR 5 = AFF-EXP 6 = AFF-KEX 7 = AFF-MAK 8 = AFF-NOD 9 = AFF-UTS | 1..1 |
| ../../apoteketsKommentar | ApoteketsKommentarType | Farmaceutens kommentar på ordinationen. | 0..1 |
| ../../artikelinformation | ArtikelinformationResponse | Information om artikeln som ordinerats. | 1..1 |
| ../../../nplId | NplIdType | NPL-id alternativt SB-id som identifierar läkemedelprodukt. | 0..1 |
| ../../../nplPackId | NplPackIdType | NPL pack-id alternativt SB Pack-id som identifierar läkemedelsartikel. | 0..1 |
| ../../../utbyttArtikel | boolean | Markering om substitution har skett vid expedition. Kan endast sättas via uttag. | 0..1 |
| ../../../varunr | VaruNrType | Identitet på förskriven eller expedierad artikel. | 0..1 |
| ../../behandlingsinformation | BehandlingsinformationResponse |   | 1..1 |
| ../../../andamalKlartext | AndamalKlartextType | Ändamål i klartext | 0..1 |
| ../../../behandlingsslut | dateTime | Datum om tidpunkt då behandlingen avslutas. | 0..1 |
| ../../../behandlingsstart | dateTime | Datum om och tidpunkt då behandlingen påbörjas. | 0..1 |
| ../../../doseringstext1 | DoseringstextType | Doseringstext från förskrivare eller korrigerad av farmaceut | 0..1 |
| ../../../doseringstext2 | DoseringstextType | Kompletterande doseringstext för exempelvis extempore och licensläkemedel. | 0..1 |
| ../../../sprakkod | SprakkodType | Främmande språk för doseringstext enligt ISO-639-1 | 0..1 |
| ../../doseringsschema | DoseringsschemaResponse | Information om intag. Valfritt för stående, obligatorisk dispenserad ordination, får ej anges för vid behov. | 0..1 |
| ../../../intagstillfalle | IntagstillfalleResponse | Beskriver tid och mängd för intag av läkemedel. | 1..* |
| ../../../../dagIPeriod | DagIPeriodType | Dag i perioden när intag skall göras. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period= 1. Onsdag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period=3. | 1..1 |
| ../../../../intagsmangd | IntagsmangdType | Intagsmängd per tillfälle. Null hanteras som enligt ordination. | 0..1 |
| ../../../../intagstillfalle | IntagstillfalleType | Klockslag när patienten ska inta medicinering. | 1..1 |
| ../../../periodlangd | PeriodlangdType | Antal dagar som dosering skall gälla. Vid regelbunden dosering anges periodlängd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag. | 1..1 |
| ../../forandring | ForandringResponse | Information om eventuell historikskapande händelse (förändring). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../forskrivarKommentar | EtikettTextType | Förskrivarens kommentar till apoteket. | 0..1 |
| ../../harForandrats | boolean | Markering om ordinationen har ändrats av förskrivare eller farmaceut. | 1..1 |
| ../../helforpackningsregler | HelforpackningsreglerResponse |   | 1..1 |
| ../../../ejTillatenSubstitution | boolean | Markering om förskriven vara ej får bytas ut enligt förskrivare. | 0..1 |
| ../../../forman | boolean | Förskrivarens uppgift om ordinationen ska innefattas i förmånen. | 1..1 |
| ../../../forskrivetAntalUttag | AntalUttagType | Antal tillåtna uttag på ordinationen. | 1..1 |
| ../../../forstaUttagFore | dateTime | Datum inom vilket första uttag av läkemedel måste göras. Sker inte någon expedition på receptet innan detta datum sätts hela ordinationen till utgången. | 0..1 |
| ../../../insattningstidpunkt | dateTime | Datum när patienten skall påbörja intag. | 0..1 |
| ../../../intervall | IntervallResponse | Absolut expeditionsintervall. | 0..1 |
| ../../../../expeditionsintervall | ExpeditionsintervallType | Absolut expeditionsintervall. Av förskrivaren angiven kortaste tid mellan två expeditioner. | 1..1 |
| ../../../../intervallenhet | IntervallenhetType | Enhet för det absoluta expeditionsintervallet. Kan anges i dagar, veckor eller månader. Mn = Månader V = Veckor Dg = Dagar Obligatorisk parameter om Expeditionsintervall anges. | 1..1 |
| ../../../resterandeAntalUttag | ResterandeAntalUttagType | Kvarvarande antal uttag på ordinationen | 1..1 |
| ../../../sistaGiltighetsdag | dateTime | Ordinationens sista giltighetsdag. | 0..1 |
| ../../../slutexpedierad | boolean | Markering om farmaceut anser att ordinationen är slutexpedierad. Används då kvarvarande mängd är minde än minsta förpackningsstorlek för aktuell artikel. | 1..1 |
| ../../../slutexpedieradAvFarmaceut | boolean | Farmaceut har markerat att ordinationen är slutexpedierad. | 0..1 |
| ../../historisktOrdinationsId | OrdinationsIdType | Hänvisning till en eventuell historisk post av ordinationen. Alla historiska poster har tillståndsstatus Historik (211). En historisk post skapas exempelvis vid korrigering. | 0..1 |
| ../../korrigerbar | boolean | Markering om ordinationen är korrigerbar. | 0..1 |
| ../../leveransMeddelande | EtikettTextType | Leveransinformation om ordinationen skickas till ett ombud. | 0..1 |
| ../../makulering | MakuleringResponse | Information om eventuell historikskapande händelse (makluering). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../orsakskod | MakuleringOrsakskodType | Orsakskod som strukturerat beskriver orsak till makulering. | 1..1 |
| ../../../orsakskodKlartext | MakuleringOrsakskodKlartextType | Orsakskoder vid makulering: 1 = Fel patient. 2 = Fel läkemedel/vara/ styrka/ändamål. Patienten informerad. 3 = Utsatt lm/Inaktuell medicinering. Patienten informerad. Gäller ej dospatienter då utsättning skall användas. 4 = Annan orsak. Patienten informerad. | 1..1 |
| ../../../paUppdragAv | MakuleringPaUppdragAvType | Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare. | 1..1 |
| ../../../samtyckeMakulering | boolean | Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../mangdinformation | MangdinformationResponse |   | 1..1 |
| ../../../antalForpackningar | AntalForpackningarType | Antal förpackningar per uttag | 1..1 |
| ../../../ingenDygnsdos | boolean | Markering att dygnsdos inte kan anges. Exempelvis vid ordination av kräm. | 0..1 |
| ../../../maxDygnsdos | MaxDygnsdosType | Maximal mängd läkemedel som får förbrukas per dygn enligt doseringsschema eller doseringsanvisning. | 0..1 |
| ../../../maxVeckodos | MaxVeckodosType | Maximal mängd läkemedel som får förbrukas per vecka enligt doseringsschema eller doseringsanvisning. | 0..1 |
| ../../../startforpackning | boolean | Anger om startförpackning ska expedieras vid första uttag | 1..1 |
| ../../../totalmangd | TotalmangdType | Förskriven totalmängd. | 1..1 |
| ../../../totalmangdKvar | TotalmangdKvarType | Resterande mängd som finns kvar på receptet | 1..1 |
| ../../notatOrdination | KommentarType | Förskrivarens notat kopplat till en specifik ordination. | 0..1 |
| ../../ordinationsId | OrdinationsIdType | Ordinationens unika id som sätts av eHälsomyndigheten. | 1..1 |
| ../../ordinationsinformation | OrdinationsinformationResponse | Kompletterande information om ordinationen. | 1..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Den som godkänt ordinationen. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../lagringstidpunkt | dateTime | Datum och tid då ordinationen skapades i OR. | 1..1 |
| ../../../mottagandeApotek | GlnKodType | Apoteks-id (GLN) vid direktadressering av ordinationer. | 0..1 |
| ../../../ordinationstidpunkt | dateTime | Datum och eventuell tid för ordinationens utfärdande. | 1..1 |
| ../../../ordinator | OrdinatorResponse | Den ordinatör som utfärdat ordinationen. | 1..1 |
| ../../../../arbetsplatskod | AltArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 0..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 1..1 |
| ../../../../kontaktuppgift | KontaktuppgiftResponse | Ordinatörens kontaktinformation. | 1..1 |
| ../../../../../adress1 | AdressType | Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../adress2 | AdressType | Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postnummer | PostnummerType | Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postort | PostortType | Patientens eller förskrivarens postort. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer1 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer2 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 2. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../utfardarkategori | UtfardarkategoriType | Förskrivarens utfärdarkategori enligt NEF. LAK = Läkare ATL = AT-läkare LMF = Läkare med förordnande TAN = Tandläkare VET = Veterinär TAH = Tandhygienist BMO = Barnmorska SSK = Sjuksköterska HJM = Hjälpmedelsförskrivare | 1..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../originalformat | OriginalformatType | Originalhandlingens ursprung. 0 = Pappersordination 1 = Telefonordination 2 = E-recept (NEF) (3 = Faxordination patient) 4 = Faxordination 5 = E-ordination 6 = Utskrivet från OR 7 = Utskriven E-ordination. | 1..1 |
| ../../../originalordinationsId | OriginalordinationsIdUuidType | Unikt id för en ordination. Dock ej unikt för e-recept som tillhör receptsamling. | 1..1 |
| ../../../patient | PatientResponse | Den patient som ordinationen gäller för. | 1..1 |
| ../../../../efternamn | EfternamnType | Patientens efternamn. Hämtas från första delen (före kommatecken) av patientens Rednamn som fås vid anrop mot FOLK. | 1..1 |
| ../../../../fodelsedatum | FodelsedatumResponse | Födelsedatum och kön för patienter som inte har fullständigt personnummer. | 0..1 |
| ../../../../../fodelsedatum | dateTime | Födelsedatum för patient som saknar giltigt personnummer. | 1..1 |
| ../../../../../kon | KonType | Patientens kön. Giltiga värden är: 1 = Man 2 = Kvinna 3 = Ej specificerat | 1..1 |
| ../../../../fornamn | FornamnType | Patientens förnamn. Hämtas från andra delen (efter kommatecken) av patientens Rednamn som fås vid anrop mot FOLK. | 1..1 |
| ../../../../kontaktuppgift | KontaktuppgiftResponse | Kontaktuppgifter för patienten. | 0..1 |
| ../../../../../adress1 | AdressType | Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../adress2 | AdressType | Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postnummer | PostnummerType | Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../postort | PostortType | Patientens eller förskrivarens postort. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer1 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare. | 0..1 |
| ../../../../../telefonnummer2 | TelefonnummerType | Patientens eller förskrivarens telefonnummer 2. | 0..1 |
| ../../../../personnummer | PersonnummerType | Giltigt personnummer. | 0..1 |
| ../../../registrerandeApotekspersonal | RegistrerandeApotekspersonalResponse | Den som registrerat ordinationen. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../testindikator | TestindikatorType | Markering om ordinationen är äkta, för test eller för utbildning. 1 = Äkta 2 = Test 3 = Utbildning | 1..1 |
| ../../ordinationsstatus | OrdinationsstatusResponse |   | 1..1 |
| ../../../radversion | RadversionType | Ordinationens versionsnummer för intern versionshantering av en ordination. Ny radversion av ordinationen skapas vid varje uttag. Returneras alltid men kan vara utan värde. | 1..1 |
| ../../../status | OrdinationsStatusType | Status för dosunderlag, ordination eller uttag. | 1..1 |
| ../../../tidpunkt | dateTime | Datum och tid då dosunderlag, ordination eller uttag senast förändrades. | 1..1 |
| ../../ordinationstyp | OrdinationstypType | Typ av ordination. Anges enbart på ordinationer till dospatient. B = Helförpackning vid behov S = Helförpackning stående D = Dispenserad ordination | 0..1 |
| ../../radnummerNEF | RadnummerNEFType | Unikt id för en rad i en receptsamling som skickas in via NEF. Radnumret är en kombination av rad inom receptsamlingen och eventuellt flerval. Id:t sätts av vårdsystemet. Radnummer utan flerval: 1,2,…n Radnummer med flerval: 1-1, 1-2, 1-n | 0..1 |
| ../../senasteHelforpackningsuttag | SenasteHelforpackningsuttagResponse |   | 0..1 |
| ../../../nastaUttagInomFormanen | dateTime | Datum för nästa tillåtna uttag inom förmånen. | 0..1 |
| ../../../senastExpedieratNPLId | NplIdType | Senast expedierat NPL-id eller SB-id. | 0..1 |
| ../../../senastExpedieratNPLPackId | NplPackIdType | Senast expedierat NPL Pack-id eller SB Pack-id. | 0..1 |
| ../../../senastExpedieratVarunr | VaruNrType | Senast expedierat varunr | 0..1 |
| ../../../senasteExpedieradMangd | ExpedieradMangdType | Senaste expedierad mängd | 1..1 |
| ../../../senasteFormansval | FormansvalType | Förmån som användes vid senaste expedition. U = Utan förmån R = Med förmån L = Livsmedel F = Kostnadsfritt | 1..1 |
| ../../../senasteUttagInomFormanen | dateTime | Datum för senaste uttag inom förmånen enligt förmånsreglerna. | 0..1 |
| ../../../senasteUttagsdatum | dateTime | Datum för senaste uttag | 1..1 |
| ../../tidigareOrdinationsId | OrdinationsIdType | Koppling till föregående ordination vid ordinationsförändringar. Ordinationerna behandlas som olika, fristående ordinationer. Används exempelvis vid förlängningar eller för att koppla ihop en ordination som skrivits ut på receptoriginal och registrerats in i OR igen. | 0..1 |
| ../../utsattning | UtsattningResponse | Information om eventuell historikskapande händelse (utsättning). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. Utsättning innehållande enbart utsättningstidpunkt kan dock förekomma i kombination med annat historikskapande objekt. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../../utsattningstidpunkt | dateTime | Datum när patienten skall avsluta intag. | 0..1 |
| ../../extension | Extension3Type |   | 0..1 |
| ../../../sparradUppgiftKod | SparradUppgiftKodType | Kod för spärrad uppgift i receptet. | 0..1 |
| ../../../sparradUppgiftKlartext | SparradUppgiftKlartextType | Klartext för spärrad uppgift i receptet. | 0..1 |
| ../ordinationkortinfoLista | OrdinationKortInfoResponse | Lista med kortinformation. | 0..* |
| ../../forandring | ForandringResponse | Information om eventuell historikskapande händelse (förändring). Endast en typ av historikskapande-information (makluering eller förändring) kan förekomma. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../makulering | MakuleringResponse | Information om eventuell historikskapande händelse (makulering). Endast en typ av historikskapande-information (makluering eller förändring) kan förekomma. | 0..1 |
| ../../../apotekspersonal | ApotekspersonalResponse | Apotekspersonal. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet. | 0..1 |
| ../../../../apoteksId | GlnKodType | Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../forandrandeOrdinator | ForandrandeOrdinatorResponse | Förandrande Ordinatör. | 0..1 |
| ../../../../arbetsplatskod | ArbetsplatskodType | Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen. | 1..1 |
| ../../../../befattningskod | BefattningskodType | Användarens befattningskod enligt HSA. | 0..1 |
| ../../../../efternamn | EfternamnType | Användarens efternamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../fornamn | FornamnType | Användarens förnamn. Obligatorisk för förskrivare. | 0..1 |
| ../../../../forskrivarkod | ForskrivarkodType | Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten. | 0..1 |
| ../../../../legitimationskod | LegitimationskodType | Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter. | 0..1 |
| ../../../../yrkeskod | YrkeskodType | Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare. | 0..1 |
| ../../../administrator | AdministratorResponse | Administratör. | 0..1 |
| ../../../../fornamn | FornamnType | Administratörens förnamn. | 0..1 |
| ../../../../efternamn | EfternamnType | Administratörens efternamn. | 0..1 |
| ../../../../anvandarId | AnvandareIdType | Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination. | 1..1 |
| ../../../../arbetsplats | ArbetsplatsType | Unik kod för identifiering av administratörens arbetsplats. | 1..1 |
| ../../../kommentar | KommentarType | Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4. | 0..1 |
| ../../../orsakskod | MakuleringOrsakskodType | Orsakskod som strukturerat beskriver orsak till makulering. | 1..1 |
| ../../../orsakskodKlartext | MakuleringOrsakskodKlartextType | Orsakskoder vid makulering: 1 = Fel patient. 2 = Fel läkemedel/vara/ styrka/ändamål. Patienten informerad. 3 = Utsatt lm/Inaktuell medicinering. Patienten informerad. Gäller ej dospatienter då utsättning skall användas. 4 = Annan orsak. Patienten informerad. | 1..1 |
| ../../../paUppdragAv | MakuleringPaUppdragAvType | Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare. | 1..1 |
| ../../../samtyckeMakulering | boolean | Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4. | 0..1 |
| ../../../tidpunkt | dateTime | Datum och tidpunkt då ny historikpost skapades. | 1..1 |
| ../../../typ | HistorikSkapandeTypType | Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original. | 1..1 |
| ../../nplPackId | NplPackIdType | NplPackId. | 0..1 |
| ../../ordinationsid | OrdinationsIdType | Ordinationens unika id. | 1..1 |
| ../../ordinationstidpunkt | dateTime | Datum och eventuell tid för ordinationens utfärdande. | 1..1 |
| ../../sistaGiltighetsdag | dateTime | Ordinationens sista giltighetsdag. | 1..1 |
| ../../status | OrdinationKortInfoStatusType | Ordinationens tillståndsstatus. | 1..1 |
| ../../varunummer | VaruNrType | Varunummer. | 0..1 |
| ../../extension | Extension3Type |   | 0..1 |
| ../../../sparradUppgiftKod | SparradUppgiftKodType | Kod för spärrad uppgift i receptet. | 0..1 |
| ../../../sparradUppgiftKlartext | SparradUppgiftKlartextType | Klartext för spärrad uppgift i receptet. | 0..1 |
| ../personnummer | PersonnummerType | Patientens personnummer. | 0..1 |
| ../underlagsversion | UnderlagsversionType | Version på Ordinationslista. Används för att verifiera att klientsystemet har rätt underlag vid uppdateringar. | 0..1 |

#### FHIR-artefakter

* [HamtaIckeAktuellaOrdinationerRequest](StructureDefinition-hamtaickeaktuellaordinationer-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [HamtaIckeAktuellaOrdinationer](StructureDefinition-hamtaickeaktuellaordinationer.md): logisk modell för svaret

#### Källfiler

| | |
| :--- | :--- |
| [HamtaIckeAktuellaOrdinationerInteraction_6.2_rivtabp21.wsdl](HamtaIckeAktuellaOrdinationerInteraction_6.2_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [HamtaIckeAktuellaOrdinationerResponder_6.2.xsd](HamtaIckeAktuellaOrdinationerResponder_6.2.xsd) | Tjänsteschema |

### Gemensamma källfiler

| | |
| :--- | :--- |
| [ArgosHeader_1.0.xsd](ArgosHeader_1.0.xsd) | SOAP-huvud |
| [doc.xsd](doc.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | SOAP-huvud |
| [se.apotekensservice_or_1.0.xsd](se.apotekensservice_or_1.0.xsd) | Domänschema |
| [se.apotekensservice_or_4.0.xsd](se.apotekensservice_or_4.0.xsd) | Domänschema |
| [se.apotekensservice_or_5.0.xsd](se.apotekensservice_or_5.0.xsd) | Domänschema |
| [se.apotekensservice_or_6.0.xsd](se.apotekensservice_or_6.0.xsd) | Domänschema |
| [se.apotekensservice_or_7.0.xsd](se.apotekensservice_or_7.0.xsd) | Domänschema |
| [se.apotekensservice_or_7_GodkannUttag_ext_1.1.xsd](se.apotekensservice_or_7_GodkannUttag_ext_1.1.xsd) | Domänschema |
| [se.apotekensservice_or_7_ext_1.2.xsd](se.apotekensservice_or_7_ext_1.2.xsd) | Domänschema |
| [AB_se_apotekenservice_or.docx](AB_se_apotekenservice_or.docx) | Arkitekturella beslut |

