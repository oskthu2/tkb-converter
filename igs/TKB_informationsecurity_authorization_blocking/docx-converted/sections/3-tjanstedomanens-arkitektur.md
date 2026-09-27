## Tjänstedomänens arkitektur
Den nationella arkitekturen för spärrhantering är utformad för att tillgodose behoven av att hantera spärr inom hälso- och sjukvården som följer av patientens rätt att spärra åtkomst till sin journalinformation.
Patienten kan begära spärr för att hindra att andra vårdgivare (yttre spärr) eller andra vårdenheter inom samma vårdgivare (inre spärr) ska kunna få elektronisk åtkomst till patientens personuppgifter. Se PDL [R2] 4 kap. och 6 kap.
Vårdgivare har behov av att kunna registrera spärrar på patientens begäran och kontrollera spärrar för lokala/regionala vårdsystem som:
delar information med andra vårdenheter/vårdgivare (observera att spärrhantering krävs även om vårdsystemet enbart hanterar vårdgivarens inre sekretessområde)
Nationella e-hälsotjänster för att dela information mellan vårdenheter och/eller vårdgivare har behov av att kunna kontrollera spärrar innan de ger sina användare åtkomst till informationen.
Arkitekturen ska medge att vårdgivare, landsting/kommuner och regioner på ett flexibelt sätt kan hantera sina "egna" spärrar och inte vara beroende av en enda nationell tjänst, både vad gäller tillgänglighet och vad gäller anpassning till sina lokala förutsättningar i form av befintliga vårdsystem, portaler och motsvarande.
Spärrar hanteras därför på två nivåer:
på lokal nivå för en eller flera vårdgivare hanteras (registreras, hävs etc) spärrar i en s k lokal spärrtjänst.
på nationell nivå samlas kopior med grundläggande data om alla spärrar i nationell spärrtjänst genom replikering från de lokala tjänsterna.
Spärrinformation både på lokalt och nationellt plan utbyts genom tydliga tjänstekontrakt. Bilden nedan illustrerar hur olika vårdsystem integrerar sig med de olika spärrtjänsterna samt hur spärrtjänsterna samverkar med varandra.

### Flöden

#### Flöde 1: Hämta (replikera) spärrar

![img_001.png](images/img_001.png)
Arkitekturen och tjänstekontrakten medger att lokala/regionala vårdsystem kan ansluta till en lokal spärrtjänst. Denna lokala spärrtjänst är master för de spärrar som vårdgivaren registrerar för patientens räkning. Det innebär att man blir "självförsörjande" på det lokala planet genom den lokala spärrtjänsten för behoven att hantera och kontrollera spärr.
Den nationella spärrtjänsten har till uppgift att tillhandahålla ett spärrunderlag med spärrar som gäller mot andra vårdgivare eller vårdenheter. De som har behov av detta spärrunderlag är de e-hälsotjänster som opererar på det nationella planet, t.ex. Nationell Patientöversikt där information samlas från många olika vårdgivare över landstings- och regiongränser. Dessa tjänster måste göra kontroll mot patientens samlade spärrar oavsett var dessa har registrerats.
Av ovan följer att en implementation av Lokal Spärrtjänst även måste ansluta mot det nationella spärrtjänsten, så att bilden av patientens spärrar blir komplett i nationell nod. Undantag från detta skulle vara om vårdgivaren helt står utanför att leverera patientuppgifter till nationella e-tjänster.
Den nationella tjänsten utgörs logiskt sett av en enda, central instans, medan de lokala tjänsterna naturligt kan finnas i flera instanser, hos olika huvudmän. Notera dock att inget hindrar att lokal spärrtjänst driftas som en "tjänst på nätet" och att flera vårdgivare/huvudmän kan dela på gemensamma installationer ("spärrhotell"), så länge deras hantering av spärrar hålls skild åt i tjänsten.
Lokala spärrtjänster hanterar ett utökat format för spärrar där metadata såsom aktörsinformation, registreringsdatum, m.m. lagras. Den nationella spärrtjänsten lagrar endast den grundläggande spärrinformation som behövs för att kunna utföra spärrkontroll, alltså en delmängd av den utökade spärrinformationen.

##### Arbetsflöde

