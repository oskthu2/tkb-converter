## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.
Tjänsterna i denna domän erbjuder sökning efter logistikrelaterad information från hälso- och sjukvårdens journal- och patientadministrativa system, såsom information om planerade och utförda vårdkontakter, samt information om vårdplaner. Utgångspunkten är i första hand patientens och professionens behov av direktåtkomst till en patients vårdhistorik sett ur ett nationellt eller ett regionalt perspektiv. I båda fallen är syftet att historisk information sammanställs från de källsystem där det finns historik via s.k. aggregerande tjänster, snarare än att begära information från ett specifikt system eller en specifik verksamhet.
Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår främst när tjänstekonsumenten också är prenumerant på notifieringar från engagemangsindex och på det sättet (via ProcessNotification) får information om en händelse i ett specifikt system. Det är då ändamålsenligt att adressera det systemet, istället för den aggregerande tjänsten.
Tjänstedomänen förutsätter en aggregeringsplattform motsvarande den som beskrivs i T-boken, REV B [R4]. Tjänstedomänen förutsätter också användning av engagemangsindex på nationell nivå. Behovet av ett regionalt engagemangsindex beror dels av om regionen avser tillämpa tjänstekontrakten för regionala tjänstekonsumenter och av antalet informationskällor som ska tillgängliggöras för regionala behov.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna.

### Flöden
Nedanstående diagram visar hur flödet principiellt ser ut när information ur kontrakt i tjänstedomänen efterfrågas och hanteras (exemplifierat med GetCareContacts). Den första figuren visar direktåtkomst inom sammanhållen journalföring och den andra figuren visar användning inom patientens direktåtkomst.

##### Arbetsflöde

![img_004.png](images/img_004.png)
*Figur 1 - Direktåtkomst inom sammanhållen journalföring*

![img_003.png](images/img_003.png)
*Figur 2 - Patientens direktåtkomst*

#### Obligatoriska kontrakt
Tjänstedomänen definierar inga flöden, alla tjänstekontrakt är frivilliga.

### Adressering
Tjänstedomänen tillämpar källsystem-adressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster. Tjänstekonsumenten adresserar därför den aggregerande tjänsten med antingen nationellt HSA-id (Ineras HSA-id) eller HSA-id för aktuell huvudman om det är en regional/huvudmanna-specifik (t.ex. ”regional”) aggregerande tjänst som ska adresseras.
Det finns också fall då en tjänstekonsument adresserar ett källsystem. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA-id. Det sker genom att ett sådant anrop föregås av ett anrop till en aggregerande tjänst (källsystemets HSA-id finns då i svarsmeddelandet) eller genom att tjänstekonsumenten är producent för Engagemangsindex notifieringskontrakt (ProcessNotification). Notifieringen innehåller information om en händelse rörande en patients information i ett specifikt källsystem. Genom att använda informationen om källsystemets HSA-id kan tjänstekonsumenten direktadressera källsystemet i syfte att hämta information om den händelse som just notifierats för patienten.

#### Illustrering av adressering
Följande figurer illustrerar adressering av aggregerande tjänst genom ett exempel. Det är alltid källsystemets HSA-id som är logisk adress när en aggregerande tjänst anropar en anslutningspunkt (ap), även om det inte är just källsystemet som är anslutningspunkt eller ens tjänsteproducent (i fallet av ett mellanlager).

##### Adressering vid nationell användning

![img_001.png](images/img_001.png)
*Figur 3 - Adressering vid anrop till nationell aggregerande tjänst (t.ex. från Mina vårdkontakter eller NPÖ-tillämpningen)*

##### Adressering vid regional användning

![img_006.png](images/img_006.png)
*Figur 4 - Adressering vid anrop till regional aggregerande tjänst (t.ex. från ett vårddokumentationssystem, beslutsstödsystem eller en regional patientöversikt)*

