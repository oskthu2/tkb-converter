// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareServiceOfferingsRequestFieldDescriptions
* careServiceId ^definition = "Vård- och omsorgstjänstens id

Begränsar sökningen så att endast poster med angivet id för vård- och omsorgstjänst returneras.

Om HSA-id används:

careServiceId.root: 1.2.752.129.2.1.4.1

careServiceId.extension: `<hsa-id>`

Om ej HSA-id:

careServiceId.root: `<UUID>`

careServiceId.extension: Anges ej"
* careServiceId ^comment = "TKB-fält: `careServiceId` (`IIType`, kardinalitet 0..*)."
* careServiceId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* careServiceId.iiExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* typeOfCareService ^definition = "Typ av vård- och omsorgstjänst

Begränsar sökningen så att endast poster med angiven typ av vård- och omsorgstjänst returneras.

Exempel:

Allergologisk konsultation

Kognitiv beteendeterapi via internet

Då Snomed CT används:

typeOfCareService.codesystem: 1.2.752.116.2.1.1

I första hand ska koder från det nationella utbudkodsurvalet användas men Snomed CT-koder från lokalt urval kan förekomma.

Då verksamhetskod används: typeOfCareService.codesystem: 1.2.752.129.2.2.1.3

Kod väljs från HSA verksamhetskodverk. Då en verksamhetskod används ska konsumenten logiskt lägga till prefixet ”Vårdtjänster inom verksamhetsområdet …” till klartexten för verksamhetskoden."
* typeOfCareService ^comment = "TKB-fält: `typeOfCareService*` (`CVType`, kardinalitet 0..*)."
* typeOfCareService.cvCode ^comment = "TKB-fält: `../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* typeOfCareService.codeSystem ^comment = "TKB-fält: `../codeSystem` (`string`, kardinalitet 1..1)."
* typeOfCareService.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1)."
* typeOfCareService.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1)."
* typeOfCareService.displayName ^comment = "TKB-fält: `../displayName` (`string`, kardinalitet 0..1)."
* typeOfCareService.originalText ^comment = "TKB-fält: `../originalText` (`string`, kardinalitet 0..1)."
* typeOfPlace ^definition = "Typ av plats

Filtrerar sökresultatet så att endast poster med angiven typ av plats som vård-och omsorgstjänsten erbjuds på returneras.

En av följande:

PHYSICAL – endast fysisk plats

VIRTUAL – endast virtuell plats

ALL - både fysisk och virtuell plats"
* typeOfPlace ^comment = "TKB-fält: `typeOfPlace` (`TypeOfPlaceType`, kardinalitet 1..1)."
* typeOfPlace.typeOfPlaceEnum ^comment = "TKB-fält: `../typeOfPlaceEnum` (`TypeOfPlaceEnum`, kardinalitet 1..1)."
* typeOfBusiness ^definition = "Typ av verksamhet

Filtrerar sökresultatet så att endast poster med angiven typ av verksamhet returneras.

Om HSA verksamhetskod

typeOfBusiness.codeSystem:

1.2.752.129.2.2.1.3"
* typeOfBusiness ^comment = "TKB-fält: `typeOfBusiness*` (`CVType`, kardinalitet 0..*)."
* typeOfBusiness.cvCode ^comment = "TKB-fält: `../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* typeOfBusiness.codeSystem ^comment = "TKB-fält: `../codeSystem` (`string`, kardinalitet 1..1)."
* typeOfBusiness.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1)."
* typeOfBusiness.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1)."
* typeOfBusiness.displayName ^comment = "TKB-fält: `../displayName` (`string`, kardinalitet 0..1)."
* typeOfBusiness.originalText ^comment = "TKB-fält: `../originalText` (`string`, kardinalitet 0..1)."
* providingOrganization ^definition = "Katalogansvarig organisation"
* providingOrganization ^comment = "TKB-fält: `providingOrganization` (`searchProvidingOrganizationType`, kardinalitet 0..1)."
* providingOrganization.providingOrganizationId ^definition = "Id på katalogansvarig organisation

Filtrerar sökresultatet så att endast poster med angivet id för katalogansvarig organisation returneras.

För Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7)

För Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1)"
* providingOrganization.providingOrganizationId ^comment = "TKB-fält: `../providingOrganizationId` (`IIType`, kardinalitet 0..*)."
* providingOrganization.providingOrganizationId.root ^comment = "TKB-fält: `../../root` (`string`, kardinalitet 1..1)."
* providingOrganization.providingOrganizationId.iiExtension ^comment = "TKB-fält: `../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* providingOrganization.management ^definition = "Ägarform

