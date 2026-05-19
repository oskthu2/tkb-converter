## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.
Tjänsterna för beskrivning av aktiviteter erbjuder sökning av information i vård- och omsorgsgivarnas system för patientadministration och hälso- och sjukvårdsdokumentation. Utgångspunkten för tjänsterna i denna tjänstedomän är att historisk information sammanställs från det eller de källsystem där det finns historik via s.k. aggregerande tjänster, snarare än att begära information från ett specifikt system eller en specifik verksamhet. Som en följd av detta kravställer tjänstedomänen uppdatering av engagemangsindex.
Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår främst när tjänstekonsumenten också är prenumerant på notifieringar från engagemangsindex och på det sättet (via ProcessNotification) får information om en händelse i ett specifikt system. Det är då ändamålsenligt att adressera det specifika systemet, istället för den aggregerande tjänsten, i syfte att söka fram information om just den händelse som orsakade notifieringen.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna.

### Flöden
Nedanstående diagram visar hur flödet principiellt ser ut när information ur kontrakt i tjänstedomänen efterfrågas och hanteras.

#### Hämta aktiviteter
Nedanstående diagram visar hur flödet ser ut när information om aktiviteter hämtas.

##### Arbetsflöde

![img_007.png](images/img_007.png)
*Figur 1 Exempel: Adressering vid anrop till aggregerande tjänst från patienttjänst (t.ex. från Mina Vårdkontakters tjänst för journalåtkomst).*

![img_005.png](images/img_005.png)
*Figur 2 Exempel: Adressering vid anrop till aggregerande vårdgivartjänst (t.ex. från NPÖ-tillämpningen).*

##### Sekvensdiagram för enkel begäran
Siffrorna i diagrammet nedan kopplar ihop begäran-svar för respektive meddelande.

![img_009.png](images/img_009.png)
*Figur 3 Sekvensdiagram över sökning efter information*

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument | Det system som används för att konsumera information. Dvs det system som använder tjänster enligt ett tjänstekontrakt. |
| Tjänsteplattform | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Aggregerande tjänst | En aggregerande tjänst är en integrationstjänst som för en tjänstekonsument sammanställer en nationell vy av informationen av den typ som är aktuell för tjänsten i fråga. Är beroende av engagemangsindex för att begränsa sökningen till relevanta informationsägare. |
| Engagemangsindex | En tjänst där det finns uppdaterade nationella index över vilka informationsägare som har information kring en viss invånare/patient. |
| Vårdinformationssystem 1 och 2 | Det system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

#### Beskrivning av relationskonceptet
Kontrakt i tjänstedomänen har stöd för att peka ut relaterade informationsmängder. Konceptet är till för att en tjänsteproducent skall kunna förmedla till en tjänstekonsument att det finns relaterad information att hämta. En aktivitet (blindtarmsoperation) kan exempelvis ha en relation till en tidigare observation (blindtarmsinflammation). Relationen har en viss typ vilket i ovanstående exempel skulle kunna vara ”har orsak”.
En relaterad informationsmängd pekas ut med hjälp av typen ReferredInformationType där fältet type beskriver vilken informationstyp som är refererad och följer tabellen för engagemangsindex-kategori, enligt fältet ”categorization”, t.ex. caa-ga för att referera till en annan aktivitet. För att filtrera ut den källa som lagrar den relaterade informationsmängden används det HSA-id som återfinns i ActivityGroup/activity/relation/referredInformation/id/root som värde i sökparametern SourceSystemHSAId och som logisk adress.

##### Exempel på relaterad information/samband
I detta exempel har en patient en tidigare satt diagnos (observation) K35.2 Akut appendicit med generaliserad peritonit. På grund av denna diagnos utförs en appendektomi (aktivitet). Vid ett senare tillfälle upptäcks att en MRSA-infektion har uppkommit i operationssåret (observation).

![img_002.png](images/img_002.png)
För detaljerade beskrivningar av klasser och attribut ovan se [R5].
Ifall dessa data lagras i olika system, så är förutsättningen, för anrops-flödet i nästa avsnitt att identiteter för orsakande diagnos respektive operation har förmedlats vidare till nästa system i behandlingskedjan.
Ovanstående modell skulle kunna tänkas återspegla att en patient på en närakut får diagnosen Akut Appendicit och sänds med en akutremiss till det lokala sjukhuset. Via remissen förmedlas identiteten på den satta diagnosen i primärvårdssystemets journalsystem. När sedan operationen dokumenteras skapas ett explicit orsakssamband till den tidigare diagnosen. Tre veckor efter operationen kommer patienten tillbaka till primärvården för att operationssåret inte vill läka. Efter ett labbprov konstateras en MRSA-infektion. Läkaren använder möjligheten att söka i sammanhållen journal efter patientens samtycke och hittar då den dokumenterade aktiviteten Appendektomi som utfördes på sjukhuset. Genom att skapa ett orsakssamband mellan MRSA-infektionen och ingreppet får den opererande verksamheten möjlighet att följa upp sina operationskomplikationer även om patienten inte kom direkt till dem med det uppkomna problemet.

