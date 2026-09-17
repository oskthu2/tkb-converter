# 7 Tjänstekontrakt - itintegration: monitoring v1

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

## Tjänstekontrakt

### PingForConfiguration

#### Frivillighet

Alla tjänstekomponenter som exponerar RIVTA 2.1-kontrakt ska — utöver de funktionella kontrakten — exponera en producent för detta kontrakt.

Syftet med tjänsten är att alla (andra) tjänstedomäner ska kunna övervakas och felsökas genom ett enhetligt gränssnitt och att detta gränssnitt ska kunna nås även via en virtuell tjänst.

#### Version

1.0

#### SLA-krav

Inledande beskrivning:

| | | |
| :--- | :--- | :--- |
| Svarstid | < 500 ms |   |
| Tillgänglighet | Samma som för det del-system som övervakas. |   |
| Last | Riktvärde är ett anrop var 5:e minut. Detta beror på graden av övervakning. |   |
| Aktualitet | Absolut aktualitet. Konfigurationsinformation som returneras ska i realtid spegla konfigurationen för komponenten som producerade svaret. |   |

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| serviceContractNamespace | anyURI (dvs string) | Namnrymd för det tjänstekontrakt som Ping-anropet avser. Denna information behöver inte bearbetas av tjänsteproducenten. Den är till för att Ping-anrop ska kunna göras via tjänsteplattformar. | 1..1 |
| logicalAddress | anyURI (dvs string) | Logisk adress som Ping-anropet avser. Denna information behöver inte bearbetas av tjänsteproducenten. Den är till för att Ping-anrop ska kunna göras via tjänsteplattformar. | 1..1 |
| Svar |   |   |   |
| version | string | Version av den tjänstekomponent som svarar. Formatet och semantik är specifikt för respektive tjänsteproducent. | 1..1 |
| pingDateTime | TS (tidsformat, se avsnitt 4) | Datum och klockslag när ett svar skapades, på tidigare angivet tidsformat, ned på sekundnivå. Exempel: 20110311121021 | 1..1 |
| configuration | ConfigurationType | Lista med värden av miljövariabler från den svarande tjänstekomponenten. Ta med så mycket som möjligt som kan vara till hjälp vid felsökning och dialog kring vilken version som "finns i andra änden". Exempel kan vara JVM/.Net-version, operativsystem. | 0..* |
| configuration.name | string | Namn på miljövariabel | 1..1 |
| configuration.value | string | Värde på miljövariabel | 1..1 |

#### Exempel-begäran

Nedan följer ett exempel för en begäran som syftar till att anropa PingForConfiguration för en TGP-tjänst.

```
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
  <soapenv:Header xmlns:ir="urn:riv:itintegration:registry:1">
    <ir:LogicalAddress>SE165565594230-1000</ir:LogicalAddress>
  </soapenv:Header>
  <soapenv:Body>
    <tns:PingForConfiguration xmlns:tns="urn:riv:itintegration:monitoring:PingForConfigurationResponder:1">
      <tns:serviceContractNamespace>urn:riv:ehr:accesscontrol:AssertCareEngagementResponder:1</tns:serviceContractNamespace>
      <tns:logicalAddress>PDL-vårdgivare-hsaid#PDL-vårdenhetsid</tns:logicalAddress>
    </tns:PingForConfiguration>
  </soapenv:Body>
</soapenv:Envelope>

```

…där `<PDL-vårdgivare-hsaid>#<PDL-vårdenhetsid>` är den logiska adress som konsumenten skulle skickat i headern för att nå den riktiga tjänsten. Genom att istället skicka detta tillsammans med den riktiga tjänstens namnrymd som payload kan en mellanliggande tjänsteplattform, via information i dess tjänsteadresseringskatalog, hitta information om vilken pingtjänst som gäller för en specifik TGP-tjänst.

#### Övriga regler

R1: Varje versionshanterad modul/tjänstekomponent som publicerar en eller flera RIVTA 2.1-tjänster (andra tjänstekontrakt än detta) ska exponera en producent för tjänstekontrakt.

R2: Tjänsten ska om möjligt interagera med underliggande datalager i syfte att i så hög grad som möjligt påvisa om de funktionella tjänsterna är tillgängliga eller inte. Det kan t.ex. ske genom att anropa samma underliggande kod som för en av tjänstedomänens frågetjänster med ett reserverat test-id som sökparameter.

#### Tjänsteinteraktion

PingForConfigurationInteraction

#### 7.1 Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [PingForConfigurationInteraction_1.0_RIVTABP21.wsdl](PingForConfigurationInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt (RIVTA Basic Profile 2.1) |
| [PingForConfigurationInteraction_1.0_RIVTABP20.wsdl](PingForConfigurationInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt (RIVTA Basic Profile 2.0) |
| [PingForConfigurationResponder_1.0.xsd](PingForConfigurationResponder_1.0.xsd) | Tjänstespecifikt schema |
| [itintegration_monitoring_1.0.xsd](itintegration_monitoring_1.0.xsd) | Domänschema (delat, definierar TS-tidsformatet) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Delat schema (LogicalAddress i SOAP-header) |
| [ws-addressing-1.0.xsd](ws-addressing-1.0.xsd) | Delat schema (WS-Addressing) |

#### 7.1 FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/pingforconfiguration](StructureDefinition-pingforconfiguration.md)

**Request-modell: ej skapad som egen logisk modell — requesten innehåller endast två filterfält (`serviceContractNamespace`, `logicalAddress`) som dokumenteras i fältregeltabellen ovan.**