![img_015.jpg](images/img_015.jpg)

###### Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Tjänstekonsument | System som begär hämtning av spärrar. Kan antingen vara ett lokalt journalsystem eller en lokal spärrtjänst. Spärrarna ska sedan kunna användas som beslutsunderlag för att avgöra om en informationsmängd är spärrad eller ej. |
| Tjänsteproducent | System som tillhandahåller information om spärrar. Kan antingen vara en lokal spärrtjänst eller den Nationella instansen för spärrar. |

##### Sekvensdiagram
Sekvensdiagram för att hämta lagrade spärrar.

![img_012.jpg](images/img_012.jpg)

#### Flöde 2: Hämta spärrunderlag
Detta flöde beskriver behovet av att hämta spärrunderlag utifrån en patientidentitet. Behovet kan t.ex vara att en konsument har behovet av att använda denna information såsom beslutsunderlag för vilken information som får visas för en aktör eller ej, beroende på om informationen har en spärr kopplad eller ej.

##### Arbetsflöde

![img_007.jpg](images/img_007.jpg)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Tjänstekonsument | System som begär hämtning av spärrar baserat på en patientidentitet. Kan t.ex  vara ett lokalt journalsystem. Spärrarna ska användas som beslutsunderlag för att avgöra om en informationsmängd är spärrad eller ej. |
| Tjänsteproducent | System som tillhandahåller information om spärrar. Kan antingen vara en lokal spärrtjänst eller den Nationella instansen för spärrar. |

##### Sekvensdiagram

![img_006.jpg](images/img_006.jpg)

#### Flöde 3: Kontrollera om information är spärrad
Beskriver behovet av att få kontrollera om given information är spärrad eller inte. Dvs få underlag vilken information som ej får visas för en given aktör inom en vårdenhet.

##### Arbetsflöde

![img_002.jpg](images/img_002.jpg)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Aktör | En användare i ett patientsystem som vill se journalinformation som kan finnas utanför sin vårdenhet |
| Tjänstekonsument | System som samverkar i sammanhållen journalföring och har behov av att stödja Patientdatalagen genom att ej visa information som är spärrad, inre eller yttre spärr. |
| Tjänsteproducent | System som tillhandahåller information om spärrar. Kan antingen vara en lokal spärrtjänst eller den Nationella instansen för spärrar |

##### Sekvensdiagram

![img_014.jpg](images/img_014.jpg)

#### Flöde 4: Behov av att hämta lista på patienter med spärrar, baserat på vårdgivare
Tjänst som returnerar alla patienter med minst en aktivt spärr för en viss organisation. Endast en distinkt lista med unika patienter returneras. Observera att konsumerande system anger vilken vårdgivare som ska omfattas av sökningen.

##### Arbetsflöde

![img_008.jpg](images/img_008.jpg)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Aktör | En användare i ett system som vill se information om vilka patienter det finns inom aktuell vårdgivare som har spärrar. |
| Tjänstekonsument | System som aktören använder för ändamålet |
| Tjänsteproducent | System som tillhandahåller information om spärrar. Kan antingen vara en lokal spärrtjänst eller den Nationella instansen för spärrar |

##### Sekvensdiagram

#### Flöde 5: Aktör skapar spärrinformation
Tjänst som registrerar en ny spärr för en viss patient och inom en viss vårdgivare i den lokala spärrtjänsten.
En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen.

##### Arbetsflöde

![img_013.png](images/img_013.png)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Aktör | En användare i ett system som vill skapa en spärr |
| Tjänstekonsument | System som aktören använder för ändamålet |
| Tjänsteproducent | System som tillhandahåller information om spärrar. Är normalt en lokal spärrtjänst. |

##### Sekvensdiagram
Användaren (spärradministratören) utgår från ett system med vilket användaren kan administrera spärrar. Det kan antingen vara ett vårdsystem som har implementerat kontrakten, eller t.ex den WEB-tjänst som finns med i Säkerhetstjänsternas leverans av Spärrtjänst (Lokal/Nationell).

#### Flöde 6: Aktör uppdaterar spärrinformation
Gemensam flödesbeskrivning för användningsfallen ”administration av spärr”, förändra en befintlig spärr. Ändringarna kan vara hävning (temporär/permanent), återställning av tidigare hävning samt makulering av spärr. Följande tjänstekontrakt stödjer administrationen av spärrar:

