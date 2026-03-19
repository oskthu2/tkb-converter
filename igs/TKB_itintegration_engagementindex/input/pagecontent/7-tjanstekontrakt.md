# 7 Tjänstekontrakt

## 7.1 FindContent

### 7.1.1 Version

Version: 1.0

RIV-TA namnrymd: `urn:riv:itintegration:engagementindex:FindContent:1`

### 7.1.2 Beskrivning

Tjänst som en applikation använder för att begära information från ett engagemangsindex. Tjänstekontraktet FindContent används för att söka fram och hämta indexinformation. Sökresultatet filtreras baserat på attribut i begäran. Används primärt av aggregerande tjänster i tjänsteplattformen.

Svenskt namn: **Hämta/sök poster från Engagemangsindex**

### 7.1.3 Gemensamma informationskomponenter

Informationsmodell (avsnitt 5 — Tjänstedomänens meddelandemodeller).

### 7.1.4 Fältregler

**Request — FindContentRequest**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| registeredResidentIdentification | Nationell accepterad personidentitet | 1..1 | Enligt formatregler i meddelandemodellen |
| serviceDomain | URN | 1..1 | Namnrymd för Tjänstedomän. Exempel: urn:riv:clinicalprocess:activity:request |
| categorization | String | 0..1 | Kodverk enligt tjänstedomänens dokumentation. |
| logicalAddress | String | 0..1 | Enligt tjänstedomänens dokumentation. |
| engagementTransaction.engagement.businessObjectInstanceIdentifier | String | 0..1 | Enligt tjänstedomänens dokumentation. |
| clinicalProcessInterestId | String | 0..1 | Enligt tjänstedomänens dokumentation |
| mostRecentContent | TS | 0..1 | YYYYMMDDhhmmss. |
| sourceSystem | HSA-id | 0..1 | Källsystemet som innehåller den information som EI-posten pekar ut. I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen. |
| dataController | String | 0..1 | Identitet för den PUA som ansvarar för postens innehåll. I första hand organisationsnummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. |
| owner | HSA-id | 0..1 | HSA-id för den organisations vars index tog emot uppdateringsbegäran. |

**Response — FindContentResponse**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| engagement | EngagementType | 0..* | Lista med engagemangsposter. |
| engagement.registeredResidentIdentification | Nationell accepterad personidentitet | 1..1 | Enligt formatregler i meddelandemodell |
| engagement.serviceDomain | URN | 1..1 | Namnrymd för Tjänstedomän. Exempel: urn:riv:clinicalprocess:activity:request |
| engagement.categorization | String | 1..1 | Enligt tjänstedomänens dokumentation. |
| engagement.logicalAddress | String | 1..1 | Enligt tjänstedomänens dokumentation. |
| engagement.businessObjectInstanceIdentifier | String | 1..1 | Enligt tjänstedomänens dokumentation. |
| engagement.clinicalProcessInterestId | String | 0..1 | Enligt tjänstedomänens dokumentation. |
| engagement.mostRecentContent | TS | 0..1 | YYYYMMDDhhmmss |
| engagement.sourceSystem | HSA-id | 1..1 | Källsystemet som innehåller den information som EI-posten pekar ut. I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen. |
| engagement.creationTime | TS | 1..1 | YYYYMMDDhhmmss |
| engagement.updateTime | TS | 0..1 | YYYYMMDDhhmmss |
| engagement.dataController | String | 1..1 | Identitet för den PUA som ansvarar för postens innehåll. I första hand organisationsnummer eller HSA-id för den PUA som ansvarar för postens innehåll. |
| engagement.owner | HSA-id | 1..1 | HSA-id för den organisations vars index tog emot uppdateringsbegäran. |

### 7.1.5 Övriga regler

**Konsumentregler:**

* **kR1:** För den nationella EI-instansen är åtkomst till tjänsten FindContent begränsad till aggregerande tjänster realiserade i den nationella aggregeringsplattformen.
* **kR2:** Tjänstekonsumenter ska inte spara innehållet i svaret för senare användning utan ska hämta relaterade poster från källsystemen och behandla dessa i enlighet med syftet.

**Producentregler:**

* **pR1 (producent):** Engagemangsindex validerar begäran enligt regler som specificerats per attribut. Felaktigheter betraktas som programmeringsfel hos tjänstekonsument och signaleras som tekniskt fel.
* **pR2 (producent):** Attribut som anges i begäran används för att filtrera svaret till poster som har exakt matchning.

### 7.1.6 Logiska fel

