## Tjänstedomänens arkitektur
I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang för de regler som beskrivs i övriga delar av dokumentet.
Övergripande
Tjänsterna erbjuder sökning av information i vård- och omsorgsgivarnas system för patientadministration och vårddokumentation.
Utgångspunkten är i första hand patientens och professionens behov av direktåtkomst till en patients vård- och omsorgshistorik sett ur ett nationellt eller ett regionalt perspektiv.
I båda fallen är syftet att historisk information sammanställs från de källsystem där det finns historik, snarare än att begära information från ett specifikt system eller en specifik verksamhet.
Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår främst när tjänstekonsumenten också är prenumerant på notifieringar från engagemangsindex och på det sättet (via ProcessNotification) får information om en händelse i ett specifikt system. Det är då ändamålsenligt att adressera det systemet, istället för den aggregerande tjänsten.
Tjänstedomänen förutsätter en aggregeringsplattform motsvarande den som beskrivs i T-boken, REV B. Tjänstedomänen förutsätter också användning av engagemangsindex på nationell nivå. Behovet av ett regionalt engagemangsindex beror dels av om regionen avser tillämpa tjänstekontrakten för regionala tjänstekonsumenter och av antalet informationskällor som ska tillgängliggöras för regionala behov.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i figurerna. Den första figuren visar direktåtkomst inom sammanhållen journalföring och den andra figuren visar användning inom patientens direktåtkomst.

![img_007.png](images/img_007.png)
Figur: Direktåtkomst inom sammanhållen journalföring

![img_004.png](images/img_004.png)
Figur: Patientens direktåtkomst
Nationell användning
Vid nationell användning av tjänstekontrakten (d.v.s. tjänstekonsumenter som begär information från alla tjänsteproducenter i Sverige) sker aggregering av informationen genom aggregerande tjänster i den gemensamma tjänsteplattformen. Regioner och Landsting tillhandahåller då källsystemens (KS) information genom anslutningspunkter (AP) i enlighet med tjänstekontrakten. Det kan t.ex. ske enligt olika modeller:
A: Direktanslutning av källsystem: Källsystemet är anslutningspunkten till gemensamma tjänsteplattformen
B: Källsystem ansluts via regional tjänsteplattform: Regionens tjänstplattform är anslutningspunkt till gemensamma tjänsteplattformen
C: Mellanlager ansluts direkt eller via regional tjänsteplattform: Ett mellanlager avskärmar källsystemen från den last som uppstår vid från nationella medarbetar- och invånartjänster
Modellerna illustreras nedan (från höger till vänster):

![img_003.png](images/img_003.png)
Figur: Olika modeller för anslutning av källsystem.
Anslutningsmodellerna förutsätter att:
vårdsystemen uppdaterar nationellt engagemangsindex – direkt eller indirekt via regionalt index. Källsystemets HSA-id anges i engagemangsposten jämte övrig info enligt beskrivning i särskilt avsnitt under regelverk
en ev. regional tjänsteplattform kan dirigera anrop till rätt tjänsteproducent baserat på källsystemets HSA-id (på samma sätt som nationellt)
tjänsteproducenten validerar att aktuell tjänstekonsument (HSA-id i http-header) är godkänd av verksamheten (informationsägande vårdenhet)
Regional användning
Regional användning innebär att tjänstekonsumenten är regional (R-K) och begär information från alla producenter i regionen, avseende ett visst tjänstekontrakt inom tjänstedomänen. Det innebär att regionen behöver utföra regional aggregering i den regionala tjänsteplattformen. Anslutningen av regional tjänsteplattform till nationell påverkas inte av att regionen inför en regional aggregerande tjänst:

![img_001.png](images/img_001.png)
Adresseringsmodell
Tjänstedomänen tillämpar system-adressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster. Källsystemet adresserar därför den aggregerande tjänsten med antingen nationellt HSA-id (Ineras HSA-id) eller HSA-id för aktuell huvudman om det är en regional/huvudmanna-specifik (t.ex. ”regional”) aggregerande tjänst som ska adresseras.
Det finns också fall då en tjänstekonsument adresserar ett källsystem. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA. Det sker genom att ett sådant anrop föregås av ett anrop till en aggregerande tjänst (källsystemets HSAid finns då i svarsmeddelandet) eller genom att tjänstekonsumenten är producent för Engagemangsindex notifieringskontrakt (ProcessNotification). Notifieringen innehåller information om en händelse rörande en patients information i ett specifikt källsystem. Genom att använda informationen om källsystemets HSA-id kan tjänstekonsumenten direkt adressera källsystemet i syfte att hämta information om den händelse som just notifierats för patienten.
Följande figur illustrerar adressering av aggregerande tjänst genom ett exempel. Det är alltid källsystemets HSA-id som är logisk adress när en aggregerande tjänst anropar en anslutningspunkt (ap), även om det inte är just källsystemet som är anslutningspunkt eller ens tjänsteproducent (i fallet av ett mellanlager).
Adressering vid nationell användning

![img_008.png](images/img_008.png)
Figur: Adressering vid anrop till nationell aggregerande tjänst (t.ex. från Mina vårdkontakter eller NPÖ-tillämpningen)
Adressering vid regional användning