Filtrerar sökresultatet så att endast poster med angiven ägarform för den katalogansvariga organisationen returneras.

Anges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14].

Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* providingOrganization.management ^comment = "TKB-fält: `../management` (`CVType`, kardinalitet 0..*)."
* providingOrganization.management.cvCode ^comment = "TKB-fält: `../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* providingOrganization.management.codeSystem ^comment = "TKB-fält: `../../codeSystem` (`string`, kardinalitet 1..1)."
* providingOrganization.management.codeSystemName ^comment = "TKB-fält: `../../codeSystemName` (`string`, kardinalitet 0..1)."
* providingOrganization.management.codeSystemVersion ^comment = "TKB-fält: `../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* providingOrganization.management.displayName ^comment = "TKB-fält: `../../displayName` (`string`, kardinalitet 0..1)."
* providingOrganization.management.originalText ^comment = "TKB-fält: `../../originalText` (`string`, kardinalitet 0..1)."
* providingOrganization.publicProvider ^definition = "Offentlig huvudman

Filtrerar sökresultatet så att endast poster där vård- och omsorgstjänst som erbjuds av en offentlig huvudman returneras om fältet sätts till true.

Om fältet ej anges returneras vård- och omsorgstjänster som erbjuds av både offentlig och ej offentlig huvudman."
* providingOrganization.publicProvider ^comment = "TKB-fält: `../publicProvider` (`Boolean`, kardinalitet 0..1)."
* actorLanguage ^definition = "Språk för aktör

Filtrerar sökresultat så att poster med angivet språk returneras.

Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for

comprehensive coverage of languages”.

Endast texter som finns beskrivna på det angivna språket ska returneras. Om det saknas text för angivet språk, returneras texter på svenska.

Det är endast beskrivningar som ska returneras på olika språk, ej displayName för CV-typerna.

Om språk ej anges, ska samtliga texter returneras.

Exempel på code:

swe (svenska)

eng (engelska)

deu (tyska)

actorLanguage.code: swe

actorLanguage.displayName: Swedish

actorLanguage.codeSystem: 1.0.639.3"
* actorLanguage ^comment = "TKB-fält: `actorLanguage*` (`CVType`, kardinalitet 0..1)."
* actorLanguage.cvCode ^comment = "TKB-fält: `../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* actorLanguage.codeSystem ^comment = "TKB-fält: `../codeSystem` (`string`, kardinalitet 1..1)."
* actorLanguage.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1)."
* actorLanguage.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1)."
* actorLanguage.displayName ^comment = "TKB-fält: `../displayName` (`string`, kardinalitet 0..1)."
* actorLanguage.originalText ^comment = "TKB-fält: `../originalText` (`string`, kardinalitet 0..1)."
* actorRole ^definition = "Roll för aktör

Filtrerar sökresultatet så att poster med angiven roll returneras.

Endast texter som finns beskrivna för den angivna rollen returneras. Om det saknas text för angiven roll, returneras texter anpassade för invånare (enskild person) som alltid ska finnas om beskrivningstext finns.

Om roll ej anges, ska samtliga texter returneras.

role.code: 223366009

role.displayname: hälso- och sjukvårdspersonal

role.codesystem:  1.2.752.116.2.1.1

role.code: 257513009

role.displayname: enskild person

role.codesystem:  1.2.752.116.2.1.1"
* actorRole ^comment = "TKB-fält: `actorRole*` (`CVType`, kardinalitet 0..1)."
* actorRole.cvCode ^comment = "TKB-fält: `../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* actorRole.codeSystem ^comment = "TKB-fält: `../codeSystem` (`string`, kardinalitet 1..1)."
* actorRole.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1)."
* actorRole.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1)."
* actorRole.displayName ^comment = "TKB-fält: `../displayName` (`string`, kardinalitet 0..1)."
* actorRole.originalText ^comment = "TKB-fält: `../originalText` (`string`, kardinalitet 0..1)."
* performingOrganizationId ^comment = "TKB-fält: `performingOrganizationId` (`IIType`, kardinalitet 0..*)."
* performingOrganizationId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* performingOrganizationId.iiExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* targetGroupAge ^definition = "Ålder

Filtrerar sökresultatet så att endast poster med angiven ålder returneras.

