# 2 Versionsinformation

Denna revision av tjänstekontraktsbeskrivningen handlar om domänen itintegration: engagementindex. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

## Version 1.0.9

Förändring av reglerna för användning av tjänstekontrakten i olika instansieringar av engagemangsindex. De viktigaste ändringarna listas nedan.

### ProcessNotification

Förändringar kring regler för tjänstekontraktets användning i olika instanser:

* Nationellt engagemangsindex slutar skicka (agera tjänstekonsument) till ProcessNotification. Det gäller såväl till lokala engagemangsindex såsom verksamhetssystem.
* Nationellt engagemangsindex tar emot (agerar tjänsteproducent av) ProcessNotification där lokala engagemangsindex agerar avsändare. På detta sätt kan ett lokalt engagemangsindex uppdatera nationellt engagemangsindex.
* Regler för användning av ProcessNotification kopplat till ett lokalt engagemangsindex inom en region bestäms av regionen självt.
* Nuvarande användning inom Formulärtjänsten och Tidbokning/Kallelser får ett tidsbegränsat undantag från reglerna ovan, och kan tillsvidare fortsätta använda ProcessNotification som idag.

### Attributet MostRecentContent

Alla regler kring uppdatering av MostRecentContent tas bort ur tjänstekontraktsbeskrivning för engagemangsindex. OM en specifik tjänstedomän har ett behov av sådana regler får dessa anges i denna domäns tjänstekontraktsbeskrivning.

Detta leder till att för de domäner som inte definierar användning av MostRecentContent så behöver ett källsystem endast hantera poster i engagemangsindex när den första informationsförekomsten, för en patient, uppstår och när den sista försvinner.

### Attributet DataController

För att underlätta för vårdgivare att ansluta till de tjänstekontrakt som använder engagemangsindex tilläts tidigare att de angav källsystemets HSA-id i attributet DataController. För att underlätta personuppgiftsbehandlingen är detta inte längre självklart tillåtet. Anslutande part ska antingen ange organisationsnummer eller HSA-id för personuppgiftsansvarig organisation eller en identitet som personuppgiftsansvarig organisation eller källsystemsansvarig organisation enkelt kan koppla till den personuppgiftsansvariga organisationen. Avvikelser från detta vid nyanslutning ska hanteras som en avvikelse, d.v.s. analyseras noggrant för att säkerställa att det är en acceptabel lösning i det specifika fallet.

### Målgruppsanpassning

Regelverk och engagemangsindex tjänstekontraktsbeskrivning skall struktureras på ett sådant sätt att det blir lättare för olika målgrupper att ta till sig informationen. Det inbegriper ett förtydligande av vad som är regler som enbart gäller nationellt engagemangsindex, samt vad en region själva kan besluta kring ett lokalt engagemangsindex.

Denna version beskriver inte hur aggregerande tjänster implementeras. För stöd kring detta hänvisas till RIV Tekniska Anvisningar - Tjänsteplattform [Ref 7] samt Teknisk dokumentation - Nationell Aggregeringsplattform (SKLTP) [Ref 6].

Reglerna är nu uppdelade på respektive målgrupp och har därmed fått ny numrering och det har också gjorts en översyn av reglerna rent generellt i de fall de varit otydliga eller motsägelsefulla. Reglerna har dessutom försetts med målgruppsprefix för att vara lättare att skilja ut — kR för konsument och pR för producent.

De identifierade målgrupperna är:

* **Utvecklare och förvaltare av Engagemangsindex** — Denna målgrupp behöver agera producent utifrån flera/alla tjänstekontrakt och kan i vissa fall, beroende på struktur, behöva agera både konsument och producent för ProcessNotification.
* **Tjänstekonsumenter av Update kontraktet** — Detta är den bredaste målgruppen eftersom den består av de källsystem som ska populera ett index.
* **Tjänstekonsumenter av FindContent kontraktet** — Den här gruppen är främst aggregerande tjänster i respektive tjänsteplattform men mot lokala index kan, beroende på lokala regler, även andra tillämpningar/parter vara aktuella.

## Förändrade tjänstekontrakt

| Status | Kontrakt |
|--------|----------|
| Oförändrade | Alla |
| Nya | Inga |
| Förändrade | Inga |
| Utgångna | Inga |

## Tidigare version

1.0.8
