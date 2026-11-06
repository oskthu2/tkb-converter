# 7 Tjänstekontrakt

Källa: *Tjänstekontraktsbeskrivning Vård- och omsorgsutbud*, version 3.0 (2023-04-25), [TKB_supportprocess_serviceprovisioning_healthcareoffering.docx](TKB_supportprocess_serviceprovisioning_healthcareoffering.docx).

Motsvarar TKB kapitel 6 *Tjänstekontrakt* (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### GetOfferingCatalogues

Hämtar information om utbudskataloger, vilken adress de tillhandahålls på och vilka katalogansvariga organisationer som tillhandahåller utbud i respektive katalog.

Katalogansvarig organisation är huvudansvarig organisation för de vård- och omsorgstjänster som de erbjuder. Ett utbud består av en eller flera vård- och omsorgstjänster som erbjuds av en katalogansvarig organisation och som hämtas med kontraktet GetCareServiceOfferings.

#### 7.1.1 Version

2.0

#### 7.1.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Text i kolumnen ’Beskrivning’ som anges på första raden och är fetmarkerad motsvarar den benämning som används i meddelandemodellen.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| providingOrganization | SearchProvidingOrganizationType | Katalogansvarig organisation | 0..1 |
| providingOrganizationId | IIType | Id på katalogansvarig organisation<br/>Id på katalogansvarig organisation<br/>Begränsar sökningen så att endast poster med angivet id för katalogansvarig organisation returneras.<br/>För Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7)<br/>För Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1) | 0..* |
| management | CVType | Ägarform<br/>Begränsar sökningen så att endast poster med angiven ägarform för den katalogansvariga organisationen returneras.<br/>Anges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14].<br/>Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..* |
| publicProvider* | Boolean | Offentlig huvudman<br/>Om satt till ’true’ filtreras sökresultatet så att endast poster returneras där katalogansvarig organisation är en offentlig huvudman. | 0..1 |
| Svar |  |  |  |
| OfferingCatalogue | OfferingCatalogueType | Utbudskatalog | 0..* |
| ../providingOrganization | ProvidingOrganizationType | Katalogansvarig organisation | 1..* |
| ../../id | IIType | Organisation id<br/>Id för den katalogansvariga organisationen. Innehållet i id styrs av vilken typ av organisation det är.<br/>För Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7)<br/>För Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1) | 1..1 |
| ../../name | string | Namn på katalogansvarig organisation. | 1..1 |
| ../../description | DescriptionType | Beskrivning av den katalogansvariga organisationen. Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.<br/>Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../management | CVType | Ägarform<br/>Anger ägarform för den katalogansvariga organisationen.<br/>Anges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14].<br/>Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 |
| ../../publicProvider* | Boolean | Offentlig huvudman<br/>Anger om den katalogansvariga organisationen är en offentlig huvudman.<br/>true = offentlig huvudman | 1..1 |
| ../interaction | InteractionType | Interaktion<br/>Pekar på var utbudskatalogen finns.<br/>En katalogansvarig organisation kan ha flera kataloger med olika systemadresser. | 1..1 |
| ../../logicalAddress | string | Logisk adress<br/>Logisk adress som ska användas vid adressering. | 1..1 |
| ../../name | anyURI | Namn på interaktion | 1..1 |
| ../../majorVersion | int | Den majorversion som stöds | 1..1 |
| ../../minorVersion | int | Den minorversion som stöds | 0..1 |
| ../../rivtaVersion | RIVTAVersionEnum | Rivtaversion<br/>Version av RIVTA [2.0, 2.1] | 1..1 |

#### 7.1.3 Övriga regler

Regel 1:

| management | publicProvider |
| :--- | :--- |
| Region | true |
| Kommun | true |
| Statlig | true |
| Privat | false |
| Övrigt | false |

##### 7.1.3.1 Icke funktionella krav

###### 7.1.3.1.1 SLA-krav

Se generella SLA-krav för tjänstedomänen.

#### 7.1.4 Annan information om kontraktet

Ingen.

#### 7.1.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| providingOrganization | SearchProvidingOrganizationType |  | 0..1 |
| ../providingOrganizationId | IIType |  | 0..* |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../management | CVType |  | 0..* |
| ../../code | string |  | 1..1 |
| ../../codeSystem | string |  | 1..1 |
| ../../codeSystemName | string |  | 0..1 |
| ../../codeSystemVersion | string |  | 0..1 |
| ../../displayName | string |  | 0..1 |
| ../../originalText | string |  | 0..1 |
| ../publicProvider | boolean |  | 0..1 |
| **Svar** | | | |
| offeringCatalogue | OfferingCatalogueType |  | 0..* |
| ../providingOrganization | ProvidingOrganizationType |  | 1..* |
| ../../id | IIType |  | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../name | string |  | 1..1 |
| ../../management | CVType |  | 1..1 |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../publicProvider | boolean |  | 1..1 |
| ../../description | DescriptionType |  | 0..* |
| ../../../text | string |  | 1..1 |
| ../../../language | CVType |  | 0..1 |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../../../role | CVType |  | 0..* |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../interaction | InteractionType |  | 1..1 |
| ../../logicalAddress | string |  | 1..1 |
| ../../name | anyURI |  | 1..1 |
| ../../majorVersion | int |  | 1..1 |
| ../../minorVersion | int |  | 0..1 |
| ../../rivtaVersion | RIVTAVersionEnum |  | 1..1 |

#### 7.1.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetOfferingCataloguesResponder:2:GetOfferingCatalogues`

#### 7.1.7 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetOfferingCataloguesInteraction_2.0_RIVTABP21.wsdl](GetOfferingCataloguesInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetOfferingCataloguesResponder_2.0.xsd](GetOfferingCataloguesResponder_2.0.xsd) | Tjänsteschema |
| [supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd](supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd) | Domänschema (delat) |
| [supportprocess_serviceprovisioning_healthcareoffering_3.0_enums.xsd](supportprocess_serviceprovisioning_healthcareoffering_3.0_enums.xsd) | Domänschema, uppräkningar (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_GetOfferingCatalogues_1.0.docx](SjD_TK_GetOfferingCatalogues_1.0.docx) | Självdeklaration (tjänstekonsument), version 1.0 |
| [SjD_TK_GetOfferingCatalogues_2.0.docx](SjD_TK_GetOfferingCatalogues_2.0.docx) | Självdeklaration (tjänstekonsument), version 2.0 |

#### 7.1.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getofferingcatalogues-request](StructureDefinition-getofferingcatalogues-request.html)
* **Logisk modell (response):** [StructureDefinition/getofferingcatalogues](StructureDefinition-getofferingcatalogues.html)
* **Kodsystem:** [CodeSystem/healthcareoffering-rivtaversion-cs](CodeSystem-healthcareoffering-rivtaversion-cs.html)
* **ValueSet:** [ValueSet/healthcareoffering-rivtaversion-vs](ValueSet-healthcareoffering-rivtaversion-vs.html)

### GetCareServiceOfferings

GetCareServiceOfferings hämtar de vård- och omsorgstjänster som ingår i det utbud som erbjuds av en katalogansvarig organisation och som är tillgängliga baserat på användarens filterparametrar.

#### 7.2.1 Version

3.0