| Kod | Beskrivning |
|-----|-------------|
| OK | Transaktionen har utförts enligt uppdraget i frågemeddelandet. |
| INFO | Transaktionen har utförts enligt uppdraget i frågemeddelandet, men det finns ett meddelande med ytterligare information. |
| ERROR | Transaktionen har INTE kunnat utföras enligt uppdrag i frågemeddelandet p.g.a. logiskt fel. |

---

## 7.2 Update

### 7.2.1 Version

Version: 1.0

RIV-TA namnrymd: `urn:riv:itintegration:engagementindex:Update:1`

### 7.2.2 Beskrivning

Definierar en tjänst som konsumenter kan använda för att uppdatera en engagemangsindexinstans. Med hjälp av uppdateringskontraktet (Update) kan källsystem (vårddokumentationssystem, tidbokningssystem m.fl.) skapa indexposter enligt regelverk för respektive tjänstedomän. Kontraktet Update används vid såväl skapande, uppdatering och radering av indexposter.

Svenskt namn: **Uppdatera Engagemangsindex**

### 7.2.3 Gemensamma informationskomponenter

Informationsmodell (avsnitt 5 — Tjänstedomänens meddelandemodeller).

### 7.2.4 Fältregler

**Request — UpdateRequest**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| engagementTransaction | EngagementTransactionType | 1..* | Lista med transaktioner. |
| engagementTransaction.deleteFlag | Boolean | 1..1 | True anger att posten ska tas bort. False anger att posten ska skapas/uppdateras. |
| engagementTransaction.engagement | EngagementType | 1..1 | Engagemangspost. |
| engagementTransaction.engagement.registeredResidentIdentification | Nationell accepterad personidentitet | 1..1 | Enligt formatregler i meddelandemodellen |
| engagementTransaction.engagement.serviceDomain | URN | 1..1 | Namnrymd för Tjänstedomän. Exempel: urn:riv:clinicalprocess:activity:request |
| engagementTransaction.engagement.categorization | String | 1..1 | Enligt tjänstedomänens dokumentation. |
| engagementTransaction.engagement.logicalAddress | String | 1..1 | Enligt tjänstedomänens dokumentation. |
| engagementTransaction.engagement.businessObjectInstanceIdentifier | String | 1..1 | Enligt tjänstedomänens dokumentation. |
| engagementTransaction.engagement.clinicalProcessInterestId | String | 1..1 | Enligt tjänstedomänens dokumentation. |
| engagementTransaction.engagement.mostRecentContent | TS | 0..1 | Enligt tjänstedomänens dokumentation. |
| engagementTransaction.engagement.sourceSystem | HSA-id | 1..1 | Källsystemet som innehåller den information som EI-posten pekar ut. I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen. |
| engagementTransaction.engagement.dataController | String | 1..1 | Identitet för den PUA som ansvarar för postens innehåll. I första hand organisationsnummer eller HSA-id för den PUA, i andra hand en källsystemsintern identitet för PUA. |

> **Notering:** Fälten `creationTime`, `updateTime` och `owner` ska INTE inkluderas i Update-begäran — de genereras av engagemangsindex. Dessa fält finns i den underliggande XSD-typen EngagementType men är inte avsedda för konsumenten att fylla i vid Update-anrop.

**Response — UpdateResponse**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| ResultCode | Kodverk | 1..1 | Status enligt generell regel. |
| comment | String | 0..1 | Meddelande enligt generell regel |

### 7.2.5 Övriga regler

**Konsumentregler:**

* **kR1:** Alla poster i en begäran måste vara sinsemellan unika med avseende på de element som är del av postens unikhet. Om duplikat hittas returneras ResultCode ERROR.
* **kR2:** För poster som ska raderas ska deleteFlag sättas till true.
* **kR3:** Om tjänstekonsumenten vid anrop har mer än 1 post så bör dessa paketeras i samma anrop. Max antal poster per anrop avgörs av respektive instans (nationellt: 1000).
* **kR4:** Hantering av lokala reservidentiteter — när en lokal reservidentitet kopplas till nationellt accepterad personidentitet ska EI-poster skapas.

**Producentregler:**

* **pR1–pR7 (producent):** Se fullständiga regler i teknisk beskrivning.

### 7.2.6 Logiska fel

| Kod | Beskrivning |
|-----|-------------|
| OK | Transaktionen har utförts enligt uppdraget i frågemeddelandet. |
| INFO | Transaktionen har utförts enligt uppdraget i frågemeddelandet, men det finns ett meddelande med ytterligare information. |
| ERROR | Transaktionen har INTE kunnat utföras enligt uppdrag i frågemeddelandet p.g.a. logiskt fel. |

---

## 7.3 ProcessNotification

### 7.3.1 Version

Version: 1.0

RIV-TA namnrymd: `urn:riv:itintegration:engagementindex:ProcessNotification:1`