Åldern avser den person som söker hälso- och sjukvård eller socialtjänst."
* targetGroupAge ^comment = "TKB-fält: `targetGroupAge` (`int`, kardinalitet 0..1)."
* targetGroupGender ^definition = "Kön

Filtrerar sökresultatet så att endast poster med angivet kön returneras.

Könet avser den person som söker hälso- och sjukvård eller socialtjänst.

Kodverk:

Kv_kon

1=man

2=kvinna

Koden ”Övrig” ej tillåten i detta attribut.

Exempel

targetGroupGender.code: 1

targetGroupGender.codesystem: 1.2.752.129.2.2.1.1"
* targetGroupGender ^comment = "TKB-fält: `targetGroupGender*` (`CVType`, kardinalitet 0..1)."
* targetGroupGender.cvCode ^comment = "TKB-fält: `../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* targetGroupGender.codeSystem ^comment = "TKB-fält: `../codeSystem` (`string`, kardinalitet 1..1)."
* targetGroupGender.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1)."
* targetGroupGender.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1)."
* targetGroupGender.displayName ^comment = "TKB-fält: `../displayName` (`string`, kardinalitet 0..1)."
* targetGroupGender.originalText ^comment = "TKB-fält: `../originalText` (`string`, kardinalitet 0..1)."
* targetGroupAttribute ^definition = "Egenskap

Filtrerar sökresultatet så att endast poster med angiven egenskap returneras. Egenskap avser ytterligare information om den person som söker hälso- och sjukvård eller socialtjänst."
* targetGroupAttribute ^comment = "TKB-fält: `,,/targetGroupAttribute` (`TargetGroupAttributeType`, kardinalitet 0..*)."
* targetGroupAttribute.typeOfPersonalAttribute ^definition = "Typ av egenskap

Filtrerar sökresultatet så att endast poster med angiven typ av egenskap returneras.

Exempel:

Graviditetsvecka

Kod från Snomed CT hierarkin 363787002 | observerbar företeelse |"
* targetGroupAttribute.typeOfPersonalAttribute ^comment = "TKB-fält: `../../ typeOfPersonalAttribute*` (`CVType`, kardinalitet 1..1)."
* targetGroupAttribute.typeOfPersonalAttribute.cvCode ^comment = "TKB-fält: `../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* targetGroupAttribute.typeOfPersonalAttribute.codeSystem ^comment = "TKB-fält: `../../codeSystem` (`string`, kardinalitet 1..1)."
* targetGroupAttribute.typeOfPersonalAttribute.codeSystemName ^comment = "TKB-fält: `../../codeSystemName` (`string`, kardinalitet 0..1)."
* targetGroupAttribute.typeOfPersonalAttribute.codeSystemVersion ^comment = "TKB-fält: `../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* targetGroupAttribute.typeOfPersonalAttribute.displayName ^comment = "TKB-fält: `../../displayName` (`string`, kardinalitet 0..1)."
* targetGroupAttribute.typeOfPersonalAttribute.originalText ^comment = "TKB-fält: `../../originalText` (`string`, kardinalitet 0..1)."
* targetGroupAttribute.attributeValue ^comment = "TKB-fält: `../attributeValue` (`string`, kardinalitet 1..1)."
* location ^definition = "Sökområde

Filtrerar sökresultatet så att endast poster med angivet sökområde för vård- och omsorgstjänsten returneras.

Sökområdet kan vara ett geografiskt område, län eller kommun.

I de fall flera sökområden anges ska samtliga vård- och omsorgstjänster med något av de angivna sökområdena returneras."
* location ^comment = "TKB-fält: `location` (`SearchLocationType`, kardinalitet 0..1)."
* location.geographicalLocation ^definition = "Geografiskt område

Filtrerar sökresultatet så att endast poster med angivet geografiskt område returneras. Till geografiskt område hör geografiska koordinater och radie som bildar en area. Producenter behöver inte svara baserat på polygoner i Övrigt område (otherLocation).

Svaret ska returnera vård- och omsorgstjänster med utförandeplats inom den arean."
* location.geographicalLocation ^comment = "TKB-fält: `../geographicalLocation` (`SearchGeographicalLocationType`, kardinalitet 0..1)."
* location.geographicalLocation.geographicalCoordinates ^definition = "Geografiska koordinater

Geografisk lokalisering, dvs den punkt på en karta sökningen ska utgå ifrån."
* location.geographicalLocation.geographicalCoordinates ^comment = "TKB-fält: `../../geographicalCoordinates` (`GeoLocationType`, kardinalitet 1..1)."
* location.geographicalLocation.geographicalCoordinates.north ^definition = "Exempel