#### 7.2.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Text i kolumnen ’Beskrivning’ som anges på första raden och är fetmarkerad motsvarar den benämning som används i meddelandemodellen.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careServiceId | IIType | Vård- och omsorgstjänstens id<br/>Begränsar sökningen så att endast poster med angivet id för vård- och omsorgstjänst returneras.<br/>Om HSA-id används:<br/>careServiceId.root: 1.2.752.129.2.1.4.1<br/>careServiceId.extension: `<hsa-id>`<br/>Om ej HSA-id:<br/>careServiceId.root: `<UUID>`<br/>careServiceId.extension: Anges ej | 0..* |
| typeOfCareService* | CVType | Typ av vård- och omsorgstjänst<br/>Begränsar sökningen så att endast poster med angiven typ av vård- och omsorgstjänst returneras.<br/>Exempel:<br/>Allergologisk konsultation<br/>Kognitiv beteendeterapi via internet<br/>Då Snomed CT används:<br/>typeOfCareService.codesystem: 1.2.752.116.2.1.1<br/>I första hand ska koder från det nationella utbudkodsurvalet användas men Snomed CT-koder från lokalt urval kan förekomma.<br/>Då verksamhetskod används: typeOfCareService.codesystem: 1.2.752.129.2.2.1.3<br/>Kod väljs från HSA verksamhetskodverk. Då en verksamhetskod används ska konsumenten logiskt lägga till prefixet ”Vårdtjänster inom verksamhetsområdet …” till klartexten för verksamhetskoden. | 0..* |
| typeOfPlace | TypeOfPlaceType | Typ av plats<br/>Filtrerar sökresultatet så att endast poster med angiven typ av plats som vård-och omsorgstjänsten erbjuds på returneras.<br/>En av följande:<br/>PHYSICAL – endast fysisk plats<br/>VIRTUAL – endast virtuell plats<br/>ALL - både fysisk och virtuell plats | 1..1 |
| typeOfBusiness* | CVType | Typ av verksamhet<br/>Filtrerar sökresultatet så att endast poster med angiven typ av verksamhet returneras.<br/>Om HSA verksamhetskod<br/>typeOfBusiness.codeSystem:<br/>1.2.752.129.2.2.1.3 | 0..* |
| providingOrganization | searchProvidingOrganizationType | Katalogansvarig organisation | 0..1 |
| ../providingOrganizationId | IIType | Id på katalogansvarig organisation<br/>Filtrerar sökresultatet så att endast poster med angivet id för katalogansvarig organisation returneras.<br/>För Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7)<br/>För Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1) | 0..* |
| ../management | CVType | Ägarform<br/>Filtrerar sökresultatet så att endast poster med angiven ägarform för den katalogansvariga organisationen returneras.<br/>Anges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14].<br/>Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 0..* |
| ../publicProvider | Boolean | Offentlig huvudman<br/>Filtrerar sökresultatet så att endast poster där vård- och omsorgstjänst som erbjuds av en offentlig huvudman returneras om fältet sätts till true.<br/>Om fältet ej anges returneras vård- och omsorgstjänster som erbjuds av både offentlig och ej offentlig huvudman. | 0..1 |
| actorLanguage* | CVType | Språk för aktör<br/>Filtrerar sökresultat så att poster med angivet språk returneras.<br/>Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for<br/>comprehensive coverage of languages”.<br/>Endast texter som finns beskrivna på det angivna språket ska returneras. Om det saknas text för angivet språk, returneras texter på svenska.<br/>Det är endast beskrivningar som ska returneras på olika språk, ej displayName för CV-typerna.<br/>Om språk ej anges, ska samtliga texter returneras.<br/>Exempel på code:<br/>swe (svenska)<br/>eng (engelska)<br/>deu (tyska)<br/>actorLanguage.code: swe<br/>actorLanguage.displayName: Swedish<br/>actorLanguage.codeSystem: 1.0.639.3 | 0..1 |
| actorRole* | CVType | Roll för aktör<br/>Filtrerar sökresultatet så att poster med angiven roll returneras.<br/>Endast texter som finns beskrivna för den angivna rollen returneras. Om det saknas text för angiven roll, returneras texter anpassade för invånare (enskild person) som alltid ska finnas om beskrivningstext finns.<br/>Om roll ej anges, ska samtliga texter returneras.<br/>role.code: 223366009<br/>role.displayname: hälso- och sjukvårdspersonal<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 257513009<br/>role.displayname: enskild person<br/>role.codesystem:  1.2.752.116.2.1.1 | 0..1 |
| performingOrganization | IIType | Enhets-id<br/>Filtrerar sökresultatet så att endast poster med angivet id på utförande enhet returneras.<br/>Exempel för HSA-id:<br/>performingOrganization.root =1.2.752.129.2.1.4.1<br/>performingOrganization.extension = SE1234-1234 (fiktivt id) | 0..* |
| targetGroupAge | int | Ålder<br/>Filtrerar sökresultatet så att endast poster med angiven ålder returneras.<br/>Åldern avser den person som söker hälso- och sjukvård eller socialtjänst. | 0..1 |
| targetGroupGender* | CVType | Kön<br/>Filtrerar sökresultatet så att endast poster med angivet kön returneras.<br/>Könet avser den person som söker hälso- och sjukvård eller socialtjänst.<br/>Kodverk:<br/>Kv_kon<br/>1=man<br/>2=kvinna<br/>Koden ”Övrig” ej tillåten i detta attribut.<br/>Exempel<br/>targetGroupGender.code: 1<br/>targetGroupGender.codesystem: 1.2.752.129.2.2.1.1 | 0..1 |
| ,,/targetGroupAttribute | TargetGroupAttributeType | Egenskap<br/>Filtrerar sökresultatet så att endast poster med angiven egenskap returneras. Egenskap avser ytterligare information om den person som söker hälso- och sjukvård eller socialtjänst. | 0..* |
| ../../ typeOfPersonalAttribute* | CVType | Typ av egenskap<br/>Filtrerar sökresultatet så att endast poster med angiven typ av egenskap returneras.<br/>Exempel:<br/>Graviditetsvecka<br/>Kod från Snomed CT hierarkin 363787002 \| observerbar företeelse \| | 1..1 |
| ../../attributeValue | string | Värde<br/>Filtrerar sökresultatet så att endast poster med angivet värde för egenskapen returneras.<br/>Exempel relaterat till graviditetsvecka:<br/>18 | 1..1 |
| location | SearchLocationType | Sökområde<br/>Filtrerar sökresultatet så att endast poster med angivet sökområde för vård- och omsorgstjänsten returneras.<br/>Sökområdet kan vara ett geografiskt område, län eller kommun.<br/>I de fall flera sökområden anges ska samtliga vård- och omsorgstjänster med något av de angivna sökområdena returneras. | 0..1 |
| ../geographicalLocation | SearchGeographicalLocationType | Geografiskt område<br/>Filtrerar sökresultatet så att endast poster med angivet geografiskt område returneras. Till geografiskt område hör geografiska koordinater och radie som bildar en area. Producenter behöver inte svara baserat på polygoner i Övrigt område (otherLocation).<br/>Svaret ska returnera vård- och omsorgstjänster med utförandeplats inom den arean. | 0..1 |
| ../../geographicalCoordinates | GeoLocationType | Geografiska koordinater<br/>Geografisk lokalisering, dvs den punkt på en karta sökningen ska utgå ifrån. | 1..1 |
| ../../../north | long | Exempel<br/>geoLocation.north = 5407869 | 1..1 |
| ../../../east | long | Exempel<br/>geoLocation.east = 485784 | 1..1 |
| ../../radius | int | Radie<br/>Radie utifrån den geografiska lokaliseringen angiven i positivt heltal och i antal meter.<br/>Används för att söka inom ett område från de geografiska koordinaterna. | 1..1 |
| ../county* | CVType | Länskod<br/>Filtrerar sökresultatet så att endast poster med angivet län returneras. Länskod enligt SCB:s lista över län och ekomer, se referens R13.  Tvåställig kod.<br/>Exempel:<br/>county.code = 05<br/>county.codeSystem = 1.2.752.129.2.2.1.18<br/>county.displayName = Östergötlands län | 0..* |
| ../municipality* | CVType | Kommunkod<br/>Sökning på kommun. Kommunkod enligt SCB’s lista över län och kommuner, se referens R13. Fyrställig kod.<br/>Exempel:<br/>municipality.code = 0126<br/>municipality.codeSystem = 1.2.752.129.2.2.1.17<br/>municipality.displayName = Huddinge | 0..* |
| searchTerm | string | Fritextsökning för att filtrera på vård- och omsorgstjänst baserat på text i nedan listade fritextfält.<br/>För de beskrivande texter nedan som förekommer i flera språk ska sökningen ske i texten som motsvarar det språk som anges i actorLanguage.<br/>Anges inte actorLanguage ska texter för samtliga språk användas i sökningen.<br/>Sökningen ska innehålla minst 3 tecken. Vård- och omsorgstjänst där sökbegreppet överensstämmer med del av text i nedanstående fält ska returneras.<br/>I det fall fler sökbegrepp skickas med i begäran ska samtliga sökbegrepp återfinnas i något av nedanstående fält för att vård- och omsorgstjänsten ska returneras.<br/>Fritextsökning ska ske i fälten:<br/>careService.description.text<br/>careService.typeOfCareService.displayName<br/>careService.providingOrganization. Name<br/>careService.providingOrganization.description<br/>careService.performingOrganization.name<br/>careService.performingOrganization.description.text<br/>careService.performingOrganization.responibleOrganization.name<br/>careService. performingOrganization.responibleOrganization.description.text<br/>careService.location.geographicalLocation.municipality.displayName<br/>careService.location.geographicalLocation.county.displayName | 0..* |
| Svar |  |  |  |
| careService | CareServiceType | Vård- och omsorgstjänst<br/>Den tjänst som erbjuds av en organisatorisk enhet för att tillgodose behov av hälso- och sjukvård eller socialtjänst hos invånare. | 0..* |
| ../careServiceId | IIType | Vård- och omsorgstjänstens id<br/>Innehåller vård- och omsorgstjänstens unika identifierare.<br/>Om HSA-id används:<br/>careServiceId.root: 1.2.752.129.2.1.4.1<br/>careServiceId.extension: `<hsa-id>`<br/>Om ej HSA-id:<br/>careServiceId.root: `<UUID>`<br/>careServiceId.extension: Anges ej | 0..1 |
| ../typeOfCareService | CVType | Typ av vård- och omsorgstjänst.<br/>Den specifika vård- och omsorgstjänsten som erbjuds.<br/>Exempel inom hälso- och sjukvård:<br/>- insättning av totalprotes i höftled<br/>- rehabiliteringsmedicinsk konsultation<br/>Exempel inom socialtjänsten:<br/>- hjälp med inköp<br/>- tillredning av måltider m.m.<br/>Då Snomed CT används:<br/>typeOfCareService.codesystem: 1.2.752.116.2.1.1<br/>/ I första hand ska koder från det nationella utbudkodsurvalet användas men Snomed CT-koder från lokalt urval kan förekomma.<br/>/ Då verksamhetskod används: typeOfCareService.codesystem: 1.2.752.129.2.2.1.3<br/>Kod väljs från HSA verksamhetskodverk.<br/>Då en verksamhetskod används ska konsumenten logiskt lägga till prefixet ”Vårdtjänster inom verksamhetsområdet …” till klartexten för verksamhetskoden.<br/>typeOfCareService.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.<br/>Framtagande av nationellt kodverk pågår. | 1..1 |
| ../typeOfCareServicedescription* | DescriptionType | Nationellt överenskommen beskrivning av vård- och omsorgstjänsten.<br/>Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.<br/>Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../text | string | Text<br/>Den textuella beskrivningen. | 1..1 |
| ../../language* | CVType | Språk<br/>Anger kod för det språk beskrivningen är skriven på.<br/>Om fältet inte används antas beskrivningen avse svenska.<br/>Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for comprehensive coverage of languages”.<br/>Exempel på code:<br/>swe (svenska)<br/>eng (engelska)<br/>deu (tyska)<br/>language.code: swe<br/>language.displayname: Swedish<br/>language.codesystem: 1.0.639.3 | 0..1 |
| ../../role* | CVType | Roll<br/>Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.<br/>Om roll inte anges, riktas beskrivningen till samtliga roller.<br/>Urval ur Snomed CT:<br/>role.code: 223366009<br/>role.displayname: hälso- och sjukvårdspersonal<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 257513009<br/>role.displayname: enskild person<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 224611006<br/>role.displayname: personal inom socialtjänsten<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../validity* | DatePeriodType | Giltighet<br/>Giltighetstiden för vård- och omsorgstjänsten.<br/>Exempelvis höftledsoperation som utförs av den organisatoriska enheten x på platsen y erbjuds under perioden 20160101-20171231.<br/>Minst ett av periodens start och end i DatePeriodType ska anges. | 1..1 |
| ../careServiceStatus | CareServiceStatusEnum | Status<br/>Status för vård- och omsorgstjänsten.<br/>En av följande:<br/>INACTIVE = innan vård- och omsorgstjänsten är färdig att erbjudas.<br/>ACTIVE = vård- och omsorgstjänsten är färdigbeskriven och kan erbjudas.<br/>DEPRECATED = vård- och omsorgstjänsten ska ej längre erbjudas | 1..1 |
| ../careOption | boolean | Vårdval<br/>Sätts till true om vård- och omsorgstjänsten ingår i valfrihetssystem. | 1..1 |
| ../referralRequired | boolean | Remisskrav<br/>Anger om det finns krav på remiss för att uppsöka/ta del av vård- och omsorgstjänsten.<br/>För hälso- och sjukvården: Observera att den information som anges här är det eventuella krav på remiss från den organisation/region som ansvarar för att tillhandahålla vård- och omsorgstjänsten. Om remisskrav INTE finns för vård- och omsorgstjänsten, kan det ändå finnas krav från patientens hemregion för denna typ av vård- och omsorgstjänst. Om så är fallet behöver patienten en remiss från hemregionen för att utförare av den erbjudna vård- och omsorgstjänsten ska få ersättning från hemregionen.<br/>Reglerna för detta beskrivs i "Riksavtalet för utomlänsvård från och med 1 januari 2015" [R7] sidan 17 under rubriken "Hemlandstingets remissregler tillämpas också i andra landsting" och "Vårdlandstingets remissregler tillämpas också för utomlänspatienter". | 1..1 |
| ../description* | DescriptionType | Beskrivning av vård- och omsorgstjänsten som är ett lokalt tillägg till den nationellt överenskomna. Detta kan exempelvis i text detaljera hur en viss aktivitet utförs eller om det finns några tillägg till det nationellt överenskomna innehållet i en vård- och omsorgstjänst.<br/>Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.<br/>Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../text | string | Text<br/>Den textuella beskrivningen. | 1..1 |
| ../../language* | CVType | Språk<br/>Anger kod för det språk beskrivningen är skriven på.<br/>Om fältet inte används antas beskrivningen avse svenska.<br/>Används för att returnera ett svar baserat på aktörens språk. Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for comprehensive coverage of languages”.<br/>Exempel på code:<br/>swe (svenska)<br/>eng (engelska)<br/>deu (tyska)<br/>language.code: swe<br/>language.displayname: Swedish<br/>language.codesystem: 1.0.639.3 | 0..1 |
| ../../role* | CVType | Roll<br/>Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.<br/>Om roll inte anges, riktas beskrivningen till samtliga roller.<br/>Urval ur Snomed CT:<br/>role.code: 223366009<br/>role.displayname: hälso- och sjukvårdspersonal<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 257513009<br/>role.displayname: enskild person<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 224611006<br/>role.displayname: personal inom socialtjänsten<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../indicator | IndicatorType | Indikator<br/>Indikator håller referenser till mätningar från SKRs (Sveriges kommuner och regioner) öppna jämförelser som kan kopplas till en viss vård- och omsorgstjänst. Kan exempelvis vara väntetid eller kvalitetsindikator kopplat till den specifika vård- och omsorgstjänsten. | 0..* |
| ../../indicatorId | IIType | Indikator id<br/>Identitetsbeteckning för indikator från SKRs öppna jämförelser som är kopplad till en vård- och omsorgstjänst.<br/>indicator.root = 1.2.826.0.1.3680043.9.4672.7 | 1..1 |
| ../../logicalAddress | String | Logisk adress<br/>Logisk adress som ska användas för att nå den datakälla där indikatorn finns lagrad. | 1..1 |
| ../requestTemplate | RequestTemplateType | Remissanvisning<br/>Om vårdtjänsten har en fastställd remissanvisning som kan användas vid remittering, anges den adress som remissanvisningen kan hämtas ifrån. Remissanvisningen är ett stöd för att säkerställa att nödvändig information bifogas en remiss. | 0..1 |
| ../../address | anyURI | Adress till remissanvisning<br/>Adress som anger var en remissanvisning finns. Kan vara en URL. | 1..1 |
| ../../mandatory | boolean | Obligatorisk<br/>Anger om det är obligatoriskt för en remittent att förstå och tillämpa remissanvisningen för att kunna nyttja vårdtjänsten.<br/>True = obligatoriskt att tillämpa remissanvisning vid remittering<br/>False = ej obligatoriskt att tillämpa remissmall vid remittering | 1..1 |
| ../providingOrganization | ProvidingOrganizationType | Katalogansvarig organisation<br/>Den organisation som är huvudansvarig och innehållsansvarig för det utbud som svaret visar. | 1..1 |
| ../../id | IIType | Organisation id<br/>Id för den katalogansvariga organisationen. Innehållet i id styrs av vilken typ av organisation det är<br/>För Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7)<br/>För Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1) | 1..1 |
| ../../name | String | Namn på den katalogansvariga organisationen. | 1..1 |
| ../../management | CVType | Ägarform<br/>Filtrerar sökresultatet så att endast poster med angiven ägarform för den katalogansvariga organisationen returneras.<br/>Anges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14].<br/>management.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.<br/>Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 |
| ../../publicProvider | Boolean | Offentlig huvudman<br/>Anger om den katalogansvariga organisationen är offentlig huvudman.<br/>True=offentlig huvudman | 1..1 |
| ../../description* | DescriptionType | Beskrivning av den katalogansvariga organisationen. Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.<br/>Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../../text | string | Text<br/>Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk<br/>Anger kod för det språk beskrivningen är skriven på.<br/>Om fältet inte används antas beskrivningen avse svenska.<br/>Används för att returnera ett svar baserat på aktörens språk. Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for<br/>comprehensive coverage of languages”.<br/>Exempel på code:<br/>swe (svenska)<br/>eng (engelska)<br/>deu (tyska)<br/>language.code: swe<br/>language.displayname: Swedish<br/>language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll<br/>Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.<br/>Om roll inte anges, riktas beskrivningen till samtliga roller.<br/>Om beskrivning anges, ska minst en beskrivning för invånare anges.<br/>role.code: 223366009<br/>role.displayname: hälso- och sjukvårdspersonal<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 257513009<br/>role.displayname: enskild person<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 224611006<br/>role.displayname: personal inom socialtjänsten<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../performingOrganization | PerformingOrganizationType | Utförande organisatorisk enhet<br/>Klassen motsvarar den organisatoriska enheten som utför en aktivitet som erbjudit i form av vård- och omsorgstjänst. | 1..1 |
| ../../id | IIType | Enhets-id<br/>Ett enhets-id på den utförande enheten ska returneras.<br/>Id på organisatoriska enheten kan vara HSA-id.<br/>Exempelvis HSA-id, organisationsnummer<br/>eller lokala id:n.<br/>Om HSA-id (exempel):<br/>id.root =1.2.752.129.2.1.4.1<br/>id.extension = SE2321000115-094882 | 1..* |
| ../../name | String | Enhetsnamn<br/>Lista med namn på den organisatoriska enhet som erbjuder en vård- och omsorgstjänst<br/>Listan ska vara ordnad efter fallande prioritetsordning där det föredragna namnet kommer först.<br/>Namn måste innehålla minst 3 tecken. | 0..* |
| ../../responsibleOrganization | OrganizationType | Organisation<br/>Den organisation som den utförande organisatoriska enheten är en del av. | 1..1 |
| ../../../id | IIType | Id på organisationen.<br/>Om HSA-id (exempel):<br/>id.root =1.2.752.129.2.1.4.1<br/>id.extension = SE2321000115-094882 | 1..1 |
| ../../../name | string | Namn på organisationen. | 1..1 |
| ../../../description* | DescriptionType | Beskrivning av organisationen.<br/>Beskrivning av den organisation som ansvarar för den utförande enheten.<br/>Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.<br/>Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../availableTime | CalendarType | Kalendertid<br/>Den tid som den utförande enheten är tillgänglig.<br/>Se avsnitt 5.2.2 för beskrivning av format. | 0..* |
| ../../typeOfBusiness | CVType | Typ av verksamhet<br/>Kod för den typ av verksamhet som bedrivs.<br/>Om HSA verksamhetskod<br/>typeOfBusiness.codeSystem:<br/>1.2.752.129.2.2.1.3<br/>typeOfBusiness.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../../description* | DescriptionType | Beskrivning<br/>Beskrivning av den enhet som erbjuder vård- och omsorgstjänsten.<br/>Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.<br/>Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../../text | string | Text<br/>Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk<br/>Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.<br/>Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for<br/>comprehensive coverage of languages”.<br/>Exempel på code:<br/>swe (svenska)<br/>eng (engelska)<br/>deu (tyska)<br/>language.code: swe<br/>language.displayname: Swedish<br/>language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll<br/>Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.<br/>Om roll inte anges, riktas beskrivningen till samtliga roller.<br/>role.code: 223366009<br/>role.displayname: hälso- och sjukvårdspersonal<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 257513009<br/>role.displayname: enskild person<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 224611006<br/>role.displayname: personal inom socialtjänsten<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../patientFee | MOType | Patientavgift<br/>Den avgift som ska betalas av patienten.<br/>Valutan anges i SEK enligt ISO 4217.<br/>Exempel:<br/>patientFee.value: 125<br/>patientFee.currency: SEK | 0..1 |
| ../targetGroup | TargetGroupType | Målgrupp för vård- och omsorgstjänsten | 0..* |
| ../../age | PositiveIntPeriodType | Intervall för den åldersgrupp som vård- och omsorgstjänsten riktas till.<br/>Exempelvis: Vård- och omsorgstjänsten erbjuds endast till barn upp till 5 år.<br/>Intervallet blir då ”0‒5” år.<br/>Om vård- och omsorgstjänsten gäller alla åldersgrupper, används ej detta attribut. | 0..1 |
| ../../gender | CVType | Kön<br/>Det kön som vård- och omsorgstjänsten riktas till.<br/>Kodverk:<br/>Kv_kon<br/>1=man<br/>2=kvinna<br/>Koden ”övrigt” tillåts ej i detta attribut.<br/>Exempel code: 1<br/>targetGroupGender.codeSystem: 1.2.752.129.2.2.1.1<br/>gender.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..1 |
| ../../targetGroupAttribute | TargetGroupAttributeType | Egenskaper<br/>Egenskaper för målgruppen. | 0..* |
| ../../../ typeOfPersonalAttribute | CVType | Typ av egenskap<br/>Innehåller någon specifik egenskap som identifierar den målgrupp som tjänsten riktas till.<br/>Exempel:<br/>Gravida i veckointervall X-Y<br/>Kod från Snomed CT hierarkin 363787002 \| observerbar företeelse \|<br/>typeOfPersonalAttribute.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 1..1 |
| ../../../attributeValue | string | Värde<br/>Innehåller detaljer om den specifika egenskapen.<br/>Exempel:<br/>0-20 | 1..1 |
| ../location* | LocationType | Plats<br/>Plats där vård- och omsorgstjänsten erbjuds.<br/>Anges med geografiskt område, fysisk plats eller virtuell plats. | 1..* |
| ../../geographicalLocation* | GeographicalLocationType | Geografiskt område<br/>Anger det geografiska område där vård- och omsorgstjänsten erbjuds.<br/>Anges med län, kommun eller övrigt område. | 0..1 |
| ../../../county | CVType | Länskod enligt SCB:s lista över län och kommuner, se referens R13. Tvåställig kod.<br/>Exempel:<br/>county.code = 05<br/>county.codeSystem = 1.2.752.129.2.2.1.18<br/>county.displayName = Östergötlands län<br/>county.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..1 |
| ../../../municipality | CVType | Kommunkod enligt SCB:s lista över län och kommuner, se referens R13. Fyrställig kod.<br/>Exempel:<br/>municipality.code =  0126<br/>municipality.codeSystem =1.2.752.129.2.2.1.17<br/>municipality.displayName = Huddinge<br/>municipality.displayName returnerar endast svenska även om annat språk är angivet i begäran. | 0..1 |
| ../../../otherLocation | OtherLocationType | Övrigt område är ett begränsat område som vård- och omsorgstjänsten erbjuds inom. | 0..1 |
| ../../../../polygon | GeoLocationType | Polygon<br/>Det område som avgränsas med minst 3 punkter med sina respektive koordinater. | 3..* |
| ../../../../../north | long | Exempel<br/>geoLocation.north = 6407869 | 1..1 |
| ../../../../../east | long | Exempel<br/>geoLocation.east = 485748 | 1..1 |
| ../../../../name | string | Benämning på övrigt område.<br/>Exempelvis kommundel. | 0..1 |
| ../../physicalLocation | PhysicalLocationType | Fysisk plats<br/>Den fysiska plats där vård- och omsorgstjänsten erbjuds. Anges med besöksadress och/eller geografiska koordinater. | 0..1 |
| ../../../locationAddress | string | Belägenhetsadress.<br/>Adress för fysisk plats där vård- och omsorgstjänsten erbjuds.<br/>Minst ett av attributen locationAddress eller geographicalCoordinates ska anges. | 0..1 |
| ../../../ geographicalCoordinates | GeoLocationType | Geografiska koordinater som avgränsar Fysisk plats.<br/>Minst ett av attributen locationAddress eller geographicalCoordinates ska anges. | 0..1 |
| ../../virtualLocation | VirtualLocationType | Virtuell plats<br/>Adress till en viss vård- och omsorgstjänst om den bedrivs virtuellt. Kan exempelvis vara webbadress eller adress där det går att ladda ner en applikation. | 0..1 |
| ../../.. /id | anyURI | Id på virtuell plats.<br/>Identifierare för den plats där vård- och omsorgstjänsten bedrivs virtuellt. | 1..1 |
| ../../description* | DescriptionType | Beskrivning av platsen (län, kommun, fysisk eller virtuell plats).<br/>Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.<br/>Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../../text | string | Text<br/>Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk<br/>Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.<br/>Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for<br/>comprehensive coverage of languages”.<br/>Exempel på code:<br/>swe (svenska)<br/>eng (engelska)<br/>deu (tyska)<br/>language.code: swe<br/>language.displayname: Swedish<br/>language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll<br/>Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare (enskild person) eller hälso- och sjukvårdspersonal.<br/>role.code: 223366009<br/>role.displayname: hälso- och sjukvårdspersonal<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 257513009<br/>role.displayname: enskild person<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 224611006<br/>role.displayname: personal inom socialtjänsten<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../contactInformation | ContactInformationType | Kontaktuppgift till den organisatoriska enhet som erbjuder en viss vård- och omsorgstjänst. | 0..* |
| ../../ranking | integer | Rangordning för kontaktuppgifterna. Om det finns flera kontaktuppgifter används rangordning för att visa vilken som föredras framför en annan.<br/>Anges med siffror där 1 innebär högst rangordning osv.<br/>Exempelvis om en e-postadress ska användas i första hand och ett telefonnummer ska användas i andra hand, används rangordning 1 för e-postadressen och rangordning 2 för telefonnumret. | 0..1 |
| ../../forRole | CVType | För roll<br/>Attributet anger om kontaktuppgiften avser en viss roll.<br/>En roll kan vara en invånare (enskild person), personal inom socialtjänst eller hälso- och sjukvårdspersonal.<br/>Ett telefonnummer som finns registrerat för en vård- och omsorgstjänst ska i vissa fall endast användas för invånare och ett annat telefonnummer, avseende samma vård- och omsorgstjänst, ska användas av hälso- och sjukvårdspersonal.<br/>role.code: 223366009<br/>role.displayname: hälso- och sjukvårdspersonal<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 257513009<br/>role.displayname: enskild person<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 224611006<br/>role.displayname: personal inom socialtjänsten<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../../purpose | String | Syfte<br/>Angivelse av syftet med kontaktuppgiften.<br/>Exempelvis avbokning, ombokning, receptförnyelse. | 0..1 |
| ../../address | Address | Postadress<br/>Den adress som kan användas för att kontakta en organisatorisk enhet gällande en vård- och omsorgstjänst. Kan exempelvis vara adress dit en pappersremiss ska skickas.<br/>Observera att detta ej är besöksadress (återfinns i Fysisk plats).<br/>Adress är obligatoriskt om det är möjligt att remittera till vård- och omsorgstjänsten. | 0..1 |
| ../../availableTime | CalendarType | Kalendertid<br/>Den tid som kontaktuppgiften är tillgänglig.<br/>Det kan vara möjligt att ringa mån – fre 08.00-17.00 på ett telefonnummer.<br/>Se avsnitt 5.2.2 för beskrivning av format. | 0..* |
| ../../telecom | TelecomType | Adress för telekommunikation<br/>Innehåller den elektroniska adressinformation som ska användas för att kontakta en organisatorisk enhet gällande en viss vård- och omsorgstjänst. | 0..1 |
| ../../../typeOfTelecom | CVType | Typ av medium<br/>Vilken typ av medium för telekommunikation som avses.<br/>Anges med kod från kodverket Kv tele ekom typ (OID: 1.2.752.129.2.2.1.30) [R14].<br/>Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.<br/>typeOfTelecom.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 1..1 |
| ../../../contactPoint* | string | Värde<br/>Angivelse av värde i klartext för typen av medium.<br/>Exempelvis 070-707070 som telefonnummer, epost@epost.se som e-postadress etc. | 1..1 |
| ../../description* | DescriptionType | Beskrivning<br/>Ytterligare information om kontaktuppgiften.<br/>Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.<br/>Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../../text | string | Text<br/>Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk<br/>Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.<br/>Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for<br/>comprehensive coverage of languages”.<br/>Exempel på code:<br/>swe (svenska)<br/>eng (engelska)<br/>deu (tyska)<br/>language.code: swe<br/>language.displayname: Swedish<br/>language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll<br/>Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänst  eller hälso- och sjukvårdspersonal.<br/>Om beskrivning anges, ska minst en beskrivning för invånare anges.<br/>role.code: 223366009<br/>role.displayname: hälso- och sjukvårdspersonal<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 257513009<br/>role.displayname: enskild person<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 224611006<br/>role.displayname: personal inom socialtjänsten<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../cooperation | CooperationType | Samverkan<br/>Håller information om vilken organisatorisk enhet som samverkar med annan organisatorisk enhet kring en vård- och omsorgstjänst och vad samverkan avser.<br/>Ett exempel på samverkan är när två organisatoriska enheter samverkar kring öppettider avseende en viss typ av vård- ocn omsorgstjänst så att en patient kan hänvisas rätt utanför normala öppettider, exempelvis från vårdcentral till närakut. | 0..* |
| ../../typeOfCooperation | String | Typ av samverkan<br/>Vilken typ av samverkan organisationerna har mellan varandra. | 1..1 |
| ../../validity* | DatePeriodType | Giltighet<br/>Giltighetsperioden för samverkan mellan organisationerna.<br/>Om samverkan exempelvis gäller vid semesterstängt, kan giltigheten exempelvis vara 20160601‒20160831. | 0..1 |
| ../../referenceToCareServiceId | IIType | Referens till vård- och omsorgstjänst<br/>Unikt id som identifierar den vård och- omsorgstjänst som två organisationer samverkar kring.<br/>Om HSA-id används:<br/>careServiceId.root: 1.2.752.129.2.1.4.1<br/>careServiceId.extension: `<hsa-id>`<br/>Om ej HSA-id:<br/>careServiceId.root: `<UUID>`<br/>careServiceId.extension: Anges ej | 1..1 |
| ../../description* | DescriptionType | Beskrivning<br/>Ytterligare information om samverkan.<br/>Om beskrivning anges ska det åtminstone finnas på svenska och vara anpassad för invånare.<br/>Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../../text | string | Text<br/>Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk<br/>Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.<br/>Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for<br/>comprehensive coverage of languages”.<br/>Exempel på code:<br/>swe (svenska)<br/>eng (engelska)<br/>deu (tyska)<br/>language.code: swe<br/>language.displayname: Swedish<br/>language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll<br/>Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.<br/>Om roll inte anges, riktas beskrivningen till samtliga roller.<br/>Om beskrivning anges, ska minst en beskrivning för invånare anges.<br/>role.code: 223366009<br/>role.displayname: hälso- och sjukvårdspersonal<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 257513009<br/>role.displayname: enskild person<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 224611006<br/>role.displayname: personal inom socialtjänsten<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../resource | ResourceType | Resurs<br/>Vilken resurs som kan erbjudas med en vård- och omsorgstjänst. | 0..* |
| ../../typeOfResource | CVType | Typ av resurs<br/>Exempelvis bassäng eller vård- och omsorgspersonal med särskild kompetens.<br/>Kod från Snomed CT hierarkin 308916002 \| område eller geografisk plats \|, 260787004 \| fysiskt objekt \| eller 106288005 \| läkare, tandläkare, veterinär eller motsvarande yrke \|<br/>typeOfResource.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 1..1 |
| ../../resourceAttribute | String | Egenskap<br/>Värdet på resursen. Exempelvis om tolk så anges vilket språk. | 0..1 |
| ../../availableTime | CalendarType | Kalendertid<br/>Vilken tid resursen är tillgänglig.<br/>Se avsnitt 5.2.2 för beskrivning av format. | 0..* |
| ../../description* | DescriptionType | Beskrivning<br/>Ytterligare information om resursen.<br/>Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.<br/>Det får endast finnas en beskrivning med samma kombination av språk och roll. | 0..* |
| ../../../text | string | Text<br/>Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk<br/>Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.<br/>Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for<br/>comprehensive coverage of languages”.<br/>Exempel på code:<br/>swe (svenska)<br/>eng (engelska)<br/>deu (tyska)<br/>language.code: swe<br/>language.displayname: Swedish<br/>language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll<br/>Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten  eller hälso- och sjukvårdspersonal.<br/>Om beskrivning anges, ska minst en beskrivning för invånare anges.<br/>role.code: 223366009<br/>role.displayname: hälso- och sjukvårdspersonal<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 257513009<br/>role.displayname: enskild person<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 224611006<br/>role.displayname: personal inom socialtjänsten<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |
| ../interferenceInformation | InterferenceInformationType | Störningsinformation.<br/>Information om omständigheter som innebär en avvikelse i tillgängligheten för en viss vård- och omsorgstjänst. | 0..* |
| ../../datePeriod* | DatePeriodType | Datumperiod<br/>Start- och sluttid för det inträffade, där starttid är obligatorisk och sluttid valfri. | 1..1 |
| ../../typeOfInterference | CVType | Typ av störning<br/>Vilken typ av avvikelse. Exempelvis ombyggnation, semester.<br/>Kod från Snomed CT hierarkin 272379006 \| händelse \|<br/>typeOfInterference.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..1 |
| ../../description* | DescriptionType | Beskrivning<br/>Ytterligare information om avvikelser.<br/>Det ska åtminstone finnas beskrivning på svenska och vara anpassad för invånare.<br/>Det får endast finnas en beskrivning med samma kombination av språk och roll. | 1..* |
| ../../../text | string | Text<br/>Den textuella beskrivningen. | 1..1 |
| ../../../language* | CVType | Språk<br/>Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.<br/>Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for<br/>comprehensive coverage of languages”.<br/>Exempel på code:<br/>swe (svenska)<br/>eng (engelska)<br/>deu (tyska)<br/>language.code: swe<br/>language.displayname: Swedish<br/>language.codesystem: 1.0.639.3 | 0..1 |
| ../../../role* | CVType | Roll<br/>Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten  eller hälso- och sjukvårdspersonal.<br/>Om beskrivning anges, ska minst en beskrivning för invånare anges.<br/>Urval ur Snomed CT:<br/>role.code: 223366009<br/>role.displayname: hälso- och sjukvårdspersonal<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 257513009<br/>role.displayname: enskild person<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.code: 224611006<br/>role.displayname: personal inom socialtjänsten<br/>role.codesystem:  1.2.752.116.2.1.1<br/>role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran. | 0..* |