##### Adressering direkt till ett källsystem
Sökning efter en specifik vårdkontakt kan göras genom adressera systemet där vårdkontakten finns. Det förutsätter att källsystemets HSA-id och vårdkontaktens HSA-id är känt, t.ex. genom att informationen finns i sökresultatet från något av tjänstekontrakten för journalhistorik (t.ex. tjänstekontrakt i domänen riv:clinicalprocess:healthcond:description).
Eftersom anropet i dessa fall sker direkt mot virtuell tjänst, sker adressering med källsystemets HSA-id direkt från tjänstekonsumenten. Detta beskrivs i figuren nedan.

![img_005.png](images/img_005.png)
*Figur 5 - Adressering vid sökning efter information ur ett specifikt källsystem*

#### Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens journalhistorik | Logisk adress |
| :--- | :--- |
| Nationellt | Ineras HSA-id: 5565594230 |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Källsystemets HSA-id |

### Aggregering och engagemangsindex
Det behövs en aggregerande tjänst för varje tjänstekontrakt som läser data i denna domän.
Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.
Om ett källsystems HSA-id anges som logisk adress, kommer frågemeddelandet att dirigeras vidare direkt till källsystemet utav tjänsteplattformen utan att passera en aggregerande tjänst. Om logisk adress HSA-id för Inera eller en huvudman kommer anropet att dirigeras till aggregerande tjänsten som i sin tur – efter att ha konsulterat engagemangsindex – vidarebefordrar frågan till de källsystem som har information om patienten.

#### Nationell användning
Vid nationell användning av tjänstekontrakten (d.v.s. tjänstekonsumenter som begär information från alla tjänsteproducenter i Sverige) sker aggregering av informationen genom aggregerande tjänster i den gemensamma tjänsteplattformen. Regioner och Landsting tillhandahåller då källsystemens (KS) information genom anslutningspunkter (AP) i enlighet med tjänstekontrakten. Det kan t.ex. ske enligt olika modeller:
A: Direktanslutning av källsystem: Källsystemet är anslutningspunkten till gemensamma tjänsteplattformen
B: Källsystem ansluts via regional tjänsteplattform: Regionens tjänstplattform är anslutningspunkt till gemensamma tjänsteplattformen
C: Mellanlager ansluts direkt eller via regional tjänsteplattform: Ett mellanlager avskärmar källsystemen från den last som uppstår vid från nationella medarbetar- och invånartjänster
Modellerna illustreras nedan (från höger till vänster):

![img_002.png](images/img_002.png)
Figur: Olika modeller för anslutning av källsystem.
Anslutningsmodellerna förutsätter att…
vårdsystemen uppdaterar nationellt engagemangsindex – direkt eller indirekt via regionalt index. Källsystemets HSA-id anges i engagemangsposten jämte övrig info enligt beskrivning i särskilt avsnitt under regelverk
en ev. regional tjänsteplattform kan dirigera anrop till rätt tjänsteproducent baserat på källsystemets HSA-id (på samma sätt som nationellt)
tjänsteproducenten validerar att aktuell tjänstekonsument (HSA-id i http-header) är godkänd av verksamheten (informationsägande vårdenhet)

#### Regional användning
Regional användning innebär att tjänstekonsumenten är regional (R-K) och begär information från alla producenter i regionen, avseende ett visst tjänstekontrakt inom tjänstedomänen. Det innebär att regionen behöver utföra regional aggregering i den regionala tjänsteplattformen. Anslutningen av regional tjänsteplattform till nationell påverkas inte av att regionen inför en regional aggregerande tjänst:

![img_007.png](images/img_007.png)

### Tjänstekontraktets design
Tjänsterna, som beskrivs nedan, returnerar 0, 1 eller flera instanser av tjänstespecifik patientbunden information i form av dokument. Varje dokument består av en header, PatientSummaryHeader, som är gemensam för alla tjänster, samt en body som är specifik för varje tjänstekontrakt, där ett dokument omfattar en instans av information som ska överföras, exempelvis ett konsultationsremissvar.
Ett dokument motsvarar den information som täcks av en signatur (oavsett om signaturen ännu gjorts).
Tjänsterna har en gemensam basuppsättning sökparametrar som i vissa fall utökats specifikt per tjänst.

