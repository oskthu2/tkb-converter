Terminologitjänst
Tjänstekontraktsbeskrivning
Version PA1
2013-10-30
Innehållsförteckning
1	Inledning	5
1.1	Översikt	5
1.2	Ordlista	5
2	Versionsinformation	7
2.1	Version 1.0.0.	7
2.1.1	Oförändrade tjänstekontrakt	7
2.1.2	Nya tjänstekontrakt	7
2.1.3	Förändrade tjänstekontrakt	7
2.1.4	Utgångna tjänstekontrakt	7
2.2	Version tidigare	7
3	Tjänstedomänens arkitektur	8
3.1	Flöden	8
3.1.1	Hämta urval	8
3.1.2	Hämta endast uppdaterade urval	8
3.1.3	Sökning i terminologi	9
3.1.4	Obligatoriska kontrakt	10
3.2	Adressering	10
3.3	Aggregering och engagemangsindex	10
4	Tjänstedomänens krav och regler	11
4.1	Informationssäkerhet och juridik	11
4.2	Felhantering	11
4.2.1	Krav på en tjänsteproducent	11
4.2.2	Krav på en tjänstekonsument	11
4.3	Icke funktionella krav	11
4.3.1	SLA krav	11
5	Tjänstedomänens meddelandemodeller	13
5.1	V-MIM Hämta urval	13
5.2	V-MIM Hämta information om urval	14
5.3	V-MIM Sökning i terminologi	14
5.4	Formatregler	15
6	Tjänstedomänens gemensamma komponenter	16
6.1.1	Soapenv:Header	16
6.1.2	SubsetType	16
6.1.3	SubsetInformationType	16
6.1.4	ConceptType	16
6.1.5	MetadataType	16
6.1.6	Kontrakt	17
7	Tjänstekontrakt	18
7.1	GetTerminologySubset	18
7.1.1	Version	18
7.1.2	Fältregler	18
7.1.3	Övriga regler	18
7.2	GetTerminologySubsetInformation	20
7.2.1	Version	20
7.2.2	Fältregler	20
7.2.3	Övriga regler	20
7.3	GetConcepts	22
7.3.1	Version	22
7.3.2	Fältregler	22
7.3.3	Övriga regler	23
Revisionshistorik

| Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- |
| PA1 | 2013-10-30 | Första version för granskning | Eva Biberg, Mawell / Torbjörn Dahlin, Mawell |  |
Referenser (tabell)

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Terminologitjänst | Obligatoriskt |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen infrastructure:informationstructureservice:terminology. Den svenska benämningen är ”Terminologitjänst”.
Tjänstekontraktsbeskrivningen är ett teknikoberoende, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Översikt
Kontrakten i denna domän ger tillgång till en terminologitjänst som stödjer ett modernt arbete med klassifikationer och begreppssystem så som Snomed CT. Dessa tjänster är designade för att kunna stödja dynamiska urval av begrepp och termer både för användning av andra tjänstekontrakt och för framtagande av användargränssnitt och applikationer i den nationella arkitekturen. Tjänstekontrakten ger möjlighet att ha olika termer för samma begrepp vilket skulle kunna användas för att presentera klinisk information på olika språk eller exempelvis skilja på allmänspråkliga definitioner och kliniskt fackspråk. Den bakomliggande informationsmodellen ger även möjlighet att hantera begreppsrelationer inom eller mellan olika begreppssystem. Exempelvis kan man söka sig igenom Snomed CTs begreppshierarki längs vissa typer av relationsbegrepp, eller översätta begrepp mellan olika system (exempelvis ICD-10 till Snomed CT under förutsättning att denna mappning finns tillgänglig).

### Ordlista

| Term | Beskrivning |
| :--- | :--- |
| Terminologi | I detta dokument omfattar termen terminologi både klassifikationer (exempelvis ICD-10) och begreppssystem (exempelvis Snomed CT). |
| Term | I detta dokument används ordet ”term” i en vidare betydelse än den allmänspråkliga betydelsen. Term kan i detta fall bestå av ett ord som beskriver det avsedda begreppet, men i vissa fall krävs det flera ord för att kunna peka ut begreppet entydigt. I dessa fall avser detta dokument med ”term” då alla ord som krävs för att beskriva begreppet. |

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om version 1... Detta är den version som är den senast publicerade på RIV TA’s hemsida.

### Version 1...

#### Oförändrade tjänstekontrakt
Finns inga tidigare versioner av tjänstekontrakten, samtliga anges således som nya tjänstekontrakt.

#### Nya tjänstekontrakt
GetTerminologySubet, version 1.0
GetTerminologySubetInformation, version 1.0
GetConcepts, version 1.0

#### Förändrade tjänstekontrakt
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
|  |  |  |  |
|  |  |  |  |

