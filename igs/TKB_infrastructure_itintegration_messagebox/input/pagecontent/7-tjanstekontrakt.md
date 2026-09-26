# 7 Tjänstekontrakt

Källa: *Tjänstekontraktsbeskrivning Meddelandetjänst*, version 1.0.0 (2013-12-04), [Tjanstekontrakt_Meddelandetjanst_Beskrivning.doc](Tjanstekontrakt_Meddelandetjanst_Beskrivning.doc).

Tjänstekontraktsbeskrivningen beskriver tjänstekontrakten i avsnitt 6. I denna IG ligger de under avsnitt 7, i samma ordning (7.1 = TKB 6.1 osv.).

### ListMessages

*TKB avsnitt 6.1.*

Tjänsten listar meddelanden som finns i Meddelandetjänsten.

#### 7.1.1 Version

1.0

#### 7.1.2 Fältregler

Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
|---|---|---|---|
| Begäran |  |  |  |
| targetOrganizations | string | Verksamheter | 0..n |
| serviceContractTypes | string | Tjänstekontrakt | 0..n |
| Svar |  |  |  |
| result |  | Resultat | 1..1 |
| result.code | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.errorId | int | Enda möjliga är 1=INTERNAL | 0..1 |
| result.errorMessage | string | Text som ytterliggare beskriver felet | 0..1 |
| messageMetas |  |  | 0..n |
| messageMetas.messageId | long | Meddelandeidentitet | 1..1 |
| messageMetas.targetOrganization | logicalAdressType | Verksamhet | 1..1 |
| messageMetas.serviceContractType | ServiceContractType | Tjänstekontrakt | 1..1 |
| messageMetas.messageSize | long | Meddelandestorlek (bytes) | 1..1 |
| messageMetas.arrivalTime | dateTime | Ankomsttid för meddelandet | 1..1 |
| messageMetas.status | MessageStatusType | Status på meddelandet | 1..1 |

#### 7.1.3 Övriga regler

##### 7.1.3.1 ResultCode ERROR, errorId INTERNAL

Returneras vid ett internt fel hos hos tjänsteproducenten, errorMessage beskriver ytterliggare felet.

#### 7.1.4 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 5](5-tjanstedomanens-meddelandemodeller.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| targetOrganizations | LogicalAddressType |  | 0..* |
| serviceContractTypes | ServiceContractType | Type which describes a service contract. Used in interaction GetSupportedServiceContracts. | 0..* |
| ../ServiceContractNamespace | anyURI |  | 1..1 |
| **Svar** | | | |
| result | ResultType | Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är "INFO" eller ERROR kan information skickas i errorId och/eller errorMessage. | 1..1 |
| ../code | ResultCodeEnum |  | 1..1 |
| ../errorId | int |  | 0..1 |
| ../errorMessage | string |  | 0..1 |
| messageMetas | MessageMetaType |  | 0..* |
| ../messageId | long |  | 1..1 |
| ../targetOrganization | LogicalAddressType |  | 1..1 |
| ../serviceContractType | string |  | 1..1 |
| ../messageSize | long |  | 1..1 |
| ../arrivalTime | dateTime |  | 1..1 |
| ../status | MessageStatusType |  | 1..1 |

#### 7.1.5 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: ListMessagesInteraction  
Beskrivning:  
Request a list of messages queued for the caller  
Revisioner:  
Tjänstedomän: infrastructure:itintegration:messagebox  
Tjänsteinteraktionstyp: Fråga-Svar  
WS-profil: RIVTABP21  
Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:infrastructure:itintegration:messagebox:ListMessagesResponder:1:ListMessages`

#### 7.1.6 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ListMessagesInteraction_1.0_rivtabp21.wsdl](ListMessagesInteraction_1.0_rivtabp21.wsdl) | WSDL (tjänsteinteraktion) |
| [ListMessagesResponder_1.0.xsd](ListMessagesResponder_1.0.xsd) | Tjänsteschema |
| [infrastructure_itintegration_messagebox_1.0.xsd](infrastructure_itintegration_messagebox_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.1.7 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/listmessages-request](StructureDefinition-listmessages-request.html)
* **Logisk modell (response):** [StructureDefinition/listmessages](StructureDefinition-listmessages.html)
* **Kodsystem:** [CodeSystem/messagebox-messagestatus-cs](CodeSystem-messagebox-messagestatus-cs.html) (Meddelandestatus)
* **Kodsystem:** [CodeSystem/messagebox-resultcode-cs](CodeSystem-messagebox-resultcode-cs.html) (Resultatkod)

### GetMessages

*TKB avsnitt 6.2.*

Tjänsten hämtar ett meddelande baserat på en meddelandeidentitet från Meddelandetjänsten.

#### 7.2.1 Version

1.0

#### 7.2.2 Fältregler

Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
|---|---|---|---|
| Begäran |  |  |  |
| messageIds | long | Meddelandeidentiteter | 1..n |
| Svar |  |  |  |
| result |  | Resultat | 1..1 |
| result.code | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.errorId | int | Enda möjliga är 1=INTERNAL | 0..1 |
| result.errorMessage | string | Text som ytterliggare beskriver felet | 0..1 |
| responses |  | Svar | 0..n |
| messageMetas.messageId | long | Meddelandeidentitet | 1..1 |
| messageMetas.targetOrganization | logicalAdressType | Verksamhet | 1..1 |
| messageMetas.serviceContractType | ServiceContractType | Tjänstekontrakt | 1..1 |
| messageMetas.message | string | Ursprungsmeddelandet som en sträng. | 1..1 |

#### 7.2.3 Övriga regler

##### 7.2.3.1 ResultCode ERROR, errorId INTERNAL

Returneras vid ett internt fel hos hos tjänsteproducenten, errorMessage beskriver ytterliggare felet.

##### 7.2.3.2 ResultCode INFO

Returneras om inte alla angivna meddelanden kunde returneras som begärdes i begäran.

#### 7.2.4 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 5](5-tjanstedomanens-meddelandemodeller.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| messageIds | long |  | 1..* |
| **Svar** | | | |
| result | ResultType | Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är "INFO" eller ERROR kan information skickas i errorId och/eller errorMessage. | 1..1 |
| ../code | ResultCodeEnum |  | 1..1 |
| ../errorId | int |  | 0..1 |
| ../errorMessage | string |  | 0..1 |
| responses | ResponseType |  | 0..* |
| ../messageId | long |  | 1..1 |
| ../targetOrganization | LogicalAddressType |  | 1..1 |
| ../serviceContractType | ServiceContractType | Type which describes a service contract. Used in interaction GetSupportedServiceContracts. | 1..1 |
| ../../ServiceContractNamespace | anyURI |  | 1..1 |
| ../message | string |  | 1..1 |

#### 7.2.5 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetMessagesInteraction  
Beskrivning:  
Get messages from the messagebox  
Revisioner:  
Tjänstedomän: infrastructure:itintegration:messagebox  
Tjänsteinteraktionstyp: Fråga-Svar  
WS-profil: RIVTABP21  
Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:infrastructure:itintegration:messagebox:GetMessagesResponder:1:GetMessages`

