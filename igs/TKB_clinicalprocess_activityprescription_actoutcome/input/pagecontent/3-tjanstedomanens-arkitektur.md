# 3 Tjänstedomänens arkitektur

I detta avsnitt beskrivs hur T-boken tillämpats i tjänstedomänen. Avsnittet syftar till att
ge läsaren överblick och förståelse. Avsnittet innehåller inga regler, men ger ett sammanhang
för de regler som beskrivs i övriga delar av dokumentet.

Tjänstedomänen möjliggör hantering av information kopplad till patients ordinationer, förskrivning
och administrering av läkemedel och vaccinationer. Utgångspunkten för tjänsterna i denna tjänstedomän
är i första hand patientens och professionens behov av direktåtkomst till en patients
vård- och omsorgshistorik sett ur ett nationellt perspektiv.

Tjänstekontrakten erbjuder även möjlighet att nå information från ett specifikt källsystem.
Följande flödesmodeller beskriver översiktligt hur tjänstekontrakten är tänkta att användas.

## 3.1 Flöden

Nedanstående diagram visar hur flödet principiellt ser ut när information ur kontraktet
hämtas via en tjänsteplattform, t.ex. den nationella tjänsteplattformen (NTjP).

### 3.1.1 Flöde 1

#### Arbetsflöde

Flödet beskriver hur en tjänstekonsument hämtar information om en patients vaccinationer eller
läkemedelshistorik via den nationella tjänsteplattformen.

1. Tjänstekonsumenten anropar engagemangsindexet för att ta reda på vilka källsystem som har information om patienten.
2. Tjänstekonsumenten anropar respektive källsystem (via tjänsteplattformen) med patientens identifierare.
3. Källsystemet svarar med strukturerad information om patientens vaccinationer eller läkemedel.

#### Roller

| Roll | Beskrivning |
|------|-------------|
| Tjänstekonsument | System som hämtar information om patientens ordinationer/vaccinationer |
| Tjänsteproducent | Källsystem som lagrar och tillgängliggör information |
| Tjänsteplattform | Nationell infrastruktur (NTjP) som förmedlar anrop |

### 3.1.2 Obligatoriska kontrakt

Tjänsteproducenter som implementerar denna domän ska stödja de tjänstekontrakt som är relevanta
för det informationsinnehåll de förvaltar.

## 3.2 Adressering

### 3.2.1 Sammanfattning av adresseringsmodell

Systemadressering tillämpas för denna tjänstedomän. Logisk adress = källsystemets HSA-id.

| Åtkomstbehov | Logisk adress |
|--------------|---------------|
| Patientens journalhistorik för ett källsystem | Källsystemets HSA-id |
| Aggregerad information | Aggregeringstjänstens HSA-id |

## 3.3 Aggregering och engagemangsindex

Tjänstekontrakten stöder aggregering via engagemangsindex. Alla källsystem ska uppdatera
engagemangsindex när information om en patient tillkommer eller ändras.

Informationsmängder som indexeras:

| Informationsmängd enligt tjänstekontrakt | Värde på Categorization |
|------------------------------------------|-------------------------|
| GetVaccinationHistory | caa-gvh |
| GetMedicationHistory | caa-gmh |