### 7.3.2 Beskrivning

Syftet med kontraktet är att kunna konsolidera indexinformation från flera index. Engagemangsindex agerar i rollen som tjänsteproducent för att ta emot information om förändringar i ett annat engagemangsindex. Engagemangsindex agerar som tjänstekonsument för att skicka förändringar till andra engagemangsindex. Kontraktet används för konsolidering av indexinformation från lokala instanser till nationell instans.

Svenskt namn: **Notifiering om indexuppdateringar**

> **Viktig notering (v1.0.9):** Nationellt engagemangsindex agerar fr.o.m. version 1.0.9 **enbart som producent** (mottagare) av ProcessNotification. Nationellt engagemangsindex skickar inte längre ProcessNotification till lokala index eller verksamhetssystem. Det är lokala engagemangsindex som agerar konsument och skickar till nationellt index.

### 7.3.3 Gemensamma informationskomponenter

Informationsmodell (avsnitt 5 — Tjänstedomänens meddelandemodeller).

### 7.3.4 Fältregler

**Request — ProcessNotificationRequest**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| engagementTransaction | EngagementTransactionType | 1..* | Lista med transaktioner. |
| engagementTransaction.deleteFlag | Boolean | 1..1 | "true" anger att posten ska tas bort. False anger att posten ska skapas/uppdateras. |
| engagementTransaction.engagement | EngagementType | 1..1 | Engagemangspost. |
| engagementTransaction.engagement.registeredResidentIdentification | Nationell accepterad personidentitet | 1..1 | Enligt formatregler i meddelandemodell |
| engagementTransaction.engagement.serviceDomain | URN | 1..1 | Namnrymd för Tjänstedomän. Exempel: urn:riv:clinicalprocess:activity:request |
| engagementTransaction.engagement.categorization | String | 1..1 | Enligt tjänstedomänens dokumentation. |
| engagementTransaction.engagement.logicalAddress | String | 1..1 | Enligt tjänstedomänens dokumentation. |
| engagementTransaction.engagement.businessObjectInstanceIdentifier | String | 1..1 | Enligt tjänstedomänens dokumentation. |
| engagementTransaction.engagement.clinicalProcessInterestId | HSA-id | 1..1 | Enligt tjänstedomänens dokumentation. |
| engagementTransaction.engagement.mostRecentContent | TS | 0..1 | Enligt tjänstedomänens dokumentation. |
| engagementTransaction.engagement.sourceSystem | HSA-id | 1..1 | Källsystemet som innehåller den information som EI-posten pekar ut. I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen. |
| engagementTransaction.engagement.creationTime | TS | 1..1 | YYYYMMDDhhmmss |
| engagementTransaction.engagement.updateTime | TS | 1..1 | YYYYMMDDhhmmss |
| engagementTransaction.engagement.dataController | String | 1..1 | Identitet för den PUA som ansvarar för postens innehåll. I första hand organisationsnummer eller HSA-id för den PUA, i andra hand en källsystemsintern identitet för PUA. |
| engagementTransaction.engagement.owner | HSA-id | 1..1 | HSA-id för den organisations vars index tog emot ursprunglig uppdateringsbegäran. |

**Response — ProcessNotificationResponse**

| Fält | Typ | Kardinalitet | Beskrivning |
|------|-----|--------------|-------------|
| ResultCode | Kodverk | 1..1 | Status enligt generell regel. |
| comment | String | 0..1 | Meddelande enligt generell regel |

### 7.3.5 Övriga regler

**Konsumentregler:**

* **kR1 (konsument):** Innehållet i begäran ska exakt spegla begäran i ursprunglig Update, förutom att även owner, creationTime, updateTime ska anges.
* **kR2 (konsument):** För poster som ska tas bort sätts deleteFlag = true.

**Producentregler:**

* **pR1 (producent):** Producenten ska inte generera fälten owner, creationTime och updateTime själv utan använda de värdena som finns i begäran.
* **pR2 (producent):** För poster med deleteFlag = true ska borttag göras.
* **pR3 (producent):** Efter framgångsrik lagring ska producenten notifiera prenumeranter.
* **pR4 (producent):** Om notifiering mottas där owner är samma som instansen ska ingen uppdatering eller notifiering ske (undvika rundgång).

### 7.3.6 Logiska fel

| Kod | Beskrivning |
|-----|-------------|
| OK | Transaktionen har utförts enligt uppdraget i frågemeddelandet. |
| INFO | Transaktionen har utförts enligt uppdraget i frågemeddelandet, men det finns ett meddelande med ytterligare information. |
| ERROR | Transaktionen har INTE kunnat utföras enligt uppdrag i frågemeddelandet p.g.a. logiskt fel. |
