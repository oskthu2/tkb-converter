## Tjänstedomänens arkitektur
Denna domän hanterar information om status för en remiss avseende en patient. Tjänsten för remisstatus erbjuder sökning av remisstatus-information rörande patientens remisser utgående från hälso- och sjukvårdsgivarnas remissprocesser. Utgångspunkten är patientens och professionens behov av direktåtkomst till status rörande remisser som är under hantering.
Domänen ställer inga krav på att verksamheten är ansluten till tjänsten Elektronisk remiss.
Utgångspunkten är i första hand patientens och professionens behov av direktåtkomst till en patients hälso- och sjukvårdshistorik sett ur ett nationellt eller ett regionalt perspektiv.
I båda fallen är syftet att historisk information sammanställs från de källsystem där det finns historik, snarare än att begära information från ett specifikt system eller en specifik verksamhet.
Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår främst när tjänstekonsumenten också är prenumerant på notifieringar från engagemangsindex och på det sättet (via ProcessNotification) får information om en händelse i ett specifikt system. Det är då ändamålsenligt att adressera det systemet, istället för den aggregerande tjänsten.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna. Figuren nedan visar användning inom patientens direktåtkomst.

### Flöden

#### Patientens direktåtkomst

##### Arbetsflöde

![Figur 1. Exempel: Adressering vid anrop till aggregerande tjänst från patienttjänst (till exempel från Journalen på nätet)](images/img_009.png)

#### Medarbetarens direktåtkomst

##### Arbetsflöde

![img_007.png](images/img_007.png)
*Figur 2. Exempel: Adressering vid anrop till aggregerande vårdgivartjänst (till exempel från NPÖ-tillämpningen).*

#### Sekvensdiagram

![img_004.png](images/img_004.png)
*Figur 3. Sekvensdiagram över sökning efter information om remisstatus. Diagrammet visar på två alternativa sekvenser där det första alternativet gäller när aggregerande tjänster adresseras och det andra alternativet gäller när källsystemet adresseras.*

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Patientens direktåtkomst | Medarbetarens direktåtkomst |
| :--- | :--- | :--- |
| GetRequestActivities | X | X |

### Adressering
Tjänstedomänen tillämpar källsystem-adressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster. Tjänstekonsumenten adresserar därför den aggregerande tjänsten med antingen nationellt HSA-id (Ineras HSA-id) eller HSA-id för aktuell huvudman om det är en regional/huvudmanna-specifik (t.ex. ”regional”) aggregerande tjänst som ska adresseras.
Det finns också fall då en tjänstekonsument adresserar ett källsystem. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA. Det sker vanligen genom att ett sådant anrop föregås av antingen ett anrop till en aggregerande tjänst (källsystemets HSAid finns då i svarsmeddelandet) eller genom att tjänstekonsumenten direkt interagerar med ett engagemangsindex (indexposterna innehåller källsystemets HSAid). Detta scenario beskrivs i avsnitt 2.4.3. Det kan också ske genom att tjänstekonsumenten är producent för Engagemangsindex notifieringskontrakt (ProcessNotification). Notifieringen innehåller information om en händelse rörande en patients information i ett specifikt källsystem. Genom att använda informationen om källsystemets HSA-id kan tjänstekonsumenten direkt adressera källsystemet i syfte att hämta information om den händelse som just notifierats för patienten. Följande figur illustrerar adressering av aggregerande tjänst genom ett exempel. Det är alltid källsystemets HSA-id som är logisk adress när en aggregerande tjänst anropar en anslutningspunkt (ap), även om det inte är just källsystemet som är anslutningspunkt eller ens tjänsteproducent (i fallet av ett mellanlager).

#### Adressering vid nationell användning

![img_002.png](images/img_002.png)
*Figur 4. Adressering vid anrop till nationell aggregerande tjänst (till exempel från Journalen på nätet eller NPÖ-tillämpningen).*

#### Adressering vid regional användning

![img_012.png](images/img_012.png)
*Figur 5. Adressering vid anrop till regional aggregerande tjänst (t.ex. från ett vårddokumentationssystem, Journalen på nätet eller en regional patientöversikt).*

