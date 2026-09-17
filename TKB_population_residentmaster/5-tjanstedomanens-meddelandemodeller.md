# 5 Tjänstedomänens meddelandemodeller - population: residentmaster v1.2

* [**Table of Contents**](toc.md)
* **5 Tjänstedomänens meddelandemodeller**

## 5 Tjänstedomänens meddelandemodeller

# 5 Tjänstedomänens meddelandemodeller

**Not: motsvarar källdokumentets kapitel "Datamodell". Detta är domänens centrala gemensamma datatyp och används av samtliga (för närvarande: det enda) kontrakt i domänen. Fältbeskrivningarna nedan är rekonstruerade från den antiword-extraherade källtexten och verifierade mot det faktiska XML-schemat (`population_residentmaster_1.2.xsd` m.fl., se källfiler i avsnitt 7) för exakta fältnamn, kardinalitet och tillåtna kodvärden.**

## 5.1 ResidentType — bruttolista över nationella personuppgifter

Det är inte möjligt att en gång för alla fastställa ett exakt och slutgiltigt utseende på `ResidentType`. Modellen är en bruttolista med alla fält som potentiellt kan ingå i nationella personuppgifter; en konkret tjänsteproducent tillhandahåller bara den delmängd (profil) som är relevant (se avsnitt 6, "Aktuella profiler"). Fält som inte ingår i den aktuella profilen utelämnas i SOAP-meddelandet (motsvarar `null` i genererad kod).

