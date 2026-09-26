# 7 Tjänstekontrakt

Källa: *Itintegration - registry, Tjänstekontrakt*, utgåva A (2012-04-14), [Tjanstekontrakt_Itintegration_Registry_Beskrivning.doc](Tjanstekontrakt_Itintegration_Registry_Beskrivning.doc).

Tjänstekontraktsbeskrivningen beskriver kontrakten i avsnitt 6 och 7. I denna IG ligger de under avsnitt 7: 7.1 = TKB 6 och 7.2 = TKB 7.

### GetLogicalAddresseesByServiceContract

*TKB avsnitt 6.*

Tjänsten returnerar en lista över logiska adressater som har en tjänsteproducent för angivet tjänstekontrakt (namnrymd) och som har anropsbehörighet för angiven tjänstekonsument (hsa-id).

Ett tänkt syfte med denna tjänst är att konsumenter med behov av att vidarebefordra anrop till alla producenter av ett specifikt tjänstekontrakt ska kunna använda tjänsten för att fastställa vilka logiska adressater som erbjuder angiven tjänst.

#### 7.1.1 Begäran (Request) och Svar (Response)

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| serviceConsumerHsaId | HSAid | Tjänstekonsument mot vars anropsbehörighet svaret filtreras. | 1..1 |
| serviceContractNameSpace | urn | Det tjänstekontrakt som frågan gäller | 1..1 |
| Svar |  |  |  |
| logicalAddress | Text | Tjänstekontrakt som stöds av angiven tjänstekonsument vid tidpunkten för anropet av GetSupportedServiceContracts. | 0..* |

#### 7.1.2 Regler

R1: Producenten ska filtrera svaret så att det endast innehåller de logiska adresser som angiven konsument har rättighet att adressera för angivet tjänstekontrakt (vid tidpunkten för anropet av GetLogicalAddresseesByServiceContract).

#### 7.1.3 Tjänsteinteraktion

GetSupportedServiceContractsInteraction

#### 7.1.4 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 8](8-datatyper.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| serviceConsumerHsaId | HsaIdType |  | 1..1 |
| serviceContractNameSpace | ServiceContractNamespaceType | Type which describes a service contract. | 1..1 |
| ../ServiceContractNamespace | anyURI |  | 1..1 |
| **Svar** | | | |
| logicalAddress | LogicalAddressType |  | 0..* |

#### 7.1.5 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetLogicalAddresseesByServiceContractInteraction  
Beskrivning:  
Service to query a registry for all logical addressees supporting a specific service contract authorized for a specified consumer at the time of invokation.  
Revisioner:  
Tjänstedomän: itintegration:registry  
Tjänsteinteraktionstyp: Fråga-Svar  
WS-profil: RIVTABP21  
Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:itintegration:registry:GetLogicalAddresseesByServiceContractResponder:1:GetLogicalAddresseesByServiceContract`

#### 7.1.6 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetLogicalAddresseesByServiceContractInteraction_1.0_RIVTABP21.wsdl](GetLogicalAddresseesByServiceContractInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetLogicalAddresseesByServiceContractResponder_1.0.xsd](GetLogicalAddresseesByServiceContractResponder_1.0.xsd) | Tjänsteschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Domänschema (LogicalAddress, ServiceContractType) |
| [GetLogicalAddresseesByServiceContractResponder_1.0.xml](GetLogicalAddresseesByServiceContractResponder_1.0.xml) | Exempelmeddelande (XML) |
| [GetLogicalAddresseesByServiceContractResponder_Response_1.0.xml](GetLogicalAddresseesByServiceContractResponder_Response_1.0.xml) | Exempelmeddelande (XML) |

#### 7.1.7 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getlogicaladdresseesbyservicecontract-request](StructureDefinition-getlogicaladdresseesbyservicecontract-request.html)
* **Logisk modell (response):** [StructureDefinition/getlogicaladdresseesbyservicecontract](StructureDefinition-getlogicaladdresseesbyservicecontract.html)

### GetSupportedServiceContracts

*TKB avsnitt 7.*

Tjänsten returnerar en lista över tjänstekontrakt (namnrymder) som stöds av en specifik logisk adressat. Varje huvudversion uppträder som ett eget tjänstekontrakt (namnrymd).

Ett tänkt syfte med denna tjänst är att konsumenter med avancerad process-logik ska kunna använda tjänsten för att fastställa vilka tjänstkontrakt (eller huvudversioner av tjänster) som stöds av t.ex. en viss vårdenhet. Det är framför allt intressant för konsumenter av tjänstedomäner där vissa tjänstekontrakt är frivilliga att realisera. Om en logisk adressat (verksamhet så som vårdenhet) saknar stöd för ett av domänens frivilla tjänstekontrakt blir det underlag för hur den konsumerande e-tjänsten ska styra sitt flöde.

#### 7.2.1 Begäran (Request) och Svar (Response)

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| serviceConsumerHsaId | hsaId | Tjänstekonsument. Svaret innehåller bara de tjänstekontrakt som denna konsument har rättighet att använda mot angiven logisk adress. | 1..1 |
| logicalAdress | Text | Typ och betydelse definieras per tjänstedomän. | 1..1 |
| Svar |  |  |  |
| serviceContractNamespace | urn | Tjänstekontrakt som stöds av angiven logisk adress vid tidpunkten för anropet av GetSupportedServiceContracts. | 0..* |

#### 7.2.2 Regler

R1: Producenten ska filtrera svaret så att det endast innehåller de tjänstekontrakt som angiven konsument har rättighet att använda för angiven logisk adressat.

#### 7.2.3 Tjänsteinteraktion

GetSupportedServiceContractsInteraction

#### 7.2.4 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 8](8-datatyper.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| serviceConsumerHsaId | HsaIdType |  | 1..1 |
| logicalAdress | LogicalAddressType |  | 1..1 |
| **Svar** | | | |
| serviceContractNamespace | ServiceContractNamespaceType | Type which describes a service contract. | 0..* |
| ../ServiceContractNamespace | anyURI |  | 1..1 |

#### 7.2.5 Tjänsteinteraktion enligt WSDL



SOAPAction: `urn:riv:itintegration:registry:GetSupportedServiceContractsResponder:1:GetSupportedServiceContracts`

#### 7.2.6 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetSupportedServiceContractsInteraction_1.0_RIVTABP21.wsdl](GetSupportedServiceContractsInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetSupportedServiceContractsResponder_1.0.xsd](GetSupportedServiceContractsResponder_1.0.xsd) | Tjänsteschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Domänschema (LogicalAddress, ServiceContractType) |
| [GetSupportedServiceContractsResponder_1.0.xml](GetSupportedServiceContractsResponder_1.0.xml) | Exempelmeddelande (XML) |
| [GetSupportedServiceContractsResponderResponse_1.0.xml](GetSupportedServiceContractsResponderResponse_1.0.xml) | Exempelmeddelande (XML) |

#### 7.2.7 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getsupportedservicecontracts-request](StructureDefinition-getsupportedservicecontracts-request.html)
* **Logisk modell (response):** [StructureDefinition/getsupportedservicecontracts](StructureDefinition-getsupportedservicecontracts.html)