| Användningsfall | Tjänstekontrakt |
| :--- | :--- |
| Läs spärrar för patient | GetExtendedBlocksForPatient |
| Häv spärr permanent, med utökad information | RevokeExtendedBlock |
| Häv spärr tillfälligt, med utökad information | RegisterTemporaryExtendedRevoke |
| Återkalla tillfällig hävning, med utökad information | CancelTemporaryExtendedRevoke |
| Makulera spärr, med utökad information | DeleteExtendedBlock |

##### Arbetsflöde

![img_003.png](images/img_003.png)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Aktör | En användare i ett system som vill administrera en befintlig spärr (uppdatera/ändra/häva/ta bort en spärr) |
| Tjänstekonsument | System som aktören använder för ändamålet |
| Tjänsteproducent | System som tillhandahåller information om spärrar. |

##### Sekvensdiagram
Sekvensdiagrammet är förenklat. Varje sekvens som inleds med texten: ”AdministreraSpärr” ersätt med namnet på motsvarande tjänstekontrakt enligt tabellen nedan.
Så varje användningsfall har anrop mot sitt specifika tjänstekontrakt. Varje administrativa åtgärd ska föregås av en läsning.
Användaren (spärradministratören) utgår från ett system med vilket användaren kan administrera spärrar. Det kan antingen vara ett vårdsystem som har implementerat kontrakten, eller t.ex den WEB-tjänst som finns med i Säkerhetstjänsternas leverans av Spärrtjänst (Lokal/Nationell).

| Användningsfall | Tjänstekontrakt |
| :--- | :--- |
| Läs spärrar för patient | GetExtendedBlocks |
| Häv spärr permanent, med utökad information | RevokeExtendedBlock |
| Häv spärr tillfälligt, med utökad information | RegisterTemporaryExtendedRevoke |
| Återkalla tillfällig hävning, med utökad information | CancelTemporaryExtendedRevoke |
| Makulera spärr, med utökad information | DeleteExtendedBlock |

#### Flöde 7: Replikera upp lokala spärrar (och förändringar) till den nationella instansen
Flöde för att replikera upp förändringar utförda på lokal nivå till den nationella instansen av Spärrtjänsten.
Förändringarna sker normalt i ”bakgrunden” när en förändring sker på den lokala tjänsten.

| Användningsfall | Tjänstekontrakt |
| :--- | :--- |
| Registrera spärr nationellt | RegisterBlock |
| Avregistrera spärr nationellt | UnregisterBlock |
| Registrera tillfällig hävning | RegisterTemporaryRevoke |
| Avregistrera tillfällig hävning | UnregisterTemporaryRevoke |

##### Arbetsflöde

![img_009.png](images/img_009.png)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Tjänstekonsument | System som genomför replikeringen, normalt en lokal spärrtjänst |
| Tjänsteproducent | System som tar emot replikeringen (nationell spärrtjänst) |

##### Sekvensdiagram
Skapande och förändringar av spärr ska replikeras upp till den nationella instansen av spärrtjänsten.
Den lokala spärrtjänsten kan även vara ett journalsystem som har implementerat spärrkontrakten.
Replikeringen ska normalt automatiskt initieras utifrån en förändring som skett på en lokal spärrtjänst.
T.ex om en spärr skapas lokalt m.h.a RegisterExtendedBlock så ska den lokala tjänsten synkront utföra ett anrop till den nationella spärrtjänsten med hjälp av kontraktet RegisterBlock (se exempel sekvensdiagram nedan).
Ett anrop lokalt till tjänsten RegisterTemporaryExtendedRevoke ska initiera ett anrop till den nationella spärrtjänsten med hjälp av kontraktet RegisterTemporaryRevoke osv.
Sekvensdiagram replikering ”Skapa spärr”

#### Obligatoriska kontrakt