#### Adressering direkt till ett källsystem
Tjänstekontrakten i denna domän möjliggör sökning av information relaterad till en patient.
När patienten eller medarbetaren inom vård och omsorg använder en e-tjänst för att följa ett remissflöde används en aggregerande tjänst. Men det kan också finnas behov av händelsedrivet agera när en status förändras. Det kan göras genom att prenumerera på händelser från engagemangsindex. Då blir e-tjänsten notifierad genom att vara tjänsteproducent för tjänstekontraktet ProcessNotification. Engagemangsindex genererar då händelser när det sker förändringar i ett källsystem. Eftersom e-tjänsten då vet vilket källsystem som har en ny status, kan e-tjänsten via virtuell tjänst i en tjänsteplattform, anropa källsystemet istället för att gå via en aggregerande tjänst. Man behöver därför avgränsa en sådan fråga till ett specifikt källsystem. Det görs helt enkelt genom att ange källsystemets HSA-id som sökparameter samt att ange källsystemets HSA-id som logisk adress.

![img_010.png](images/img_010.png)
*Figur 6. Flöde som förutsätter adressering med källsystemets HSAid.*
Eftersom anropet i detta fall sker direkt mot virtuell tjänst, sker adressering med källsystemets HSA-id direkt från tjänstekonsumenten. Detta beskrivs i figuren nedan.

![img_005.png](images/img_005.png)
*Figur 7. Adressering vid sökning efter information ur ett specifikt källsystem*

#### Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens journalhistorik | Logisk adress |
| :--- | :--- |
| För alla huvudmän | Ineras HSA-id |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Källsystemets HSA-id |

### Aggregering och engagemangsindex
Det behövs en aggregerande tjänst för varje tjänstekontrakt i denna domän.
Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.
Om ett källsystemets HSA-id anges som logisk adress, kommer frågemeddelandet att dirigera vidare direkt till källsystemet utan att passera en aggregerande tjänst.
Om logisk adress HSA-id för Inera eller en huvudman kommer anropet att dirigeras till aggregerande tjänsten som i sin tur – efter att ha konsulterat engagemangsindex, vidarebefordrar frågan till de källsystem som har information om patienten.

### Nationell användning
Vid nationell användning av tjänstekontrakten (d.v.s. tjänstekonsumenter som begär information från alla tjänsteproducenter i Sverige) sker aggregering av informationen genom aggregerande tjänster i den gemensamma tjänsteplattformen. Regioner och Landsting tillhandahåller då källsystemens (KS) information genom anslutningspunkter (AP) i enlighet med tjänstekontrakten. Det kan t.ex. ske enligt olika modeller:
A: Direktanslutning av källsystem: Källsystemet är anslutningspunkten till gemensamma tjänsteplattformen
B: Källsystem ansluts via regional tjänsteplattform: Regionens tjänstplattform är anslutningspunkt till gemensamma tjänsteplattformen
C: Mellanlager ansluts direkt eller via regional tjänsteplattform: Ett mellanlager avskärmar källsystemen från den last som uppstår vid från nationella medarbetar- och invånartjänster
Modellerna illustreras nedan (från höger till vänster):

![img_013.png](images/img_013.png)
*Figur 8: Olika modeller för anslutning av källsystem.*
Anslutningsmodellerna förutsätter att:
vårdsystemen uppdaterar nationellt engagemangsindex – direkt eller indirekt via regionalt index. Källsystemets HSA-id anges i engagemangsposten jämte övrig info enligt beskrivning i särskilt avsnitt under regelverk.
en ev. regional tjänsteplattform kan dirigera anrop till rätt tjänsteproducent baserat på källsystemets HSA-id (på samma sätt som nationellt).
tjänsteproducenten validerar att aktuell tjänstekonsument (HSA-id i http-header) är godkänd av verksamheten (informationsägande vårdenhet).

### Regional användning
Regional användning innebär att tjänstekonsumenten är regional (R-K) och begär information från alla producenter i regionen, avseende ett visst tjänstekontrakt inom tjänstedomänen. Det innebär att regionen behöver utföra regional aggregering i den regionala tjänsteplattformen. Anslutningen av regional tjänsteplattform till nationell påverkas inte av att regionen inför en regional aggregerande tjänst:

![img_011.png](images/img_011.png)
*Figur 9: Anslutning av källsystem via regional tjänsteplattform.*