![img_005.png](images/img_005.png)
Figur: Adressering vid anrop till regional aggregerande tjänst (t.ex. från ett vårddokumentationssystem, beslutsstödsystem eller en regional patientöversikt)
Adressering direkt till ett källsystem
Tjänstekontrakten i denna domän möjliggör sökning av information relaterad till en patient.
Eftersom vårdkontaktid finns som sökparameter till tjänstekontrakten i denna domän, kan man filtrera sökningen. Vårdkontakt-id är bara unikt inom ett källsystem. Man behöver därför avgränsa en sådan fråga till ett specifikt källsystem. Det görs helt enkelt genom att ange källsystemets HSA-id som sökparameter, tillsammans med vårdkontakt-id. I detta fall används källsystemets HSA-id som logisk adress. Källsystemets HSA-id och vårdkontakt-id ingår i svarsmängden för alla tjänstekontrakt i denna domän.

![img_002.png](images/img_002.png)
Figur: Flöde som förutsätter adressering med källsystemets HSAid
Eftersom anropet i detta fall sker direkt mot virtuell tjänst, sker adressering med källsystemets HSA-id direkt från tjänstekonsumenten. Detta beskrivs i figuren nedan.

![img_009.png](images/img_009.png)
Figur: Adressering vid sökning efter information ur ett specifikt källsystem
Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens journalhistorik | Logisk adress |
| :--- | :--- |
| För alla huvudmän | Ineras HSA-id |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Källsystemets HSA-id |
Aggregerande tjänster
Det behövs en aggregerande tjänst för varje tjänstekontrakt i denna domän.
Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.
Om ett källsystemets HSA-id anges som logisk adress, kommer frågemeddelandet att dirigera vidare direkt till källsystemet utan att passera en aggregerande tjänst.
Om logisk adress HSA-id för Inera eller en huvudman kommer anropet att dirigeras till aggregerande tjänsten som i sin tur – efter att ha konsulterat engagemangsindex, vidarebefordrar frågan till de källsystem som har information om patienten.
Informationssäkerhet
Medarbetarens direktåtkomst
Vid sammanhållen journalföring ansvarar verksamheten som erbjuder sina medarbetare direktåtkomst till sammanhållen journal för att patientdatalagen efterlevs. Det innebär bl.a. att spärrkontroll kan behöva genomföras innan information kan visas. Det innebär också att regelverket för samtycke, vårdrelation och åtkomstloggning måste följas. Dessutom finns krav från datainspektionen om ytterligare teknisk åtkomstkontroll.
Patientdatalagen ställer också krav (via dess tolkning ”PDL-i-praktiken”) på att medarbetaren är starkt autentiserad om medarbetarens inloggning sker i nät som delas med flera vårdgivare och att uppdragsval görs i samband med autentisering (vårdenhet). Det kompletta regelverket finns i senaste utredningen PDLiP samt i anvisningar för tillgänglig patient.
Observera att tjänstekontrakten i sig inte påtvingar sammanhållen journalföring. Krav rörande sammanhållen journalföring och eller krav på spärrhantering uppstår först om tjänstekonsumenten (e-tjänsten) för medarbetaren tillgängliggör information som härrör från andra vårdgivare (sammanhållen journalföring) eller andra vårdenheter inom egna vårdgivaren (spärrkrav).
Patientens direktåtkomst
Alla tjänstekontrakten i denna tjänstedomän har en svarsflagga som anger om verksamheten (informationsägaren) godkänt att informationen får visas för patient. Det kan t.ex. ha skett genom menprövning eller rådrum. För vissa av tjänstekontrakten, såsom Vård- och omsorgskontakter, kanske informationsägaren policymässigt har menprövat all information. Det är varje vårdgivares ansvar att tjänsteproducenten sätter ”kan visas för patient”-flaggan i enlighet med vårdgivarens verksamhetsregler.
Generellt
Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter som informationsägaren godkänt. Det är inte ett juridiskt krav, men tydliggörs här eftersom det avviker från T-boken i det att tjänsteplattformen då inte ansvarar för den tekniska åtkomstkontrollen (ej möjligt när systembaserad adressering tillämpas). Om informationsägaren har behov av att reglera åtkomst per tjänstekonsument, ska tjänsteproducenten filtrera svaret enligt informationsägarens önskemål. Observera att det är regionala policyer snarare än lagar och förordningar som styr i vilken grad tjänsteproducenten ska begränsa åtkomst för en viss tjänstekonsument. Kunskapen om tjänstekonsumentens (tjänstens) identitet (d.v.s. ursprunglig tjänstekonsument i anropskedjan) får bara användas för teknisk åtkomstbegränsning på så sätt att svaret blir som om de vårdenheter vars verksamhetschef inte godkänner aktuell tjänstekonsument varit exkluderade i frågan.
Tjänstekontraktens design
Tjänsterna, som beskrivs nedan, returnerar 0, 1 eller flera instanser av tjänstespecifik patientbunden information i form av dokument enligt HL7 Green CDA-standarden.
Varje dokument består av en inledning (Header) – PatientSummaryHeader - som är gemensam för alla tjänster i domänen, samt en Body som är specifik för varje tjänstekontrakt, där ett dokument omfattar en instans av information som ska överföras, exempelvis patientens vaccinationshistorik.
Ett dokument motsvarar den information som täcks av en signatur (oavsett om signaturen ännu gjorts).
Tjänsterna har en gemensam basuppsättning sökparametrar som i vissa fall utökats specifikt per tjänst.
Tjänstekontrakten i sig stödjer inte HL7 CDA, men de distribueras tillsammans med XSLT-transformationsfiler som leverantörer av CDA-kompatibla system kan använda för att transformera svarsmeddelandet till HL7 CDA, eller omvänt - för att skapa ett svarsmeddelande från ett HL7 CDA-meddelande.