#### Utgångna tjänstekontrakt
Finns inga tidigare versioner av tjänstekontraktsbeskrivningen, således har inte några tjänstekontrakt utgått.

### Version tidigare
Finns inga tidigare versioner av tjänstekontraktsbeskrivningen.

## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden

#### Hämta urval
Nedanstående sekvensdiagram visar ett vårdinformationsystem som hämtar ett urval med begrepp och termer från en producent av terminologitjänstekontrakten. Det tjänstekontrakt som används är GetTerminologySubset.
Rekommendationen är att konsumenter av urvalstjänsten lagrar en kopia av resultatet av anropet lokalt för att inte vara beroende av terminologitjänstens tillgänglighet.

![img_004.png](images/img_004.png)
*Figur 1. Sekvensdiagram hämta urval.*

#### Hämta endast uppdaterade urval
Nedanstående sekvensdiagram visar:
Hur ett vårdinformationssystem hämtar en versionsidentifierare för ett eller flera urval från terminologitjänsten. Det tjänstekontrakt som används är GetTerminologySubsetInformation.
Hur ett vårdinformationssystem uppdaterar ett urval genom att hämta de begrepp och termer som ingår i urvalet från terminologitjänsten. Det tjänstekontrakt som används är GetTerminologySubset.

![img_003.png](images/img_003.png)
*Figur . Sekvensdiagram hämta endast uppdaterade urval.*
Versionsidentifieraren som hämtas i första steget använder konsumenten för att jämföra med sin befintliga version av urvalet. I flödet hämta endast uppdaterade urval hämtas således endast begrepp och termer då konsumenten inte redan har den senaste versionen av urvalet. Första gången konsumenten hämtar urvalet finns förstås ingen befintlig versionsidentifierare och konsumenten kan då välja att hämta urvalet direkt utan att först läsa ut aktuell version.
Detta sätt att uppdatera lokal terminologi är att föredra om inte det efterfrågade urvalet är litet.

#### Sökning i terminologi
Nedanstående sekvensdiagram visar ett vårdinformationsystem som söker ut begrepp och termer från terminologitjänsten. Det tjänstekontrakt som används är GetConcepts.

![img_002.png](images/img_002.png)
*Figur 3. Sekvensdiagram sökning i terminologi.*

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde 3.1.1 | Flöde 3.1.2 | Flöde 3.1.3 |
| :--- | :--- | :--- | :--- |
| GetTerminologySubset | X | X |  |
| GetTerminologySubsetInformation |  | X |  |
| GetConcepts |  |  | X |

### Adressering
Den logiska adressen för samtliga tjänster inom domänen är HSA-id för system eller organisation som är ansvarig för det urval eller den terminologi som söks.

### Aggregering och engagemangsindex
Används ej i denna version.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Inga av tjänstekontrakten i domänen hanterar patient, person eller andra sekretesskyddade uppgifter.

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Vid ett logiskt fel i anropet levereras felinformation i svarsmeddelandet (se beskrivningen för respektive tjänst).

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara nätverksproblem eller följdeffekter av programmeringsfel (exempelvis att anropet inte validerar mot tjänstens xml-schema).

#### Krav på en tjänstekonsument
I domänen finns endast lästjänster och det finns inte några krav på att en konsument ska hantera omsändningar. Konsumenter rekommenderas att lagra lokala kopior av uthämtad terminologi för att kunna uppfylla egna SLA-krav.

##### Logiska fel
De felkoder till följd av logiska fel som en konsument kan behöva hantera beskrivs för respektive tjänst.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara nätverksproblem eller följdeffekter av programmeringsfel (exempelvis att anropet inte validerar mot tjänstens xml-schema).

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | <2 sekunder för GetTerminologySubset / <0.5 sekunder för övriga tjänster i domänen | Exklusive nätverksfördröjningar på grund av datavolymer |
| Tillgänglighet | Tjänst driftas med kontorstidssupport. / Tjänsten är normalt tillgänglig 24h/dygn. |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | All information skall alltid vara uppdaterad |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje modell beskrivs hur mappning ser ut mot schema (XSD) för tjänstekontrakt.

### V-MIM Hämta urval
Meddelandet hämta urval hämtar information om de begrepp och termer som ingår i urvalet tillsammans med information om urvalet. För de begrepp som har ytterligare metadata i detta urval hämtas även denna. Notera att metadata är urvalsspecifikt, det vill säga ett begrepp som inte ingår i ett urval har inte metadata, och metadata delas inte mellan olika urval.

![img_001.png](images/img_001.png)
*Figur . Meddelandemodell hämta urval.*