#### 7.2.6 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetMessagesInteraction_1.0_rivtabp21.wsdl](GetMessagesInteraction_1.0_rivtabp21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetMessagesResponder_1.0.xsd](GetMessagesResponder_1.0.xsd) | Tjänsteschema |
| [infrastructure_itintegration_messagebox_1.0.xsd](infrastructure_itintegration_messagebox_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.2.7 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getmessages-request](StructureDefinition-getmessages-request.html)
* **Logisk modell (response):** [StructureDefinition/getmessages](StructureDefinition-getmessages.html)
* **Kodsystem:** [CodeSystem/messagebox-messagestatus-cs](CodeSystem-messagebox-messagestatus-cs.html) (Meddelandestatus)
* **Kodsystem:** [CodeSystem/messagebox-resultcode-cs](CodeSystem-messagebox-resultcode-cs.html) (Resultatkod)

### DeleteMessages

*TKB avsnitt 6.3.*

Tjänsten tar bort meddelande och som tidigare hämtats(GetMessages). Både begäran och svar består av xml-dokument.

#### 7.3.1 Fältregler

Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
|---|---|---|---|
| Begäran |  |  |  |
| messageIds | long | Meddelandeidentitet | 1..n |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.code | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.errorId | string | Enda möjliga är: <br> 1=INTERNAL, 2=UNREAD_DELETE | 0..1 |
| result.errorMessage | string | Text som ytterliggare beskriver felet | 0..1 |
| deletedIds | long | Meddelandeidentitet | 0..n |

#### 7.3.2 Övriga regler

##### 7.3.2.1 ResultCode ERROR, errorId INTERNAL

Returneras vid ett internt fel hos hos tjänsteproducenten, errorMessage beskriver ytterliggare felet.

##### 7.3.2.2 ResultCode ERROR, errorId UNREAD_DELETE

Returneras då man försöker ta bort meddelanden som ej är lästa.

##### 7.3.2.3 ResultCode INFO

Returneras om inte alla angivna meddelanden kunde tas bort.

#### 7.3.3 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 5](5-tjanstedomanens-meddelandemodeller.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| messageIds | long |  | 1..* |
| **Svar** | | | |
| result | ResultType | Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är "INFO" eller ERROR kan information skickas i errorId och/eller errorMessage. | 1..1 |
| ../code | ResultCodeEnum |  | 1..1 |
| ../errorId | int |  | 0..1 |
| ../errorMessage | string |  | 0..1 |
| deletedIds | long |  | 0..* |

#### 7.3.4 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: DeleteMessagesInteraction  
Beskrivning:  
Delete messages from the messagebox  
Revisioner:  
Tjänstedomän: infrastructure:itintegration:messagebox  
Tjänsteinteraktionstyp: Fråga-Svar  
WS-profil: RIVTABP21  
Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:infrastructure:itintegration:messagebox:DeleteMessagesResponder:1:DeleteMessages`

#### 7.3.5 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeleteMessagesInteraction_1.0_rivtabp21.wsdl](DeleteMessagesInteraction_1.0_rivtabp21.wsdl) | WSDL (tjänsteinteraktion) |
| [DeleteMessagesResponder_1.0.xsd](DeleteMessagesResponder_1.0.xsd) | Tjänsteschema |
| [infrastructure_itintegration_messagebox_1.0.xsd](infrastructure_itintegration_messagebox_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.3.6 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/deletemessages-request](StructureDefinition-deletemessages-request.html)
* **Logisk modell (response):** [StructureDefinition/deletemessages](StructureDefinition-deletemessages.html)
* **Kodsystem:** [CodeSystem/messagebox-messagestatus-cs](CodeSystem-messagebox-messagestatus-cs.html) (Meddelandestatus)
* **Kodsystem:** [CodeSystem/messagebox-resultcode-cs](CodeSystem-messagebox-resultcode-cs.html) (Resultatkod)

