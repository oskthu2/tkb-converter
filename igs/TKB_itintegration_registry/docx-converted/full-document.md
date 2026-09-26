
ME03 - Slutrapport

Itintegration - registry

Tjänstekontrakt

Version A

2012-04-14

Utgåvehistorik

| Revision Nr | Revision Datum | Kort beskrivning av ändring | Ändringarna gjorda av | Granskad av |
|---|---|---|---|---|
| PA1 | 2010-09-20 | Första version | Mats Ekhammar, Callista Enterprise AB |  |
| PA2 | 2010-10-16 | Broderat ut texterna. | Johan Eltes, Callista Enterprise AB |  |
| PA3 | 2011-01-22 | Lagt till tjänsten GetLogicalAddresseesByServiceContract | Johan Eltes, Callista Enterprise AB |  |
| A | 2012-04-14 | Release. |  | Cehis Arkitektur-ledning |

Innehållsförteckning

# 1 Inledning

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen itintegration:registry (huvuddomän ”itintegration”, underdomän ”registry”). Tjänstedomänen omfattar infromationsstrukturer och tjänster för åtkomst och hantering av tjänstedressringsinformation. Tjänsteadressering syftar på den i t-boken beskrivna logiska komponenten tjänsteadresseringskatalog och den roll den spelar i den nationella arkitekturen.

Tjänstekontraktsbeskrivningen är ett teknisk-oberoende, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt . Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

# 2 Informationsmodell

Tjänstekontrakten i denna tjänstedomän speglar T-bokens tjänsteadresseringsmodell. En tjänsteproducent ska hantera tjänsteadresseringsinformation på ett sätt som speglar följande informationsmodell:

![Figur 1](IMG01)

