# 3 Tjänstedomänens arkitektur

I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge läsaren överblick och förståelse. Avsnittet innehåller flödesmodeller, beskrivning av adressering och aggregering.

Tjänsterna i denna domän erbjuder sökning efter logistikrelaterad information från hälso- och sjukvårdens journal- och patientadministrativa system.

Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system kan t.ex. uppstå när ett system vill nå information från ett annat system.

Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas. Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i diagrammen.

## 3.1 Flöden

Nedanstående diagram visar hur flödet principiellt ser ut när information ur kontrakt i tjänstedomänen efterfrågas och hanteras (exemplifierat med GetCareContacts).

### Arbetsflöde

**Adressering vid anrop till aggregerande tjänst från patienttjänst (t.ex. Journalen):**

Tjänstekonsumenten anropar en aggregerande tjänst via tjänsteplattformen med nationell eller regional logisk adress. Den aggregerande tjänsten konsulterar engagemangsindex för att hitta relevanta källsystem och anropar dessa parallellt.

**Adressering vid anrop till aggregerande vårdgivartjänst (t.ex. från NPÖ-tillämpningen):**

Tjänstekonsumenten anropar en aggregerande tjänst med en huvudmans/regions HSA-id som logisk adress. Den aggregerande tjänsten hämtar data från källsystemen för den aktuelle huvudmannen.

### Roller

| Namn/beteckning | Beskrivning |
|-----------------|-------------|
| Patienten | Den patient som vill få tillgång till sina vårdkontakter. |

| Namn | Beskrivning |
|------|-------------|
| Tjänstekonsument | Det system som används för att konsumera information. Dvs det system som använder tjänster enligt ett tjänstekontrakt. |
| Tjänsteplattform | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Vårdinformationssystem | Det system som i detta fall utgör källsystemet som vårdpersonal direkt registrerar/uppdaterar/raderar information i. |

### 3.1.1 Obligatoriska kontrakt

Tjänstedomänen definierar inga flöden, alla tjänstekontrakt är frivilliga.

## 3.2 Adressering

Tjänstedomänen tillämpar källsystem-adressering. Observera att tjänstekonsumenter främst anropar aggregerande tjänster. Tjänstekonsumenten adresserar aggregerande tjänsten med nationell eller regional logisk adress.

Det finns också fall då en tjänstekonsument adresserar ett källsystem. Det förutsätter att tjänstekonsumenten känner till källsystemets HSA-id. Det sker exempelvis när ett vårdinformationssystem vill nå information från ett annat vårdinformationssystem.

Adressering sker i enlighet med RIV Tekniska Anvisningar Översikt, Rev PD2, avsnitt 8.3, där mer information kan hittas.

### 3.2.1 Sammanfattning av adresseringsmodell

| Åtkomstbehov för patientens journalhistorik | Logisk adress |
|---------------------------------------------|---------------|
| Nationellt | Ineras HSA-id: 5565594230 |
| För en huvudman/region | Huvudmannens/regionens HSA-id |
| För ett källsystem | Källsystemets HSA-id |

## 3.3 Aggregering och engagemangsindex

Det behövs en aggregerande tjänst för varje tjänstekontrakt som läser data i denna domän.

Aggregerande tjänster har samma tjänstekontrakt och anropsadress som en traditionell virtuell tjänst, men nås via olika logiska adresser.

Om ett källsystemets HSA-id anges som logisk adress, kommer frågemeddelandet att dirigeras vidare direkt till källsystemet utav tjänsteplattformen utan att passera en aggregerande tjänst.

Om logisk adress HSA-id för Inera eller en huvudman kommer anropet att dirigeras till aggregerande tjänsten som i sin tur — efter att ha konsulterat engagemangsindex — distribuerar frågan till relevanta källsystem och sammanställer svaret.