geoLocation.north = 5407869"
* location.geographicalLocation.geographicalCoordinates.north ^comment = "TKB-fält: `../../../north` (`long`, kardinalitet 1..1).

**Modellanteckning:** north (xs:long i schemat.)"
* location.geographicalLocation.geographicalCoordinates.east ^definition = "Exempel

geoLocation.east = 485784"
* location.geographicalLocation.geographicalCoordinates.east ^comment = "TKB-fält: `../../../east` (`long`, kardinalitet 1..1).

**Modellanteckning:** east (xs:long i schemat.)"
* location.geographicalLocation.radius ^definition = "Radie

Radie utifrån den geografiska lokaliseringen angiven i positivt heltal och i antal meter.

Används för att söka inom ett område från de geografiska koordinaterna."
* location.geographicalLocation.radius ^comment = "TKB-fält: `../../radius` (`int`, kardinalitet 1..1)."
* location.county ^definition = "Länskod

Filtrerar sökresultatet så att endast poster med angivet län returneras. Länskod enligt SCB:s lista över län och ekomer, se referens R13.  Tvåställig kod.

Exempel:

county.code = 05

county.codeSystem = 1.2.752.129.2.2.1.18

county.displayName = Östergötlands län"
* location.county ^comment = "TKB-fält: `../county*` (`CVType`, kardinalitet 0..*)."
* location.county.cvCode ^comment = "TKB-fält: `../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* location.county.codeSystem ^comment = "TKB-fält: `../../codeSystem` (`string`, kardinalitet 1..1)."
* location.county.codeSystemName ^comment = "TKB-fält: `../../codeSystemName` (`string`, kardinalitet 0..1)."
* location.county.codeSystemVersion ^comment = "TKB-fält: `../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* location.county.displayName ^comment = "TKB-fält: `../../displayName` (`string`, kardinalitet 0..1)."
* location.county.originalText ^comment = "TKB-fält: `../../originalText` (`string`, kardinalitet 0..1)."
* location.municipality ^definition = "Kommunkod

Sökning på kommun. Kommunkod enligt SCB’s lista över län och kommuner, se referens R13. Fyrställig kod.

Exempel:

municipality.code = 0126

municipality.codeSystem = 1.2.752.129.2.2.1.17

municipality.displayName = Huddinge"
* location.municipality ^comment = "TKB-fält: `../municipality*` (`CVType`, kardinalitet 0..*)."
* location.municipality.cvCode ^comment = "TKB-fält: `../../code` (`string`, kardinalitet 1..1).

**Modellanteckning:** cvCode Heter code i schemat."
* location.municipality.codeSystem ^comment = "TKB-fält: `../../codeSystem` (`string`, kardinalitet 1..1)."
* location.municipality.codeSystemName ^comment = "TKB-fält: `../../codeSystemName` (`string`, kardinalitet 0..1)."
* location.municipality.codeSystemVersion ^comment = "TKB-fält: `../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* location.municipality.displayName ^comment = "TKB-fält: `../../displayName` (`string`, kardinalitet 0..1)."
* location.municipality.originalText ^comment = "TKB-fält: `../../originalText` (`string`, kardinalitet 0..1)."
* searchTerm ^definition = "Fritextsökning för att filtrera på vård- och omsorgstjänst baserat på text i nedan listade fritextfält.

För de beskrivande texter nedan som förekommer i flera språk ska sökningen ske i texten som motsvarar det språk som anges i actorLanguage.

Anges inte actorLanguage ska texter för samtliga språk användas i sökningen.

Sökningen ska innehålla minst 3 tecken. Vård- och omsorgstjänst där sökbegreppet överensstämmer med del av text i nedanstående fält ska returneras.

I det fall fler sökbegrepp skickas med i begäran ska samtliga sökbegrepp återfinnas i något av nedanstående fält för att vård- och omsorgstjänsten ska returneras.

Fritextsökning ska ske i fälten:

careService.description.text

careService.typeOfCareService.displayName

careService.providingOrganization. Name

careService.providingOrganization.description

careService.performingOrganization.name

careService.performingOrganization.description.text

careService.performingOrganization.responibleOrganization.name

careService. performingOrganization.responibleOrganization.description.text

careService.location.geographicalLocation.municipality.displayName

careService.location.geographicalLocation.county.displayName"
* searchTerm ^comment = "TKB-fält: `searchTerm` (`string`, kardinalitet 0..*)."