| Klass | Beskrivning | Kodverk |  |
|---|---|---|---|
| RIVTAProfil | RIVTA-Profil. Namnges med aktuell profils kortnamn (se kodverk). | Definieras av RIVTA-förvaltningen. Dokumenteras på av förvaltningen anvisad plats. När denna text skrevs förvaltas RIVTA av Cehis tekniska expertgrupp på projektplatsen http://code.google.com/p/rivta/ |  |
| Tjänstekontrakt | Tjänstekontraktets namnrymd enligt tjänsteschema. Namnrymden omfattar både tjänstedomän och tjänstens namn. | Uppbyggnaden av namnrymd definieras av anvisning för Tjänsteschema (del av RIV TA). <br> Tjänstedomänen fastställs av RIVTA-förvaltningen. |  |
| Logisk adressat |  | Konceptet definieras av T-boken. Identifierare och innebörd beslutas per tjänstedomän och dokumenteras i respektive tjänstedomäns tjänstekontraktsbeskrivning. |  |
| Tjänste-komponent | Ett begrepp för en mjukvarukomponent som driftsätts i syfte att publicera en tjänstekomponent eller att konsumera en tjänst. Multiplicitet och regler för attributen beror av roll (konsument/producent). | Kodverk saknas på nationell nivå. Landsting och leverantörer har olika angreppssätt för namnsättning och katalogisering av komponenter i sitt systemlandskap. |  |
| Anrops-behörighet | En relationsklass som bygger upp en behörighet för en tjänstekonsument (Tjänstekomponent i rollen konsument) att anropa en tjänsteproducent genom att den associeras till en Logisk Adressat (t.ex. en vårdenhet) och ett Tjänstekontrakt (t.ex. ”urn:riv:crm:scheduling:MakeBookingResponder:1”. Behörigheten är löst kopplad till tjänsteproducenten. En vårdenhet som erbjuder direktbokning via Mina Vårdkontakter kan därmed byta tjänsteproducent (bokningssystem) utan att anropsbehörigheten påverkas. |  |  |
| Logisk adress | En relationsklass som beskriver en addresserbar tjänst. En adresserbar tjänst har ett Tjänstekontrakt som tillgängliggörs av en Logisk Adressat (en verksamhet) genom dess tjänsteproducent (Tjänstekomponent i rollen tjänsteproducent) enligt en viss RIVTA-profil. |  |  |

# 3 Versionsinformation

Denna revision av tjänstekontraktsbeskrivningen handlar om version 1.0. Det betyder att alla tjänstekontrakt är version 1.0.

## 3.1 Oförändrade tjänstekontrakt

Följande tjänstekontrakt har inte förändrats mellan version 1.0 och 1.1:

<aktuellt först vid nästa under-version>

## 3.2 Nya tjänstekontrakt

Följande tjänstekontrakt finns från och med version 1.1:

<aktuellt först vid nästa under-version>

## 3.3 Förändrade tjänstekontrakt

Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

<aktuellt först vid nästa under-version>

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
|---|---|---|---|
| GetLogicalAddresseesByServiceContract | 1.1 | 1.0 |  |
|  | 1.0 | 1.1 |  |
| GetSupportedServiceContracts | 1.1 | 1.0 |  |
|  | 1.0 | 1.1 |  |

## 3.4 Utgångna tjänstekontrakt

Följande tjänstekontrakt har utgått:

<aktuellt först vid nästa under-version>

# 4 Generella regler

## 4.1 Format för personidentitet

Personidentitet anges på formatet ÅÅÅÅMMDD-XXXX. Samma format gäller för olika typer av personidentiteter(reservnummer mm), dvs 8 siffror, bindestreck samt 4 siffror.

## 4.2 Format för Datum

Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”. Exempel: 2010-11-26

## 4.3 Format för Datum och Tid

Tid och datum anges alltid på formatet ”ÅÅÅÅ-MM-DDThh:mm:ss”. Exempel: 2010-11-26T09:12:33

## 4.4 Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

## 4.5 Stöd för Ping-tjänst

Den tjänstekomponent som är tjänsteproducent för ett eller flera av tjänstekontrakten i denna tjänstedomän ska också erbjuda en tjänst enligt tjänstekontraktet urn:riv:itintegration:monitoring:PingForConfiguration:1. Det kan hämtas här (se rubriken ”Tjänsteövervakning”): http://code.google.com/p/rivta/

# 5 SLA-krav

Följande generella SLA-krav gäller för tjänsteproducenter av dessa tjänstekontrakt:

| Kategori | Krav |
|---|---|
| Svarstid | < 1 sekund för 95% av alla anrop |
| Tillgänglighet | 24x7, 99,5% |
| Last | 1 transakation per sekund |
| Aktualitet | Online mot underliggande lagringstjänst. |

# 6 GetLogicalAddresseesByServiceContract

Tjänsten returnerar en lista över logiska adressater som har en tjänsteproducent för angivet tjänstekontrakt (namnrymd) och som har anropsbehörighet för angiven tjänstekonsument (hsa-id).

Ett tänkt syfte med denna tjänst är att konsumenter med behov av att vidarebefordra anrop till alla producenter av ett specifikt tjänstekontrakt ska kunna använda tjänsten för att fastställa vilka logiska adressater som erbjuder angiven tjänst.

## 6.1 Begäran (Request) och Svar (Response)

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| serviceConsumerHsaId | HSAid | Tjänstekonsument mot vars anropsbehörighet svaret filtreras. | 1..1 |
| serviceContractNameSpace | urn | Det tjänstekontrakt som frågan gäller | 1..1 |
| Svar |  |  |  |
| logicalAddress | Text | Tjänstekontrakt som stöds av angiven tjänstekonsument vid tidpunkten för anropet av GetSupportedServiceContracts. | 0..* |

## 6.2 Regler

R1: Producenten ska filtrera svaret så att det endast innehåller de logiska adresser som angiven konsument har rättighet att adressera för angivet tjänstekontrakt (vid tidpunkten för anropet av GetLogicalAddresseesByServiceContract).

## 6.3 Tjänsteinteraktion

GetSupportedServiceContractsInteraction

# 7 GetSupportedServiceContracts

Tjänsten returnerar en lista över tjänstekontrakt (namnrymder) som stöds av en specifik logisk adressat. Varje huvudversion uppträder som ett eget tjänstekontrakt (namnrymd).

Ett tänkt syfte med denna tjänst är att konsumenter med avancerad process-logik ska kunna använda tjänsten för att fastställa vilka tjänstkontrakt (eller huvudversioner av tjänster) som stöds av t.ex. en viss vårdenhet. Det är framför allt intressant för konsumenter av tjänstedomäner där vissa tjänstekontrakt är frivilliga att realisera. Om en logisk adressat (verksamhet så som vårdenhet) saknar stöd för ett av domänens frivilla tjänstekontrakt blir det underlag för hur den konsumerande e-tjänsten ska styra sitt flöde.

## 7.1 Begäran (Request) och Svar (Response)

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| serviceConsumerHsaId | hsaId | Tjänstekonsument. Svaret innehåller bara de tjänstekontrakt som denna konsument har rättighet att använda mot angiven logisk adress. | 1..1 |
| logicalAdress | Text | Typ och betydelse definieras per tjänstedomän. | 1..1 |
| Svar |  |  |  |
| serviceContractNamespace | urn | Tjänstekontrakt som stöds av angiven logisk adress vid tidpunkten för anropet av GetSupportedServiceContracts. | 0..* |

## 7.2 Regler

R1: Producenten ska filtrera svaret så att det endast innehåller de tjänstekontrakt som angiven konsument har rättighet att använda för angiven logisk adressat.

## 7.3 Tjänsteinteraktion

GetSupportedServiceContractsInteraction

| Slutrapport | ![Figur 2](IMG02) | Dok.beteckning |
|---|---|---|
| Målbild och färdplan |  | Utgåva PA5 |
| CeHis Arkitekturledning |  | Sida: 68 (23) |
| 2012-04-13 |  |  |

| Tjänsteplattforms-förvaltningen | ![Figur 3](IMG03) | Dok.beteckning |
|---|---|---|
| Tjänstekontrakt |  | Utgåva A |
|  |  | Sida: 3 (11) |
| Utskriftsdatum: 2012-04-13 |  |  |

Sida 68 (23)
