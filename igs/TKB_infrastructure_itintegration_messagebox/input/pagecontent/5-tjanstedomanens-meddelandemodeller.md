# 5 Tjänstedomänens meddelandemodeller

Källa: *Tjänstekontraktsbeskrivning Meddelandetjänst*, version 1.0.0 (2013-12-04), [Tjanstekontrakt_Meddelandetjanst_Beskrivning.doc](Tjanstekontrakt_Meddelandetjanst_Beskrivning.doc).

Här beskrivs den meddelandemodell som tjänstekontrakten bygger på. All information i modellen beskriver metainformation kring ett meddelande som hanteras i Meddelandetjänsten. Denna metainformation är inte relevant att mappa mot V-TIM 2.2 då den enbart består av enkla datatyper.

### 5.1 Lista, hämta och ta bort meddelande

![Figur 4. Meddelandemodell](fig6-meddelandemodell.jpg)

*Figur 4. Meddelandemodell*

### 5.2 Format regler

#### 5.2.1 Datum

Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”. Exempel: 2010-11-26

#### 5.2.2 Datum och Tid

Tid och datum anges alltid på formatet ”ÅÅÅÅ-MM-DDThh:mm:ss”. Exempel: 2010-11-26T09:12:33

#### 5.2.3 Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Kodverk

Uppräkningarna i schemat är modellerade som kodverk:

| Kodverk | Koder | CodeSystem | ValueSet |
|---|---|---|---|
| Meddelandestatus (`MessageStatusType`) | RECEIVED, RETRIEVED, DELETED | [messagebox-messagestatus-cs](CodeSystem-messagebox-messagestatus-cs.html) | [messagebox-messagestatus-vs](ValueSet-messagebox-messagestatus-vs.html) |
| Resultatkod (`ResultCodeEnum`) | OK, ERROR, INFO | [messagebox-resultcode-cs](CodeSystem-messagebox-resultcode-cs.html) | [messagebox-resultcode-vs](ValueSet-messagebox-resultcode-vs.html) |

### Typer i domänschemat

Genererat ur [infrastructure_itintegration_messagebox_1.0.xsd](infrastructure_itintegration_messagebox_1.0.xsd).

#### MessageMetaType

Domänschema `infrastructure_itintegration_messagebox_1.0.xsd` (namnrymd `urn:riv:infrastructure:itintegration:messagebox:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| messageId | long |  | 1..1 |
| targetOrganization | LogicalAddressType |  | 1..1 |
| serviceContractType | string |  | 1..1 |
| messageSize | long |  | 1..1 |
| arrivalTime | dateTime |  | 1..1 |
| status | MessageStatusType |  | 1..1 |

#### ResponseType

Domänschema `GetMessagesResponder_1.0.xsd` (namnrymd `urn:riv:infrastructure:itintegration:messagebox:GetMessagesResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| messageId | long |  | 1..1 |
| targetOrganization | LogicalAddressType |  | 1..1 |
| serviceContractType | ServiceContractType | Type which describes a service contract. Used in interaction GetSupportedServiceContracts. | 1..1 |
| message | string |  | 1..1 |

#### ResultType

Domänschema `infrastructure_itintegration_messagebox_1.0.xsd` (namnrymd `urn:riv:infrastructure:itintegration:messagebox:1`).

Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är "INFO" eller ERROR kan information skickas i errorId och/eller errorMessage.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | ResultCodeEnum |  | 1..1 |
| errorId | int |  | 0..1 |
| errorMessage | string |  | 0..1 |

#### ServiceContractType

Domänschema `itintegration_registry_1.0.xsd` (namnrymd `urn:riv:itintegration:registry:1`).

Type which describes a service contract. Used in interaction GetSupportedServiceContracts.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| ServiceContractNamespace | anyURI |  | 1..1 |
