# 3 Tjänstedomänens arkitektur

I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att ge
läsaren överblick och förståelse. Avsnittet innehåller inte normativa krav.

Tjänsterna för beskrivning av hälsorelaterade tillstånd erbjuder sökning av information i
hälso- och sjukvårdsgivarnas system för patientadministration och journalföring.

Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt system eller
en specifik verksamhet. Behovet av att rikta en fråga till ett specifikt system uppstår t.ex. när
man önskar ta del av mer information än vad ett aggregerande svar kan tillhandahålla.

## 3.1 Flöden

Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas.
Tjänstekonsument (K) och tjänsteproducenter (P) är markerade i diagrammen.

### 3.1.1 Arbetsflöde

Nedanstående diagram visar hur flödet principiellt ser ut när information ur kontrakt i
tjänstedomänen efterfrågas och hanteras.

**Figur 1:** Exempel: Adressering vid anrop till aggregerande tjänst från patienttjänst
(t.ex. från Mina Vårdkontakters tjänst för journalåtkomst).

**Figur 2:** Exempel: Adressering vid anrop till aggregerande vårdgivartjänst
(t.ex. från NPÖ-tillämpningen).

#### Roller

Se källdokument för fullständig rollbeskrivning.

### 3.1.2 Sekvensdiagram

**Figur 3:** Sekvensdiagram över sökning efter information där GetAlertInformation används
som exempel men samma princip gäller för alla kontrakt i tjänstedomänen.

### 3.1.3 Obligatoriska kontrakt

Domänen definierar inga flöden och har därmed inga obligatoriska kontrakt att uppfylla.

## 3.2 Adressering

Tjänstedomänen tillämpar källsystem-adressering. Observera att tjänstekonsumenter främst anropar
aggregerande tjänster. Tjänstekonsumenten adresserar då Inera eller en huvudman.

Det finns också fall då en tjänstekonsument adresserar ett källsystem. Det förutsätter att
tjänstekonsumenten känner till källsystemets HSA-id.

Adressering sker i enlighet med RIV Tekniska Anvisningar Översikt, Rev E, avsnitt 8.3.

Vid partiell datahämtning ska anropen efter det första anropet direktadresseras till tjänsteproducenten.

### 3.2.1 Sammanfattning av adresseringsmodell

Se källdokument för fullständig adresseringsmatris.

## 3.3 Aggregering och engagemangsindex

Det behövs en aggregerande tjänst för varje tjänstekontrakt som läser data i denna domän.
Aggregerande tjänster har samma tjänstekontrakt och anropsadress som källsystemen.

Om ett källsystems HSA-id anges som logisk adress, kommer frågemeddelandet att dirigeras vidare
direkt till källsystemet utav tjänsteplattformen utan att gå via aggregerande tjänst.

Om logisk adress är HSA-id för Inera eller en huvudman, kommer anropet att dirigeras till
aggregerande tjänsten som i sin tur — efter att ha konsulterat engagemangsindex — skickar
frågor till de berörda källsystemen och aggregerar svaren.
