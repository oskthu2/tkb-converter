# 3 Tjänstedomänens arkitektur

## Roll i arkitekturen

Engagemangsindex är en stödtjänst vars primära syfte är att stödja realisering av aggregerande tjänster genom att samla information om vilka källsystem som har information av en viss typ för en individ. Frågor mot indexet är personcentrerade.

### Tabell 1 — Beskrivning av tjänstekontrakt i domänen

Informationsmodellen finns beskriven i separat kapitel.

## Uppdatering och konsolidering

Engagemangsindex är (enligt T-boken [Ref4]) en stödtjänst som kan finnas i flera instanser. Det kan finnas en nationell instans samt flera andra instanser hos parter som tillämpar nationella referensarkitekturen.

Med hjälp av uppdateringskontraktet (Update) kan verksamhetssystem skapa indexposter i enlighet med regelverk för respektive tjänstedomän. Uppdatering kan ske antingen direkt i det nationella indexet eller i en lokal instans.

För att nationellt engagemangsindex ska kunna erbjuda sina tjänstekonsumenter en konsoliderad vy av invånarens engagemang, inklusive de som registrerats i en lokal instans, kopplas de olika instanserna av index samman med hjälp av notifieringskontraktet (ProcessNotification).

Om det finns situationer där det finns flera engagemangsindex lokalt så kan även dessa agera utifrån en hierarki och i ett sådant fall så ska en lokal "toppnod" agera producent av ProcessNotification gentemot övriga lokala engagemangsindex och som konsument mot nationellt engagemangsindex.

## Flöden

Följande flöden illustrerar den tänkta användningen av ett engagemangsindex.

### Skapa, uppdatera och radera indexpost

Kontraktet Update används vid såväl skapande, uppdatering och radering av indexposter.

**Skapa indexpost**

**Uppdatera indexpost**

**Radera indexpost**

Vid makulering i källsystem som har en indexpost för den aktuella personen så behöver det övervägas om det fortfarande finns någon information (av den aktuella typen) kvar i källsystemet.

Om det inte gör det ska indexposten raderas annars behövs som princip ingen åtgärd om inte den aktuella tjänstedomänens regler ställer krav på uppdatering.

För att radera indexposten anropas Update med samma uppgifter för instansens unikhet som befintlig post och deleteFlag sätts till true.

### Poster konsolideras till nationellt engagemangsindex

När lokala index som ingår i nationell samverkan uppdateras så ska uppdateringarna konsolideras till nationell instans, detta görs med kontraktet ProcessNotification.

**Poster skapas eller uppdateras**

När ett verksamhetsystem lägger till eller uppdaterar en post i ett lokalt index så skapas indexposten lokalt och en notifiering med den skapade postens innehåll skickas till nationell instans.

**Poster raderas**

När ett verksamhetssystem tar bort en post i ett lokalt index så skickas en notifiering med postens innehåll (med attributet deleteFlag=true) till nationell instans som raderar sin kopia.

### Konsolidera information via engagemangsindex

Ett index som ingår i nationell samverkan behöver stödja notifiering av indexuppdateringar för att kunna uppdatera centrala/nationella instanser. I engagemangsindexinstanser som bygger på SKLTP [R5] registreras prenumeranter genom att konfigureras som tjänsteproducenter till ProcessNotification.

**Notifiera om uppdatering**

När ett index uppdateras, notifierar det sina prenumeranter så att dessa kan skapa eller uppdatera motsvarande poster i sin instans.

**Notifiera indexhändelse om radering**

När ett index mottar en uppdatering som begär att en indexpost raderas så notifieras övriga index om detta innan posten raderas.

### Använda indexinformation

Exempel: Aggregering av patientbunden information från flera källsystem eller verksamheter.

Vid användningsmönster aggregering används engagemangsindex som en stödtjänst för realisering av aggregerande tjänster. Aggregerande tjänster är konsumenter av FindContent. Alla interaktioner med Engagemangsindex sker inom en tjänsteplattform. Exemplet beskriver varken aspekter kring adressering eller alla ingående komponenter som t.ex. tjänsteplattformar. För information om detta hänvisas till T-boken [Ref4].

En aggregerad tjänst anropas av en applikation och använder sedan engagemangsindex för att lokalisera information i verksamhetssystem och därefter hämta och aggregera informationen och returnera den till den anropande applikationen. Aggregerande tjänst anropar alla de verksamhetssystem som har eftersökt information parallellt.