| Tjänstekontrakt | Flöde 1 | Flöde 2 | Flöde 3 | Flöde 4 | Flöde 5 | Flöde 6 | Flöde 7 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| GetBlocks | X | X |  |  |  | X |  |
| GetPatientIds |  |  |  | X |  |  |  |
| CheckBlocks |  |  | X |  |  |  |  |
| GetExtendedBlocksForPatient |  |  |  |  |  |  |  |
| RegisterExtendedBlock |  |  |  |  | X |  |  |
| RevokeExtendedBlock |  |  |  |  |  |  |  |
| RegisterTemporaryExtendedRevoke |  |  |  |  |  |  |  |
| CancelTemporaryExtendedRevoke |  |  |  |  |  |  |  |
| DeleteExtendedBlock |  |  |  |  |  |  |  |
| RegisterBlock |  |  |  |  |  |  | X |
| UnregisterBlock |  |  |  |  |  |  | X |
| RegisterTemporaryRevoke |  |  |  |  |  |  | X |
| UnregisterTemporaryRevoke |  |  |  |  |  |  | X |

### Adressering

#### Logisk adressering
Alla tjänster i tjänstegränssnitten följer RIV-TA-profilens standard för logisk adressering. Med logisk adressering ges möjligheten att kunna ange en logisk adress/mottagare i det fall en tjänsteväxel (tjänsteplattform) används. Detta möjliggör att en för avsändaren transparent tjänsteväxel kan förmedla anrop vidare till en viss instans av spärrtjänsten och även behörighetsstyra anropet. Logisk adressat skall anges även om spärrtjänsten för stunden inte går via en tjänsteväxel.
Alla tjänster har ett obligatoriskt meddelandefält där mottagande vårdgivares HSA-id skall anges som logisk adressat. För de generella/nationella tjänsterna som inte har en specifik organisationstillhörighet skall Ineras nationella HSA-id SE165565594230-1000. De generella tjänsterna representerar en nationell nivå och hanterar alla nationellt kända informationsposter. Se tabellen nedan hur adressat skall anges.

| Operation | Logisk adressat |
| :--- | :--- |
| GetBlocks | Om anropet sker på nationell nivå används SE165565594230-1000, i annat fall anges HSA-id för den organisation vars tjänst adresseras (t ex HSA-id för Region Skåne) Undantagsvis kan s.k. källsystembaserad adressering användas, (t ex. HSA-id för Region Skånes lokala spärrtjänst). |
| CheckBlocks | Om anropet sker på nationell nivå används SE165565594230-1000, i annat fall anges HSA-id för den organisation vars tjänst adresseras (t ex HSA-id för Region Skåne) Undantagsvis kan s.k. källsystembaserad adressering användas, (t ex. HSA-id för Region Skånes lokala spärrtjänst). |
| GetPatientIds | HSA-id för aktörens vårdgivare |
| GetExtendedBlocksForPatient | HSA-id för aktörens vårdgivare |
| RegisterBlock | SE165565594230-1000 |
| UnregisterBlock | SE165565594230-1000 |
| RegisterTemporaryRevoke | SE165565594230-1000 |
| UnregisterTemporaryRevoke | SE165565594230-1000 |
| RegisterExtendedBlock | HSA-id för vårdgivaren som spärren gäller för |
| RevokeExtendedBlock | HSA-id för vårdgivaren som spärren gäller för |
| RegisterTemporaryExtendedRevoke | HSA-id för vårdgivaren som spärren gäller för |
| CancelTemporaryExtendedRevoke | HSA-id för vårdgivaren som spärren gäller för |
| DeleteExtendedBlock | HSA-id för vårdgivaren som spärren gäller för |

#### Exempel på logisk adressering för operationen CheckBlocks och GetBlocks
Nedan visas ett exempel på hur logisk adressering kan användas för operationen CheckBlocks och GetBlocks.
Det lokala systemet B kan för tjänsten GetBlocks använda den logiska addressen ”X”, som motsvarar källsystemsadresseringen av den regionala spärrtjänsten, eller den logiska adressen för Inera (SE165565594230-1000), vilket innebär routing till den nationella spärrtjänsten via NTjP.
System B kan genom val av adressering välja att antingen anropa CheckBlocks med Ineras adress och för de fall då man samverkar med sammanhållen journalföring, eller med adressen för VG A för kontroll av spärrar inom VG.

![img_005.png](images/img_005.png)

### Aggregering och engagemangsindex
Ej tillämpbart för denna tjänstedomän.

