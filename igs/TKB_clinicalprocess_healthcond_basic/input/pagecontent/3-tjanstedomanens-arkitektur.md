## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.
Tjänsterna för beskrivning av observerade tillstånd erbjuder sökning av information i vård- och omsorgsgivarnas system för patientadministration och vård- och omsorgsdokumentation. Utgångspunkten för tjänsterna i denna tjänstedomän är att historisk information sammanställs från det eller de källsystem där det finns historik via s.k. aggregerande tjänster, snarare än att begära information från ett specifikt system eller en specifik verksamhet. Som en följd av detta kravställer tjänstedomänen uppdatering av engagemangsindex.
Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår främst när tjänstekonsumenten också är prenumerant på notifieringar från engagemangsindex och på det sättet (via ProcessNotification) får information om en händelse i ett specifikt system. Det är då ändamålsenligt att adressera det specifika systemet, istället för den aggregerande tjänsten, i syfte att söka fram information om just den händelse som orsakade notifieringen.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna.

### Flöden
Nedanstående diagram visar hur flödet principiellt ser ut när information ur kontrakt i tjänstedomänen efterfrågas och hanteras.

#### Hämta observationer
Nedanstående diagram visar hur flödet ser ut när information om observationer hämtas.

##### Arbetsflöde

![img_001.png](images/img_001.png)
*Figur 1 Exempel: Adressering vid anrop till aggregerande tjänst från patienttjänst (exempelvis från Journalen).*

![img_006.png](images/img_006.png)
*Figur 2 Exempel: Adressering vid anrop till aggregerande vårdgivartjänst (exempelvis från Nationell patientöversikt).*

##### Sekvensdiagram för enkel begäran
Siffrorna i diagrammet nedan kopplar ihop begäran-svar för respektive meddelande.

![img_004.png](images/img_004.png)
Figur 3 Sekvensdiagram över sökning efter information
Aggregerade tjänster beskrivs i [R6].

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument | Det system som används för att konsumera information. Dvs det system som använder tjänster enligt ett tjänstekontrakt. |
| Tjänsteplattform | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Aggregerande tjänst | En aggregerande tjänst är en integrationstjänst som för en tjänstekonsument sammanställer en nationell vy av informationen av den typ som är aktuell för tjänsten i fråga. Är beroende av engagemangsindex för att begränsa sökningen till relevanta informationsägare. |
| Engagemangsindex | En tjänst där det finns uppdaterade nationella index över vilka informationsägare som har information kring en viss invånare/patient. |
| Vårdinformationssystem 1 och 2 | Det system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

#### Beskrivning av samband
Kontrakt i tjänstedomänen har stöd för att peka ut samband mellan informationsmängder. Konceptet är till för att en tjänsteproducent skall kunna förmedla till en tjänstekonsument att det finns information att hämta som har ett samband till en tidigare läst informationsmängd. En aktivitet (blindtarmsoperation) kan exempelvis ha ett samband till en tidigare observation (blindtarmsinflammation). Sambandet är av en viss typ vilket i ovanstående exempel skulle kunna vara ”har orsak”.
Ett samband anges med hjälp av typen ReferredInformationType där fältet type beskriver vilken informationstyp som är refererad och följer tabellen för engagemangsindex-kategori, enligt fältet ”categorization”, exempelvis chb-o för att referera till en annan observation. För att endast söka i den källa som lagrar den relaterade informationsmängden används det HSA-id som återfinns i observations/observationBody/relation/referredInformation/informationOwner/id som värde i sökparametern careGiverId och som logisk adress. I denna version är endast samband inom ett källsystem tillåtet.

##### Exempel på samband
I detta exempel har en patient en tidigare satt diagnos (observation) K35.2 Akut appendicit med generaliserad peritonit. På grund av denna diagnos utförs en appendektomi (aktivitet). Vid ett senare tillfälle upptäcks att en MRSA-infektion har uppkommit i operationssåret (observation). Detta exempel tar inte hänsyn till nuvarande begränsning i kontraktet där referenser inte får korsa systemgränser.

![img_002.png](images/img_002.png)
*Figur  Exempel observationskomplikation*
För detaljerade beskrivningar av klasser och attribut ovan se Nationell Informationsstruktur [R5].
Ifall dessa data lagras i olika system, så är förutsättningen, för anrops-flödet i nästa avsnitt att identiteter för orsakande diagnos respektive operation har förmedlats vidare till nästa system i behandlingskedjan.
Ovanstående modell skulle kunna tänkas återspegla att en patient på en närakut får diagnosen Akut Appendicit och sänds med en akutremiss till det lokala sjukhuset. Via remissen förmedlas identiteten på den satta diagnosen i primärvårdssystemets journalsystem. När sedan operationen dokumenteras skapas ett explicit orsakssamband till den tidigare diagnosen. Tre veckor efter operationen kommer patienten tillbaka till primärvården för att operationssåret inte vill läka. Efter ett labbprov konstateras en MRSA-infektion. Läkaren använder, med patientens samtycke, möjligheten att söka i sammanhållen journal och hittar då den dokumenterade aktiviteten Appendektomi som utfördes på sjukhuset. Genom att skapa ett orsakssamband mellan MRSA-infektionen och ingreppet får den opererande verksamheten möjlighet att följa upp sina operationskomplikationer även om patienten inte kom direkt till dem med det uppkomna problemet.