| Klass.attribut | Mappning mot XSD GetTerminologySubsetResponse |
| :--- | :--- |
| Urval.id | Subset/SubsetInformation/@SubsetIdentity |
| Urval.namn | Subset/SubsetInformation/@Name |
| Urval.version | Subset/SubsetInformation/@Version |
| BegreppIUrval.id för lokala utökningar | Subset/Concept/@LocalOrganizationExtensionId |
| Kodsystem.id | Subset/Concept/@CodeSystem |
| Begrepp.kod | Subset/Concept/@Code |
| Term.term | Subset/Concept/@Term |
| Metadata.namn | Subset/Concept/Metadata/@Name |
| Metadata.värde | Subset/Concept/Metadata/@Value |
| Metadata.id för lokala utökningar | Subset/Concept/Metadata/
@LocalOrganizationExtensionId |

### V-MIM Hämta information om urval
Meddelande hämta information om urval hämtar ut senaste versionsidentifierare, namn och id för urval.

![img_005.png](images/img_005.png)
*Figur . Meddelandemodell hämta information om urval.*

| Klass.attribut | Mappning mot XSD GetTerminologySubsetInformationResponse |
| :--- | :--- |
| Urval.id | Subset/SubsetInformation/@SubsetIdentity |
| Urval.namn | Subset/SubsetInformation/@Name |
| Urval.version | Subset/SubsetInformation/@Version |

### V-MIM Sökning i terminologi
Detta meddelande är resultatet av en terminologisökning. Beroende på sökparametrar returneras en delmängd av ett urval med tillhörande metadata och termer. I meddelandet hämtas även information om urvalet.
**
Figur . Meddelandemodell sökning i terminologi.

| Klass.attribut | Mappning mot XSD 
GetConceptsResponse |
| :--- | :--- |
| Urval.id | Subset/SubsetInformation/@SubsetIdentity |
| Urval.namn | Subset/SubsetInformation/@Name |
| Urval.version | Subset/SubsetInformation/@Version |
| BegreppIUrval.id för lokala utökningar | Subset/Concept/@LocalOrganizationExtensionId |
| Kodsystem.id | Subset/Concept/@CodeSystem |
| Begrepp.kod | Subset/Concept/@Code |
| Term.term | Subset/Concept/@Term |
| Metadata.namn | Subset/Concept/Metadata/@Name |
| Metadata.värde | Subset/Concept/Metadata/@Value |
| Metadata.id för lokala utökningar | Subset/Concept/Metadata/
@LocalOrganizationExtensionId |

### Formatregler
Det finns inga formatregler utöver de datatyper som anges i respektive tjänstekontrakt.

## Tjänstedomänens gemensamma komponenter
Här beskrivs de komplexa typer som är gemensamma för tjänstekontrakten i domänen.

#### Soapenv:Header

| Soapenv:Header | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| LogicalAddress | itr:LogicalAddress | HSA-id för system eller organisation som är ansvarig för eftersökt terminologi. | 1..1 |

#### SubsetType

| SubsetType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetInformation | SubsetInformationType | Information om urvalet | 1..1 |
| Concept | ConceptType | Lista med begrepp | 0..* |

#### SubsetInformationType

| SubsetInformationType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetIdentity | String(128) | Identifierare för urval | 1..1 |
| Name | String(100) | Namn som representerar urval | 1..1 |
| Version | String(32) | Versionsidentifierare för urval. Formatet är valfritt för tjänsteproducent med det enda kravet att det med en lexikografisk jämförelse ska gå att avgöra vilken av två versionsidentifierare som är den senaste. | 1..1 |

#### ConceptType

| ConceptType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| CodeSystem | String(64) | Identifierare av kodsystem | 1..1 |
| Code | String(1000) | Begreppskod | 1..1 |
| Term | String(1000) | Term som beskriver begreppet | 1..1 |
| LocalOrganizationExtensionId | String(128) | Id för system eller organisation | 0..1 |
| Metadata | MetadataType | Lista med metadata | 0..* |

#### MetadataType

| MetadataType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Name | String(64) | Identifierar typ av metadata | 1..1 |
| Value | String(1000) | Metadatavärde | 1..1 |
| LocalOrganizationExtensionId | String(128) | Id för system eller organisation | 0..1 |

#### Kontrakt
Följande tabell specificerar i vilka kontrakt som respektive typ används i.

| Tjänstekontrakt | Typ 6.1.16.1.1 | Typ 6.1.2 | Typ 6.1.3 | Typ 6.1.4 | Typ
6.1.5 |
| :--- | :--- | :--- | :--- | :--- | :--- |
| GetTerminologySubset | X | X | X | X | X |
| GetTerminologySubsetInformation | X |  | X |  |  |
| GetConcepts | X | X | X | X | X |

## Tjänstekontrakt