#### 7.2.3 Övriga regler

Begäran

Regel 1: Där CVType används ska urvalet endast baseras på code och codeSystem.

Svar

Regel 1: Med location så är det en av följande fält som ska anges:

geographicalLocation

physicalLocation

virtualLocation

Regel 2: Med fältet geographicalLocation så är det en av följande som ska anges:

county

municipality

otherLocation

Regel 3:  contactPoint

Om värdet är 6 på typeOfTelecom.code ska formatet följa uri

Om värdet är 1-3 på typeOfTelecom.code ska formatet följa ITU

Om värde är 5 på typeOfTelecom.code ska formatet följa RFC2822

Regel 4: validity.start måste vara tidigare än eller lika med validity.end

Regel 5: datePeriod.start måste vara tidigare än eller lika med datePeriod.end

Regel 6: Där fältet description används, ska fältet language.code vara satt till ”swe” och fältet role.code vara satt till ”257513009” för åtminstone en av beskrivningarna.

Regel 7: Endast beskrivningar där language.code är samma i svaret som actorLanguage.code i begäran ska returneras.

Regel 8: Endast beskrivningar där role.code är samma i svaret som role.code i begäran ska returneras. Om svaret saknar den role.code som är angiven i begäran, ska svaret returnera role.code som är satt till ”257513009”.