##### Sekvensdiagram
I detta exempel hämtas de operationstyper (aktiviteter) ut som man planerar följa upp. För att se vad orsaken var till operationer samt eventuella komplikationer hämtas sedan relaterade observationer före och efter operationen. Respektive händelse har dokumenterats i olika vårdsystem, men eftersom det finns engagemangsindexposter för observationstjänsten i både system 2 och 3 kommer båda dessa system tillfrågas två gånger i nedanstående sekvens (se 3.1.1.1 Sekvensdiagram för enkel begäran för enkel begäran för detaljerad beskrivning av hur anrop sker i aggregerad tjänst). En konsument som kräver följsamhet till en viss uppsättning interaktionsöverenskommelser skulle i exemplet nedan ange dessa som inparametrar vid anropen till GetActivities respektive GetObservations.
Nedan så har t ex system 2 kännedom om diagnosen, vilket redan har förmedlats till system 1 där operationen finns registrerad, inklusive dess orsak (med identitet enligt system 2). Slutligen så finns t ex i system 3 komplikationer noterade, vilka är relaterade till operationens identitet (enligt system 1).

![img_006.png](images/img_006.png)
*Figur 4 Sekvensdiagram för komplext flöde.*

##### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Tjänstekonsument (för uppföljning) | Det system som används för att konsumera information. D.v.s. det system som använder tjänster enligt ett tjänstekontrakt. |
| Tjänsteplattform
(GetActivity & GetObservation) | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Vårdinformationssystem
1, 2, & 3 | De system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

### Adressering
Tjänstedomänen tillämpar källsystemsadressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster. Tjänstekonsumenten adresserar därför den aggregerande tjänsten med antingen nationellt HSA-id (Ineras HSA-id) eller HSA-id för aktuell huvudman om det är en regional/huvudmanna-specifik (t.ex. ”regional”) aggregerande tjänst som ska adresseras.
Det finns också fall då en tjänstekonsument adresserar ett källsystem direkt. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA-id. Det sker genom att ett sådant anrop föregås av ett anrop till en aggregerande tjänst (källsystemets HSA-id finns då i svarsmeddelandet) eller genom att tjänstekonsumenten är producent för Engagemangsindex notifieringskontrakt (ProcessNotification). Notifieringen innehåller information om en händelse rörande en patients information i ett specifikt källsystem. Genom att använda informationen om källsystemets HSA-id kan tjänstekonsumenten direktadressera källsystemet i syfte att hämta information om den händelse som just notifierats för patienten.
Adressering sker i enlighet med RIV Tekniska Anvisningar Översikt, Rev PD2, avsnitt 8.3, där mer information kan hittas.

#### Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens journalhistorik | Logisk adress |
| :--- | :--- |
| Nationellt | Ineras HSA-id
QA: 5565594230
Prod: 5565594230 |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Källsystemets HSA-id |

### Aggregering och engagemangsindex
Det behövs en aggregerande tjänst för varje tjänstekontrakt som läser data i denna domän. Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.
Om ett källsystemets HSA-id anges som logisk adress, kommer tjänsteplattformen att dirigera frågemeddelandet vidare direkt till källsystemet utan att passera en aggregerande tjänst. 
Om logisk adress HSA-id för Inera eller en huvudman kommer anropet att dirigeras till aggregerande tjänsten som i sin tur – efter att ha konsulterat engagemangsindex – vidarebefordrar frågan till de källsystem som har information om patienten.

### Interaktionsöverenskommelse

![img_010.png](images/img_010.png)
Konsumenter och producenter av information inom denna tjänstedomän kan inte enbart förlita sig på informationsspecifikation och tjänstekontraktsbeskrivning för att uppnå semantisk interoperabilitet. Skälet till detta är att kombinationen av typade relationer och möjligheten att använda godtyckliga kodverk för att beskriva en viss klinisk händelse ger möjlighet att skapa detaljerade modeller byggda som sammansättningar av dessa tjänster.
En interaktionsöverenskommelse utgör en överenskommelse om kliniska egenskaper som ska gälla för den information som tjänstekonsumenten efterfrågar inom ramen för ett tjänsteanrop. Under förutsättning att tjänsteproducenten stöder innebörden av interaktionsöverenskommelsen ska den returnera data enligt sökparametrarna. Om stöd saknas skall tjänsteproducenten returnera ett tomt svar.  En interaktionsöverenskommelse är specifik för ett tjänstekontrakt (t.ex. GetObservations). En överenskommelse kan exempelvis beskriva hur en kroppslängd mätt i centimeter representeras i GetObservations-interaktionen, samt eventuella relationer till andra informationsmängder som ett producentsystem förväntas producera för denna överenskommelse.
En tjänstekonsument av en viss typ kan kräva stöd för ett antal interaktionsöverenskommelser för att kunna utföra sin uppgift. En systemägare till ett producentsystem kan använda denna lista med interaktionsöverenskommelser som en beställning till sin systemleverantör.