### GetTerminologySubset
GetTerminologySubset hämtar ut en delmängd (subset) av en eller flera terminologier (exempelvis SNOMED CT, ICD-10, ATC-kodverket) som är användbara i ett visst sammanhang. Tjänsten returnerar en lista med de begrepp som ingår i urvalet tillsammans med information om urvalet.

#### Version
Version på detta kontrakt: 1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| GetTerminologySubsetRequestType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetIdentity | String | Identifierare för urvalet | 1..1 |
| LocalOrganizationExtensionId | String | Id för system eller organisation som har lokala tillägg för urvalet. Om denna anges kommer det gemensamma urvalet returneras tillsammans med de koder i urvalet som är specifika för aktuella systemet/organisationen. | 0..1 |
| TermType | String | Typ av term som ska användas. | 1..1 |

| GetTerminologySubsetResponseType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Subset | SubsetType | Urval | 0..1 |
| ResultCode | String | OK = Subset hämtades utan avvikelser / ERROR = Fel vid hämtningen. Felet beskrivs i elementet comment / INFO = Information finns. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om felaktiga parametrar. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

##### Version för urval
Konsumenten bör spara version för sin befintliga uppsättning av urvalet. Versionsidentifierare kan hämtas separat via tjänsten GetTerminologySubsetInformation för att konsumenten ska kunna verifiera om ny laddning av urvalet är nödvändig.

##### Felhantering
Om en okänd SubsetIdentity skickas in returneras ERROR.
I de fall då ett meddelande omfattar LocalOrganizationExtensionId som inte finns returneras INFO. Begrepp som ingår i det gemensamma urvalet hämtas.

### GetTerminologySubsetInformation
GetTerminologySubsetInformation hämtar ut namn, id och versionsidentifierare för ett eller flera subset. Versionsidentifierare används för att konsumenten ska kunna verifiera om ny information finns i GetTerminologySubset.

#### Version
Version på detta kontrakt: 1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| GetTerminologySubset
InformationRequestType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetIdentity | String | Identifierare för urvalet | 1..* |
| LocalOrganizationExtensionId | String | Id för system eller organisation som har lokala tillägg för urvalet. Om denna anges kommer det gemensamma urvalet returneras tillsammans med de koder i urvalet som är specifika för aktuella systemet/organisationen. | 0..1 |
| TermType | String | Typ av term som ska användas. | 1..1 |

| GetTerminologySubset
InformationResponseType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetInformation | Subset
Information
Type | Information om urval | 0..* |
| ResultCode | String | OK = Information hämtades / ERROR = Fel vid hämtningen. Felet beskrivs i elementet comment / INFO = Information finns. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om felaktiga parametrar. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

##### Felhantering
Om endast okända SubsetIdentity skickas in returneras ERROR.
I de fall då ett meddelande omfattar flera SubsetIdentity returneras INFO tillsammans med information om vilka identifierare som var felaktiga. Information hämtas för giltiga identifierare.

### GetConcepts
GetConcepts hämtar ut sökta begrepp och termer från ett urval (subset) av en eller flera terminologier (exempelvis SNOMED CT, ICD-10, ATC-kodverket). Begreppen söks ut med exempelvis kod som beskriver begreppet.

#### Version
Version på detta kontrakt: 1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| GetConceptsRequestType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetIdentity | String | Identifierare för urvalet | 1..1 |
| LocalOrganizationExtensionId | String | Id för system eller organisation som har lokala tillägg för urvalet. Om denna anges kommer det gemensamma urvalet returneras tillsammans med de koder i urvalet som är specifika för aktuella systemet/organisationen. | 0..1 |
| CodeSystem | String | Identifierare av kodsystem | 0..1 |
| Code | String | Begreppskod. Del av begreppskod kan anges. | 0..1 |
| Term | String | Term som beskriver begreppet. Del av term kan anges. | 0..1 |
| ConceptsResponseThreshold* | Int | Antal begrepp som max ska returneras i svaret | 0..1 |
| TermType | String | Typ av term som ska användas. | 1..1 |

| GetConceptsResponseType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Subset | SubsetType | Urval | 0..1 |
| ResultCode | String | OK = Sökningen lyckades och alla poster returnerades / ERROR = Fel vid hämtningen. Felet beskrivs i elementet comment / INFO = Information finns. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om felaktiga parametrar. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Fält 1 - ConceptsResponseThreshold
Valfritt värde. Om inget värde anges kan en implementation välja att begränsa max antal returnerade termer.

##### Felhantering
Om en okänd SubsetIdentity skickas in returneras ERROR.
Om fler antal begrepp finns än angivet maxantal i svaret returneras INFO.
Om fler antal begrepp finns än den största mängd som en viss implementation har som inbyggd maxgräns returneras INFO.
I de fall då ett meddelande omfattar LocalOrganizationExtensionId som inte finns returneras INFO. Begrepp som ingår i det gemensamma urvalet hämtas.