##### Sekvensdiagram
I detta exempel hämtas de operationstyper (aktiviteter) ut som man planerar följa upp. För att se vad orsaken var till operationer samt eventuella komplikationer hämtas sedan relaterade observationer före och efter operationen. Respektive händelse har dokumenterats i olika vårdsystem, men eftersom det finns engagemangsindexposter för observationstjänsten i både system 2 och 3 kommer båda dessa system tillfrågas två gånger i nedanstående sekvens (se 3.1.1.2 Sekvensdiagram för enkel begäran för detaljerad beskrivning av hur anrop sker i aggregerad tjänst).
Nedan så har t ex system 2 kännedom om diagnosen, vilket redan har förmedlats till system 1 där operationen finns registrerad, inklusive dess orsak (med identitet enligt system 2). Slutligen så finns t ex i system 3 komplikationer noterade, vilka är relaterade till operationens identitet (enligt system 1).

![img_007.png](images/img_007.png)
Figur 5 Sekvensdiagram för komplext flöde.

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument / (för uppföljning) | Det system som används för att konsumera information. D.v.s. det system som använder tjänster enligt ett tjänstekontrakt. |
| Tjänsteplattform
(GetActivities & GetObservations) | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| GetActivities/Get Observations system
1, 2, & 3 | De system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

### Adressering
Tjänstedomänen tillämpar källsystemsadressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster. Tjänstekonsumenten adresserar därför den aggregerande tjänsten med antingen nationellt HSA-id (Ineras HSA-id) eller HSA-id för aktuell huvudman om det är en regional/huvudmanna-specifik (exempelvis ”regional”) aggregerande tjänst som ska adresseras.
Det finns också fall då en tjänstekonsument adresserar ett källsystem direkt. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA-id. Det sker exempelvis genom att ett sådant anrop föregås av ett anrop till en aggregerande tjänst (källsystemets HSA-id finns då i svarsmeddelandet) eller genom att tjänstekonsumenten är producent för Engagemangsindex notifieringskontrakt (ProcessNotification). Notifieringen innehåller information om en händelse rörande en patients information i ett specifikt källsystem. Genom att använda informationen om källsystemets HSA-id kan tjänstekonsumenten direktadressera källsystemet i syfte att hämta information om den händelse som just notifierats för patienten. Konsumenten kan även på andra sätt ha fått tillgång till källsystemets HSA-id, exempelvis via samband från tidigare uthämtad information.
Adressering sker i enlighet med RIV Tekniska Anvisningar Översikt, Rev PD2, avsnitt 8.3, där mer information kan hittas.

#### Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens journalhistorik | Logisk adress |
| :--- | :--- |
| Nationellt | Ineras HSA-id / QA: 5565594230 / Prod: 5565594230 |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Källsystemets HSA-id |

### Aggregering och engagemangsindex
Samtliga lästjänster i denna domän har en tillhörande aggregerande tjänst som kan sammanställa information från flera tjänsteproducenter.
Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.
Om ett källsystemets HSA-id anges som logisk adress, kommer tjänsteplattformen att dirigera frågemeddelandet vidare direkt till källsystemet utan att passera en aggregerande tjänst.
Om logisk adress HSA-id för Inera eller en huvudman kommer anropet att dirigeras till aggregerande tjänsten som i sin tur – efter att ha konsulterat engagemangsindex – vidarebefordrar frågan till de källsystem som har information om patienten.

### Interaktionsöverenskommelse och tillämpningsanvisning

![img_005.png](images/img_005.png)
Tjänstekonsumenter och -producenter av information inom denna tjänstedomän kan inte enbart förlita sig på informationsspecifikation och tjänstekontraktsbeskrivning för att uppnå semantisk interoperabilitet. Skälet till detta är att kombinationen av typade samband och möjligheten att använda godtyckliga kodverk för att beskriva en viss klinisk händelse ger möjlighet att skapa detaljerade modeller byggda som sammansättningar av dessa tjänster.
En interaktionsöverenskommelse utgör en överenskommelse om hur ett visst kliniskt scenario skall representeras med tjänsterna. Genom att deklarera konformitet till en eller flera interaktionsöverenskommelser kan en vårdgivare eller vårdenhet informera en tjänstekonsument om vilken typ av information som produceras via tjänstekontrakten. En interaktionsöverenskommelse kan exempelvis beskriva hur informationen om en längdmätning kommuniceras via tjänsten GetObservations.
En tillämpningsanvisning beskriver hur olika tjänstekontrakt kan tillämpas för att uppnå ett specifikt resultat som förutsätter att ett eller flera tjänstekontrakt används. Det kan t.ex. gälla att beskriva hur information hämtas för att en Förlossningsöversikt (”förlossningsjournal”) ska kunna sammanställas. Eftersom användningen av tjänstekontrakten i denna domän förutsätter att tjänstekontraktspecifika interaktionsöverenskommelser upprättas, behöver i dessa fall även relevanta interaktionsöverenskommelser refereras i en tillämpsningsanvisning där något av dessa kontrakt tillämpas.
Åtkomstkontroll vid medarbetares direktåtkomst
När en medarbetare inom hälso- och sjukvård vill ta del av information om en viss patient, t.ex. inom sammanhållen journalföring i NPÖ, behöver tjänstekonsumenten kontrollera om användaren har behörighet att ta del av informationen. För att kunna utföra åtkomstkontroll krävs det att det finns en mappning mellan interaktionsöverenskommelserna och en informationstyp i kodverket HSA Medarbetaruppdrag rättigheter som konsumenten ska använda sig av. Om informationen som hämtas via ex. GetObservations rör labbsvar, görs åtkomstkontrollen baserat på informationstypen för undersökningsresultat. Om observationer hämtas i syfte att sammanställa tillväxtinformation, behöver en motsvarande informationstyp finnas definierad och tillämpas vid åtkomstkontroll.