Regel 9: Om language ej anges i begäran, ska samtliga texter där language.code är satt till något värde + där language saknas returneras.

Regel 10: Om role ej anges i begäran, ska samtliga texter returneras.

Regel 11:

| management | publicProvider |
| :--- | :--- |
| Region | true |
| Kommun | true |
| Statlig | true |
| Privat | false |
| Övrigt | false |

##### 7.2.3.1 Icke-funktionella krav

###### 7.2.3.1.1 SLA-krav

Se generella SLA-krav för tjänstedomänen.

#### 7.2.4 Annan information om kontraktet

För att möjliggöra för konsumenter att anropa alla logiska adressater som hittas via GetOfferingCatalogues, utan att ha tidigare vetskap om dessa, ska anropsbehörighet enbart kontrolleras på tjänstekontraktet, och ej på logisk adressat.

#### 7.2.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| careServiceId | IIType |  | 0..* |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| typeOfCareService | CVType |  | 0..* |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| typeOfPlace | TypeOfPlaceType |  | 1..1 |
| ../typeOfPlaceEnum | TypeOfPlaceEnum |  | 1..1 |
| typeOfBusiness | CVType |  | 0..* |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| providingOrganization | SearchProvidingOrganizationType |  | 0..1 |
| ../providingOrganizationId | IIType |  | 0..* |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../management | CVType |  | 0..* |
| ../../code | string |  | 1..1 |
| ../../codeSystem | string |  | 1..1 |
| ../../codeSystemName | string |  | 0..1 |
| ../../codeSystemVersion | string |  | 0..1 |
| ../../displayName | string |  | 0..1 |
| ../../originalText | string |  | 0..1 |
| ../publicProvider | boolean |  | 0..1 |
| actorLanguage | CVType |  | 0..1 |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| actorRole | CVType |  | 0..1 |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| performingOrganizationId | IIType |  | 0..* |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| targetGroupAge | int |  | 0..1 |
| targetGroupGender | CVType |  | 0..1 |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| targetGroupAttribute | TargetGroupAttributeType |  | 0..* |
| ../typeOfPersonalAttribute | CVType |  | 1..1 |
| ../../code | string |  | 1..1 |
| ../../codeSystem | string |  | 1..1 |
| ../../codeSystemName | string |  | 0..1 |
| ../../codeSystemVersion | string |  | 0..1 |
| ../../displayName | string |  | 0..1 |
| ../../originalText | string |  | 0..1 |
| ../attributeValue | string |  | 1..1 |
| location | SearchLocationType |  | 0..1 |
| ../geographicalLocation | SearchGeographicalLocationType |  | 0..1 |
| ../../geographicalCoordinates | GeoLocationType |  | 1..1 |
| ../../../north | long |  | 1..1 |
| ../../../east | long |  | 1..1 |
| ../../radius | int |  | 1..1 |
| ../county | CVType |  | 0..* |
| ../../code | string |  | 1..1 |
| ../../codeSystem | string |  | 1..1 |
| ../../codeSystemName | string |  | 0..1 |
| ../../codeSystemVersion | string |  | 0..1 |
| ../../displayName | string |  | 0..1 |
| ../../originalText | string |  | 0..1 |
| ../municipality | CVType |  | 0..* |
| ../../code | string |  | 1..1 |
| ../../codeSystem | string |  | 1..1 |
| ../../codeSystemName | string |  | 0..1 |
| ../../codeSystemVersion | string |  | 0..1 |
| ../../displayName | string |  | 0..1 |
| ../../originalText | string |  | 0..1 |
| searchTerm | string |  | 0..* |
| **Svar** | | | |
| careService | CareServiceType |  | 0..* |
| ../careServiceId | IIType |  | 0..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../typeOfCareService | CVType |  | 1..1 |
| ../../code | string |  | 1..1 |
| ../../codeSystem | string |  | 1..1 |
| ../../codeSystemName | string |  | 0..1 |
| ../../codeSystemVersion | string |  | 0..1 |
| ../../displayName | string |  | 0..1 |
| ../../originalText | string |  | 0..1 |
| ../typeOfCareServiceDescription | DescriptionType |  | 0..* |
| ../../text | string |  | 1..1 |
| ../../language | CVType |  | 0..1 |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../role | CVType |  | 0..* |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../validity | DatePeriodType | Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD | 1..1 |
| ../../start | DateType |  | 0..1 |
| ../../end | DateType |  | 0..1 |
| ../careServiceStatus | CareServiceStatusEnum |  | 1..1 |
| ../careOption | boolean |  | 1..1 |
| ../referralRequired | boolean |  | 1..1 |
| ../description | DescriptionType |  | 0..* |
| ../../text | string |  | 1..1 |
| ../../language | CVType |  | 0..1 |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../role | CVType |  | 0..* |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../indicator | IndicatorType |  | 0..* |
| ../../indicatorId | IIType |  | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../logicalAddress | string |  | 1..1 |
| ../requestTemplate | RequestTemplateType |  | 0..1 |
| ../../address | anyURI |  | 1..1 |
| ../../mandatory | boolean |  | 1..1 |
| ../providingOrganization | ProvidingOrganizationType |  | 1..1 |
| ../../id | IIType |  | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../name | string |  | 1..1 |
| ../../management | CVType |  | 1..1 |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../publicProvider | boolean |  | 1..1 |
| ../../description | DescriptionType |  | 0..* |
| ../../../text | string |  | 1..1 |
| ../../../language | CVType |  | 0..1 |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../../../role | CVType |  | 0..* |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../performingOrganization | PerformingOrganizationType |  | 1..1 |
| ../../id | IIType |  | 1..* |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../name | string |  | 0..* |
| ../../responsibleOrganization | ResponsibleOrganizationType |  | 1..1 |
| ../../../id | IIType |  | 1..1 |
| ../../../../root | string |  | 1..1 |
| ../../../../extension | string |  | 0..1 |
| ../../../name | string |  | 1..1 |
| ../../../description | DescriptionType |  | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../language | CVType |  | 0..1 |
| ../../../../../code | string |  | 1..1 |
| ../../../../../codeSystem | string |  | 1..1 |
| ../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../displayName | string |  | 0..1 |
| ../../../../../originalText | string |  | 0..1 |
| ../../../../role | CVType |  | 0..* |
| ../../../../../code | string |  | 1..1 |
| ../../../../../codeSystem | string |  | 1..1 |
| ../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../displayName | string |  | 0..1 |
| ../../../../../originalText | string |  | 0..1 |
| ../../availableTime | CalendarType |  | 0..* |
| ../../typeOfBusiness | CVType |  | 0..* |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../description | DescriptionType |  | 0..* |
| ../../../text | string |  | 1..1 |
| ../../../language | CVType |  | 0..1 |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../../../role | CVType |  | 0..* |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../patientFee | MOType |  | 0..1 |
| ../../value | decimal |  | 1..1 |
| ../../currency | string |  | 1..1 |
| ../targetGroup | TargetGroupType |  | 0..* |
| ../../age | PositiveIntPeriodType |  | 0..1 |
| ../../../start | int |  | 0..1 |
| ../../../end | int |  | 0..1 |
| ../../gender | CVType |  | 0..1 |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../targetGroupAttribute | TargetGroupAttributeType |  | 0..* |
| ../../../typeOfPersonalAttribute | CVType |  | 1..1 |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../../../attributeValue | string |  | 1..1 |
| ../location | LocationType |  | 1..* |
| ../../geographicalLocation | GeographicalLocationType |  | 0..1 |
| ../../../county | CVType |  | 0..1 |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../../../municipality | CVType |  | 0..1 |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../../../otherLocation | OtherLocationType |  | 0..1 |
| ../../../../polygon | GeoLocationType |  | 3..* |
| ../../../../../north | long |  | 1..1 |
| ../../../../../east | long |  | 1..1 |
| ../../../../name | string |  | 0..1 |
| ../../physicalLocation | PhysicalLocationType |  | 0..1 |
| ../../../locationAddress | string |  | 0..1 |
| ../../../geographicalCoordinates | GeoLocationType |  | 0..1 |
| ../../../../north | long |  | 1..1 |
| ../../../../east | long |  | 1..1 |
| ../../virtualLocation | VirtualLocationType |  | 0..1 |
| ../../../id | anyURI |  | 1..1 |
| ../../description | DescriptionType |  | 0..* |
| ../../../text | string |  | 1..1 |
| ../../../language | CVType |  | 0..1 |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../../../role | CVType |  | 0..* |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../contactInformation | ContactInformationType |  | 0..* |
| ../../ranking | int |  | 0..1 |
| ../../forRole | CVType |  | 0..* |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../purpose | string |  | 0..1 |
| ../../address | string |  | 0..1 |
| ../../availableTime | CalendarType |  | 0..* |
| ../../telecom | TelecomType |  | 0..1 |
| ../../../typeOfTelecom | CVType |  | 1..1 |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../../../contactPoint | string |  | 1..1 |
| ../../description | DescriptionType |  | 0..* |
| ../../../text | string |  | 1..1 |
| ../../../language | CVType |  | 0..1 |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../../../role | CVType |  | 0..* |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../cooperation | CooperationType |  | 0..* |
| ../../typeOfCooperation | string |  | 1..1 |
| ../../validity | DatePeriodType | Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD | 0..1 |
| ../../../start | DateType |  | 0..1 |
| ../../../end | DateType |  | 0..1 |
| ../../referenceToCareServiceId | IIType |  | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../description | DescriptionType |  | 0..* |
| ../../../text | string |  | 1..1 |
| ../../../language | CVType |  | 0..1 |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../../../role | CVType |  | 0..* |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../resource | ResourceType |  | 0..* |
| ../../typeOfResource | CVType |  | 1..1 |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../resourceAttribute | string |  | 0..1 |
| ../../availableTime | CalendarType |  | 0..* |
| ../../description | DescriptionType |  | 0..* |
| ../../../text | string |  | 1..1 |
| ../../../language | CVType |  | 0..1 |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../../../role | CVType |  | 0..* |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../interferenceInformation | InterferenceInformationType |  | 0..* |
| ../../datePeriod | DatePeriodType | Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD | 1..1 |
| ../../../start | DateType |  | 0..1 |
| ../../../end | DateType |  | 0..1 |
| ../../typeOfInterference | CVType |  | 0..1 |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../description | DescriptionType |  | 1..* |
| ../../../text | string |  | 1..1 |
| ../../../language | CVType |  | 0..1 |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| ../../../role | CVType |  | 0..* |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |

#### 7.2.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetCareServiceOfferingsResponder:3:GetCareServiceOfferings`

#### 7.2.7 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetCareServiceOfferingsInteraction_3.0_RIVTABP21.wsdl](GetCareServiceOfferingsInteraction_3.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetCareServiceOfferingsResponder_3.0.xsd](GetCareServiceOfferingsResponder_3.0.xsd) | Tjänsteschema |
| [supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd](supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd) | Domänschema (delat) |
| [supportprocess_serviceprovisioning_healthcareoffering_3.0_enums.xsd](supportprocess_serviceprovisioning_healthcareoffering_3.0_enums.xsd) | Domänschema, uppräkningar (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_GetCareServiceOfferings_2.1.docx](SjD_TK_GetCareServiceOfferings_2.1.docx) | Självdeklaration (tjänstekonsument), version 2.1 |
| [SjD_TK_GetCareServiceOfferings_3.0.docx](SjD_TK_GetCareServiceOfferings_3.0.docx) | Självdeklaration (tjänstekonsument), version 3.0 |
| [SjD_TP_GetCareServiceOfferings_2.1.docx](SjD_TP_GetCareServiceOfferings_2.1.docx) | Självdeklaration (tjänsteproducent), version 2.1 |
| [SjD_TP_GetCareServiceOfferings_3.0.docx](SjD_TP_GetCareServiceOfferings_3.0.docx) | Självdeklaration (tjänsteproducent), version 3.0 |

#### 7.2.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getcareserviceofferings-request](StructureDefinition-getcareserviceofferings-request.html)
* **Logisk modell (response):** [StructureDefinition/getcareserviceofferings](StructureDefinition-getcareserviceofferings.html)
* **Kodsystem:** [CodeSystem/healthcareoffering-careservicestatus-cs](CodeSystem-healthcareoffering-careservicestatus-cs.html)
* **ValueSet:** [ValueSet/healthcareoffering-careservicestatus-vs](ValueSet-healthcareoffering-careservicestatus-vs.html)
* **Kodsystem:** [CodeSystem/healthcareoffering-typeofplace-cs](CodeSystem-healthcareoffering-typeofplace-cs.html)
* **ValueSet:** [ValueSet/healthcareoffering-typeofplace-vs](ValueSet-healthcareoffering-typeofplace-vs.html)