| | | | |
| :--- | :--- | :--- | :--- |
| Sekretessmarkering | Kod som anger om personen har sekretessmarkering | `J`= Har sekretessmarkering,`N`= Har inte sekretessmarkering | 1..1 |
| SenasteAndringFolkbokforing | Datum när personen uppdaterades senast i folkbokföringen | ÅÅÅÅMMDD | 0..1 |
| **Personpost** |   |   | 1..1 |
| PersonId | Personnummer eller tilldelat personnummer/samordningsnummer. Kan även vara reservnummer i det fall tjänstekonsumenten är en regional/lokal instans (format specifikt för aktuellt reservnummerkodverk) | För person- och samordningsnummer: ÅÅÅÅMMDDNNNN | 1..1 |
| Kon | Anger personens kön | `K`= Kvinna,`M`= Man | 0..1 |
| Fodelsetid | Datum som anger personens födelsetid. Kan saknas för personer utan fastställd födelsetid | ÅÅÅÅMMDD | 0..1 |
| **Namn** |   |   | 0..1 |
| Aviseringsnamn | Mellannamn, efternamn och förnamn i den ordningen, max 36 tecken (från folkbokföringen om namnen tillsammans överskrider 36 tecken) | Max 36 tecken | 0..1 |
| Fornamn | Förnamn, alla förnamn med mellanslag emellan | Max 80 tecken | 0..1 |
| Tilltalsnamnsmarkering | Kod som anger vilket av förnamnen som är tilltalsnamn (positionskod, 10–99). Saknas om inget tilltalsnamn är markerat i folkbokföringen | Heltal 10–99 | 0..1 |
| Mellannamn | Bärs mellan förnamn och efternamn, t.ex. namn som ogift | Max 40 tecken | 0..1 |
| Efternamn | Efternamn | Max 60 tecken | 0..1 |
| **Avregistrering** |   |   | 0..1 |
| AvregistreringsorsakKod | Kod som anger om personen är avregistrerad från folkbokföringen och av vilket skäl. Tomt (eller saknas) om personen ej är avregistrerad.**Utgår i version 2 av `ResidentType` — ersätts av `AvregistreringsorsakKodKomplett`.** | `AV`= Avliden,`GN`= Gammalt nummer,`OO`= Övrig orsak | 0..1 |
| Avregistreringsdatum | Tomt (eller saknas) om personen ej är avregistrerad | ÅÅÅÅMMDD (ofullständigt datum tillåtet, 4–8 tecken) | 0..1 |
| AvregistreringsorsakKodKomplett | Kod med komplett kodverk som anger om personen är avregistrerad från folkbokföringen och av vilket skäl. Tomt (eller saknas) om personen ej är avregistrerad. I version 2 utgår`AvregistreringsorsakKod`och detta fält byter namn till`AvregistreringsorsakKod` | `AV`= Avliden,`UV`= Utvandrad,`GN`= Gammalt personnummer,`AN`= Annan anledning,`GS`= Gammalt samordningsnummer,`OB`= Obefintlig,`TA`/`AS`= Tekniskt avregistrerad | 0..1 |
| **Folkbokföringsadress** | (svensk adress) |   | 0..1 |
| LanKod | Länskod | 2 tecken | 0..1 |
| KommunKod | Kommunkod | 2 tecken | 0..1 |
| ForsamlingKod | Församlingskod | 2 tecken | 0..1 |
| Fastighetsbeteckning | Fastighetsbeteckning | Max 40 tecken | 0..1 |
| CareOf | Namn (c/o) | Max 35 tecken | 0..1 |
| Utdelningsadress1 | Fysisk adress, gata eller motsvarande | Max 35 tecken | 0..1 |
| Utdelningsadress2 | Fysisk adress, gata eller motsvarande | Max 35 tecken | 0..1 |
| Postnr | Postnummer | 5 tecken, inga mellanslag | 0..1 |
| Postort | Postort | Max 27 tecken | 0..1 |
| Folkbokforingsdatum | Folkbokföringsdatum | ÅÅÅÅMMDD (ofullständigt datum tillåtet) | 0..1 |
| SCB_Nyckelkod | SCB Nyckelkod (ej från Navet-avisering), se[SCB-referens](https://www.scb.se/) | 6 tecken | 0..1 |
| **SärskildPostadress** | Samma struktur som Folkbokföringsadress |   | 0..1 |
| HanvisningsPersonNr | Hänvisningspersonnummer. Personnummer eller tilldelat personnummer/samordningsnummer | ÅÅÅÅMMDDNNNN | 0..1 |
| **Utlandsadress** |   |   | 0..1 |
| Utdelningsadress1 | Utdelningsadress, rad 1 | Max 35 tecken | 0..1 |
| Utdelningsadress2 | Utdelningsadress, rad 2 | Max 35 tecken | 0..1 |
| Utdelningsadress3 | Utdelningsadress, rad 3 | Max 35 tecken | 0..1 |
| Land | Land | Max 35 tecken | 0..1 |
| Utlandsadressdatum | Datum för utlandsadress | ÅÅÅÅMMDD (ofullständigt datum tillåtet) | 0..1 |
| Rostrattsdatum | Datum för rösträtt | ÅÅÅÅMMDD (ofullständigt datum tillåtet) | 0..1 |
| **Civilstånd** |   |   | 0..1 |
| CivilstandKod | Civilståndskod | `OG`= Ogift,`G`= Gift,`A`= Änka/änkling,`S`= Skild,`RP`= Registrerad partner,`SP`= Skild partner,`EP`= Efterlevande partner | 0..1 |
| Civilstandsdatum | Civilståndsdatum | ÅÅÅÅMMDD (ofullständigt datum tillåtet) | 0..1 |
| **Fodelse** |   |   | 0..1 |
| **HemortSverige** | Uppgifter om hemort i Sverige |   | 0..1 |
| FodelselanKod | Kod för födelselän | 2 tecken | 0..1 |
| Fodelseforsamling | Kod för födelseförsamling | 2 tecken | 0..1 |
| **OrtUtlandet** | Uppgifter om födelse i utlandet |   | 0..1 |
| FodelseortUtland | Födelseort vid utlandsfödsel | Max 80 tecken | 0..1 |
| Styrkt | Anger om födelsen är styrkt | `J`/`N` | 0..1 |
| Fodelseland | Födelseland | Max 40 tecken | 0..1 |
| **Invandring** |   |   | 0..1 |
| Invandringsdatum | Invandringsdatum | ÅÅÅÅMMDD (ofullständigt datum tillåtet) | 0..1 |
| **Relationer** |   |   | 1..1 |
| Relation | En relation till annan person (t.ex. barn, förälder, vårdnadshavare, make/maka, partner) |   | 0..* |
| RelationId | Identitet för den relaterade personen — antingen personnummer eller födelsetid+nollor (se villkor nedan) |   | 1..1 |
| …/PersonNr | Personnummer eller tilldelat personnummer/samordningsnummer för den relaterade personen | ÅÅÅÅMMDDNNNN | 0..1 |
| …/FodelsetidNr | Används när relationen aldrig folkbokförts eller saknar korrekt personnummer. Kan ha nollor i hela eller delar av födelsetiden | Födelsetid + nollor, ÅÅÅÅMMDD0000 | 0..1 |
| Relationstyp | Typ av relation | `B`= Barn,`MO`= Moder,`FA`= Fader,`F`= Förälder,`V`= Vårdnadshavare,`VF`= Vårdnadshavare för,`M`= Make/maka,`P`= Partner | 1..1 |
| RelationFromdatum | Relation från-och-med-datum | ÅÅÅÅMMDD (ofullständigt datum tillåtet) | 0..1 |
| RelationTomdatum | Relation till-och-med-datum | ÅÅÅÅMMDD (ofullständigt datum tillåtet) | 0..1 |
| Namn | Namnuppgifter för den relaterade personen. Samma poststruktur som Namn ovan |   | 0..1 |
| Avregistrering | Avregistreringsuppgifter för den relaterade personen. Samma poststruktur som Avregistrering ovan |   | 0..1 |
| Status | Relationsstatus. Aviseras endast vid regelbunden ändringspost | `NY`= Nyregistrerad,`PB`= Nyregistrerad pga personnummerbyte,`RD`= Rättad,`AS`= Avslutad,`AV`= Avslutad pga avliden,`IV`= Avslutad pga invandring,`AN`= Annullerad | 0..1 |
| Distriktskod | Distriktskod enligt Skatteverket | Heltal 0–999999 | 0..1 |

**Villkor:** för varje `Relation` måste exakt ett av `PersonNr` och `FodelsetidNr` anges (enligt kommentar i källschemat: "ett av värdena måste vara satta, men inte båda") — se invarianten `lookupresidentforfullprofile-relation-id-xor` i den logiska modellen.

## 5.2 LookUpSpecificationType — uppslagsbegränsning

Ett specifikt `LookupResidentFor`-kontrakt kan (men behöver inte) ha ett argument som begränsar antalet svar. Syftet med denna uppslagsbegränsning är att förbättra prestanda på producent- och konsumentsidan.

Uppslagsbegränsning handlar om att filtrera bort resultat från en av konsumenten på förhand känd mängd, till skillnad från en sökmall (query-by-example) som söker efter av konsumenten okända förekomster. Exempel på användningsområde: få reda på vilka av tjänstekonsumentens (t.ex. journalsystemets) alla patienter som har avlidit, har sekretessmarkering eller har ändrats efter ett visst datum.

| | | | |
| :--- | :--- | :--- | :--- |
| Avregistreringsorsak | Begränsar de poster som ingår i svaret. Ett eller flera värden ur`AvregistreringsorsakKodKomplett`begränsar svarsposterna till personer med någon av angivna avregistreringsorsaker (`AV`,`UV`,`GN`,`AN`,`AS`,`GS`,`OB`,`TA`). Värdet`" "`(två blanktecken) begränsar svaret till personer utan avregistreringsorsak. Värdet`"OO"`begränsar svaret till personer med avregistreringskod som avviker från`AV`och`GN`(för bakåtkompatibilitet med 1.0). Utelämnat fält innebär ingen begränsning | 2 tecken | 0..* |
| Sekretessmarkering | Begränsar de poster som ingår i svaret:`J`= returnera endast poster med sekretessmarkering`J`,`N`= returnera endast poster med sekretessmarkering`N`eller utan angiven sekretessmarkering. Poster med sekretessmarkering innehåller normalt inte annan information än personnummer och fältet Sekretessmarkering | 1 tecken | 0..1 |
| SenasteAndringFolkbokforing | Begränsar de poster som ingår i svaret så att endast poster med senare datum i fältet`SenasteAndringFolkbokforing`än angivet datum returneras. Vid jämförelse används strikt olikhet (poster med samma datum returneras inte) | ÅÅÅÅMMDD | 0..1 |
| historiskTidpunkt | Anger historisk tidpunkt i syfte att svaret ska spegla personuppgifternas värden vid denna tidpunkt. Kan inte kombineras med`SenasteAndringFolkbokforing` | ÅÅÅÅMMDDttmmss | 0..1 |

Om flera fält anges kombineras dessa med logiskt OCH (AND).

**Not (verifierat mot XSD `LookupResidentForFullProfileResponder_1.2.xsd`): fältet `lookUpSpecification` på anropets toppnivå är enligt schemat obligatoriskt (1..1), trots att denna tabell beskriver samtliga dess underfält som valfria (uppslagsbegränsningen kan alltså skickas "tom" men elementet självt måste finnas med). Se ASSUME-PRM-001.**

