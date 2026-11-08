// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareServiceOfferingsFieldDescriptions
* careService ^definition = "Vård- och omsorgstjänst

Den tjänst som erbjuds av en organisatorisk enhet för att tillgodose behov av hälso- och sjukvård eller socialtjänst hos invånare."
* careService ^comment = "TKB-fält: `careService` (`CareServiceType`, kardinalitet 0..*)."
* careService.careServiceId ^definition = "Vård- och omsorgstjänstens id

Innehåller vård- och omsorgstjänstens unika identifierare.

Om HSA-id används:

careServiceId.root: 1.2.752.129.2.1.4.1

careServiceId.extension: `<hsa-id>`

Om ej HSA-id:

careServiceId.root: `<UUID>`

careServiceId.extension: Anges ej"
* careService.careServiceId ^comment = "TKB-fält: `../careServiceId` (`IIType`, kardinalitet 0..1)."
* careService.typeOfCareService ^definition = "Typ av vård- och omsorgstjänst.

Den specifika vård- och omsorgstjänsten som erbjuds.

Exempel inom hälso- och sjukvård:

- insättning av totalprotes i höftled

- rehabiliteringsmedicinsk konsultation

Exempel inom socialtjänsten:

- hjälp med inköp

- tillredning av måltider m.m.

Då Snomed CT används:

typeOfCareService.codesystem: 1.2.752.116.2.1.1

/ I första hand ska koder från det nationella utbudkodsurvalet användas men Snomed CT-koder från lokalt urval kan förekomma.

/ Då verksamhetskod används: typeOfCareService.codesystem: 1.2.752.129.2.2.1.3

Kod väljs från HSA verksamhetskodverk.

Då en verksamhetskod används ska konsumenten logiskt lägga till prefixet ”Vårdtjänster inom verksamhetsområdet …” till klartexten för verksamhetskoden.

typeOfCareService.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.

Framtagande av nationellt kodverk pågår."
* careService.typeOfCareService ^comment = "TKB-fält: `../typeOfCareService` (`CVType`, kardinalitet 1..1)."
* careService.typeOfCareServiceDescription ^definition = "Nationellt överenskommen beskrivning av vård- och omsorgstjänsten.

Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.

Det får endast finnas en beskrivning med samma kombination av språk och roll."
* careService.typeOfCareServiceDescription ^comment = "TKB-fält: `../typeOfCareServicedescription*` (`DescriptionType`, kardinalitet 0..*)."
* careService.typeOfCareServiceDescription.text ^definition = "Text

Den textuella beskrivningen."
* careService.typeOfCareServiceDescription.text ^comment = "TKB-fält: `../../text` (`string`, kardinalitet 1..1)."
* careService.typeOfCareServiceDescription.language ^definition = "Språk

Anger kod för det språk beskrivningen är skriven på.

Om fältet inte används antas beskrivningen avse svenska.

Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for comprehensive coverage of languages”.

Exempel på code:

swe (svenska)

eng (engelska)

deu (tyska)

language.code: swe

language.displayname: Swedish

language.codesystem: 1.0.639.3"
* careService.typeOfCareServiceDescription.language ^comment = "TKB-fält: `../../language*` (`CVType`, kardinalitet 0..1)."
* careService.typeOfCareServiceDescription.role ^definition = "Roll

Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.

Om roll inte anges, riktas beskrivningen till samtliga roller.

Urval ur Snomed CT:

role.code: 223366009

role.displayname: hälso- och sjukvårdspersonal

role.codesystem:  1.2.752.116.2.1.1

role.code: 257513009

role.displayname: enskild person

role.codesystem:  1.2.752.116.2.1.1

role.code: 224611006

role.displayname: personal inom socialtjänsten

role.codesystem:  1.2.752.116.2.1.1

role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.typeOfCareServiceDescription.role ^comment = "TKB-fält: `../../role*` (`CVType`, kardinalitet 0..*)."
* careService.validity ^definition = "Giltighet

Giltighetstiden för vård- och omsorgstjänsten.

Exempelvis höftledsoperation som utförs av den organisatoriska enheten x på platsen y erbjuds under perioden 20160101-20171231.

Minst ett av periodens start och end i DatePeriodType ska anges."
* careService.validity ^comment = "TKB-fält: `../validity*` (`DatePeriodType`, kardinalitet 1..1)."
* careService.careServiceStatus ^definition = "Status

Status för vård- och omsorgstjänsten.

En av följande:

INACTIVE = innan vård- och omsorgstjänsten är färdig att erbjudas.

ACTIVE = vård- och omsorgstjänsten är färdigbeskriven och kan erbjudas.

DEPRECATED = vård- och omsorgstjänsten ska ej längre erbjudas"
* careService.careServiceStatus ^comment = "TKB-fält: `../careServiceStatus` (`CareServiceStatusEnum`, kardinalitet 1..1)."
* careService.careOption ^definition = "Vårdval

Sätts till true om vård- och omsorgstjänsten ingår i valfrihetssystem."
* careService.careOption ^comment = "TKB-fält: `../careOption` (`boolean`, kardinalitet 1..1)."
* careService.referralRequired ^definition = "Remisskrav

Anger om det finns krav på remiss för att uppsöka/ta del av vård- och omsorgstjänsten.

För hälso- och sjukvården: Observera att den information som anges här är det eventuella krav på remiss från den organisation/region som ansvarar för att tillhandahålla vård- och omsorgstjänsten. Om remisskrav INTE finns för vård- och omsorgstjänsten, kan det ändå finnas krav från patientens hemregion för denna typ av vård- och omsorgstjänst. Om så är fallet behöver patienten en remiss från hemregionen för att utförare av den erbjudna vård- och omsorgstjänsten ska få ersättning från hemregionen.

Reglerna för detta beskrivs i \"Riksavtalet för utomlänsvård från och med 1 januari 2015\" [R7] sidan 17 under rubriken \"Hemlandstingets remissregler tillämpas också i andra landsting\" och \"Vårdlandstingets remissregler tillämpas också för utomlänspatienter\"."
* careService.referralRequired ^comment = "TKB-fält: `../referralRequired` (`boolean`, kardinalitet 1..1)."
* careService.description ^definition = "Beskrivning av vård- och omsorgstjänsten som är ett lokalt tillägg till den nationellt överenskomna. Detta kan exempelvis i text detaljera hur en viss aktivitet utförs eller om det finns några tillägg till det nationellt överenskomna innehållet i en vård- och omsorgstjänst.

Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.

Det får endast finnas en beskrivning med samma kombination av språk och roll."
* careService.description ^comment = "TKB-fält: `../description*` (`DescriptionType`, kardinalitet 0..*)."
* careService.description.text ^definition = "Text

Den textuella beskrivningen."
* careService.description.text ^comment = "TKB-fält: `../../text` (`string`, kardinalitet 1..1)."
* careService.description.language ^definition = "Språk

Anger kod för det språk beskrivningen är skriven på.

Om fältet inte används antas beskrivningen avse svenska.

Används för att returnera ett svar baserat på aktörens språk. Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for comprehensive coverage of languages”.

Exempel på code:

swe (svenska)

eng (engelska)

deu (tyska)

language.code: swe

language.displayname: Swedish

language.codesystem: 1.0.639.3"
* careService.description.language ^comment = "TKB-fält: `../../language*` (`CVType`, kardinalitet 0..1)."
* careService.description.role ^definition = "Roll

Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.

Om roll inte anges, riktas beskrivningen till samtliga roller.

Urval ur Snomed CT:

role.code: 223366009

role.displayname: hälso- och sjukvårdspersonal

role.codesystem:  1.2.752.116.2.1.1

role.code: 257513009

role.displayname: enskild person

role.codesystem:  1.2.752.116.2.1.1

role.code: 224611006

role.displayname: personal inom socialtjänsten

role.codesystem:  1.2.752.116.2.1.1

role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.description.role ^comment = "TKB-fält: `../../role*` (`CVType`, kardinalitet 0..*)."
* careService.indicator ^definition = "Indikator

Indikator håller referenser till mätningar från SKRs (Sveriges kommuner och regioner) öppna jämförelser som kan kopplas till en viss vård- och omsorgstjänst. Kan exempelvis vara väntetid eller kvalitetsindikator kopplat till den specifika vård- och omsorgstjänsten."
* careService.indicator ^comment = "TKB-fält: `../indicator` (`IndicatorType`, kardinalitet 0..*)."
* careService.indicator.indicatorId ^definition = "Indikator id

Identitetsbeteckning för indikator från SKRs öppna jämförelser som är kopplad till en vård- och omsorgstjänst.

indicator.root = 1.2.826.0.1.3680043.9.4672.7"
* careService.indicator.indicatorId ^comment = "TKB-fält: `../../indicatorId` (`IIType`, kardinalitet 1..1)."
* careService.indicator.logicalAddress ^definition = "Logisk adress

Logisk adress som ska användas för att nå den datakälla där indikatorn finns lagrad."
* careService.indicator.logicalAddress ^comment = "TKB-fält: `../../logicalAddress` (`String`, kardinalitet 1..1)."
* careService.requestTemplate ^definition = "Remissanvisning

Om vårdtjänsten har en fastställd remissanvisning som kan användas vid remittering, anges den adress som remissanvisningen kan hämtas ifrån. Remissanvisningen är ett stöd för att säkerställa att nödvändig information bifogas en remiss."
* careService.requestTemplate ^comment = "TKB-fält: `../requestTemplate` (`RequestTemplateType`, kardinalitet 0..1)."
* careService.requestTemplate.address ^definition = "Adress till remissanvisning

Adress som anger var en remissanvisning finns. Kan vara en URL."
* careService.requestTemplate.address ^comment = "TKB-fält: `../../address` (`anyURI`, kardinalitet 1..1)."
* careService.requestTemplate.mandatory ^definition = "Obligatorisk

Anger om det är obligatoriskt för en remittent att förstå och tillämpa remissanvisningen för att kunna nyttja vårdtjänsten.

True = obligatoriskt att tillämpa remissanvisning vid remittering

False = ej obligatoriskt att tillämpa remissmall vid remittering"
* careService.requestTemplate.mandatory ^comment = "TKB-fält: `../../mandatory` (`boolean`, kardinalitet 1..1)."
* careService.providingOrganization ^definition = "Katalogansvarig organisation

Den organisation som är huvudansvarig och innehållsansvarig för det utbud som svaret visar."
* careService.providingOrganization ^comment = "TKB-fält: `../providingOrganization` (`ProvidingOrganizationType`, kardinalitet 1..1)."
* careService.providingOrganization.id ^definition = "Organisation id

Id för den katalogansvariga organisationen. Innehållet i id styrs av vilken typ av organisation det är

För Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7)

För Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1)"
* careService.providingOrganization.id ^comment = "TKB-fält: `../../id` (`IIType`, kardinalitet 1..1)."
* careService.providingOrganization.name ^definition = "Namn på den katalogansvariga organisationen."
* careService.providingOrganization.name ^comment = "TKB-fält: `../../name` (`String`, kardinalitet 1..1)."
* careService.providingOrganization.management ^definition = "Ägarform

Filtrerar sökresultatet så att endast poster med angiven ägarform för den katalogansvariga organisationen returneras.

Anges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14].

management.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.

Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras."
* careService.providingOrganization.management ^comment = "TKB-fält: `../../management` (`CVType`, kardinalitet 1..1)."
* careService.providingOrganization.publicProvider ^definition = "Offentlig huvudman

Anger om den katalogansvariga organisationen är offentlig huvudman.

True=offentlig huvudman"
* careService.providingOrganization.publicProvider ^comment = "TKB-fält: `../../publicProvider` (`Boolean`, kardinalitet 1..1)."
* careService.providingOrganization.description ^definition = "Beskrivning av den katalogansvariga organisationen. Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.

Det får endast finnas en beskrivning med samma kombination av språk och roll."
* careService.providingOrganization.description ^comment = "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 0..*)."
* careService.providingOrganization.description.text ^definition = "Text

Den textuella beskrivningen."
* careService.providingOrganization.description.text ^comment = "TKB-fält: `../../../text` (`string`, kardinalitet 1..1)."
* careService.providingOrganization.description.language ^definition = "Språk

Anger kod för det språk beskrivningen är skriven på.

Om fältet inte används antas beskrivningen avse svenska.

Används för att returnera ett svar baserat på aktörens språk. Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for

comprehensive coverage of languages”.

Exempel på code:

swe (svenska)

eng (engelska)

deu (tyska)

language.code: swe

language.displayname: Swedish

language.codesystem: 1.0.639.3"
* careService.providingOrganization.description.language ^comment = "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1)."
* careService.providingOrganization.description.role ^definition = "Roll

Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.

Om roll inte anges, riktas beskrivningen till samtliga roller.

Om beskrivning anges, ska minst en beskrivning för invånare anges.

role.code: 223366009

role.displayname: hälso- och sjukvårdspersonal

role.codesystem:  1.2.752.116.2.1.1

role.code: 257513009

role.displayname: enskild person

role.codesystem:  1.2.752.116.2.1.1

role.code: 224611006

role.displayname: personal inom socialtjänsten

role.codesystem:  1.2.752.116.2.1.1

role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.providingOrganization.description.role ^comment = "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*)."
* careService.performingOrganization ^definition = "Utförande organisatorisk enhet

Klassen motsvarar den organisatoriska enheten som utför en aktivitet som erbjudit i form av vård- och omsorgstjänst."
* careService.performingOrganization ^comment = "TKB-fält: `../performingOrganization` (`PerformingOrganizationType`, kardinalitet 1..1)."
* careService.performingOrganization.id ^definition = "Enhets-id

Ett enhets-id på den utförande enheten ska returneras.

Id på organisatoriska enheten kan vara HSA-id.

Exempelvis HSA-id, organisationsnummer

eller lokala id:n.

Om HSA-id (exempel):

id.root =1.2.752.129.2.1.4.1

id.extension = SE2321000115-094882"
* careService.performingOrganization.id ^comment = "TKB-fält: `../../id` (`IIType`, kardinalitet 1..*)."
* careService.performingOrganization.name ^definition = "Enhetsnamn

Lista med namn på den organisatoriska enhet som erbjuder en vård- och omsorgstjänst

Listan ska vara ordnad efter fallande prioritetsordning där det föredragna namnet kommer först.

Namn måste innehålla minst 3 tecken."
* careService.performingOrganization.name ^comment = "TKB-fält: `../../name` (`String`, kardinalitet 0..*)."
* careService.performingOrganization.responsibleOrganization ^definition = "Organisation

Den organisation som den utförande organisatoriska enheten är en del av."
* careService.performingOrganization.responsibleOrganization ^comment = "TKB-fält: `../../responsibleOrganization` (`OrganizationType`, kardinalitet 1..1)."
* careService.performingOrganization.responsibleOrganization.id ^definition = "Id på organisationen.

Om HSA-id (exempel):

id.root =1.2.752.129.2.1.4.1

id.extension = SE2321000115-094882"
* careService.performingOrganization.responsibleOrganization.id ^comment = "TKB-fält: `../../../id` (`IIType`, kardinalitet 1..1)."
* careService.performingOrganization.responsibleOrganization.name ^definition = "Namn på organisationen."
* careService.performingOrganization.responsibleOrganization.name ^comment = "TKB-fält: `../../../name` (`string`, kardinalitet 1..1)."
* careService.performingOrganization.responsibleOrganization.description ^definition = "Beskrivning av organisationen.

Beskrivning av den organisation som ansvarar för den utförande enheten.

Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.

Det får endast finnas en beskrivning med samma kombination av språk och roll."
* careService.performingOrganization.responsibleOrganization.description ^comment = "TKB-fält: `../../../description*` (`DescriptionType`, kardinalitet 0..*)."
* careService.performingOrganization.responsibleOrganization.description.text ^comment = "TKB-fält: `../../../../text` (`string`, kardinalitet 1..1)."
* careService.performingOrganization.responsibleOrganization.description.language ^comment = "TKB-fält: `../../../../language` (`CVType`, kardinalitet 0..1)."
* careService.performingOrganization.responsibleOrganization.description.role ^comment = "TKB-fält: `../../../../role` (`CVType`, kardinalitet 0..*)."
* careService.performingOrganization.availableTime ^definition = "Kalendertid

Den tid som den utförande enheten är tillgänglig.

Se avsnitt 5.2.2 för beskrivning av format."
* careService.performingOrganization.availableTime ^comment = "TKB-fält: `../../availableTime` (`CalendarType`, kardinalitet 0..*)."
* careService.performingOrganization.typeOfBusiness ^definition = "Typ av verksamhet

Kod för den typ av verksamhet som bedrivs.

Om HSA verksamhetskod

typeOfBusiness.codeSystem:

1.2.752.129.2.2.1.3

typeOfBusiness.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.performingOrganization.typeOfBusiness ^comment = "TKB-fält: `../../typeOfBusiness` (`CVType`, kardinalitet 0..*)."
* careService.performingOrganization.description ^definition = "Beskrivning

Beskrivning av den enhet som erbjuder vård- och omsorgstjänsten.

Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.

Det får endast finnas en beskrivning med samma kombination av språk och roll."
* careService.performingOrganization.description ^comment = "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 0..*)."
* careService.performingOrganization.description.text ^definition = "Text

Den textuella beskrivningen."
* careService.performingOrganization.description.text ^comment = "TKB-fält: `../../../text` (`string`, kardinalitet 1..1)."
* careService.performingOrganization.description.language ^definition = "Språk

Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.

Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for

comprehensive coverage of languages”.

Exempel på code:

swe (svenska)

eng (engelska)

deu (tyska)

language.code: swe

language.displayname: Swedish

language.codesystem: 1.0.639.3"
* careService.performingOrganization.description.language ^comment = "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1)."
* careService.performingOrganization.description.role ^definition = "Roll

Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.

Om roll inte anges, riktas beskrivningen till samtliga roller.

role.code: 223366009

role.displayname: hälso- och sjukvårdspersonal

role.codesystem:  1.2.752.116.2.1.1

role.code: 257513009

role.displayname: enskild person

role.codesystem:  1.2.752.116.2.1.1

role.code: 224611006

role.displayname: personal inom socialtjänsten

role.codesystem:  1.2.752.116.2.1.1

role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.performingOrganization.description.role ^comment = "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*)."
* careService.patientFee ^definition = "Patientavgift

Den avgift som ska betalas av patienten.

Valutan anges i SEK enligt ISO 4217.

Exempel:

patientFee.value: 125

patientFee.currency: SEK"
* careService.patientFee ^comment = "TKB-fält: `../patientFee` (`MOType`, kardinalitet 0..1)."
* careService.patientFee.value ^comment = "TKB-fält: `../../value` (`decimal`, kardinalitet 1..1)."
* careService.patientFee.currency ^comment = "TKB-fält: `../../currency` (`string`, kardinalitet 1..1)."
* careService.targetGroup ^definition = "Målgrupp för vård- och omsorgstjänsten"
* careService.targetGroup ^comment = "TKB-fält: `../targetGroup` (`TargetGroupType`, kardinalitet 0..*)."
* careService.targetGroup.age ^definition = "Intervall för den åldersgrupp som vård- och omsorgstjänsten riktas till.

Exempelvis: Vård- och omsorgstjänsten erbjuds endast till barn upp till 5 år.

Intervallet blir då ”0‒5” år.

Om vård- och omsorgstjänsten gäller alla åldersgrupper, används ej detta attribut."
* careService.targetGroup.age ^comment = "TKB-fält: `../../age` (`PositiveIntPeriodType`, kardinalitet 0..1)."
* careService.targetGroup.age.start ^comment = "TKB-fält: `../../../start` (`int`, kardinalitet 0..1)."
* careService.targetGroup.age.end ^comment = "TKB-fält: `../../../end` (`int`, kardinalitet 0..1)."
* careService.targetGroup.gender ^definition = "Kön

Det kön som vård- och omsorgstjänsten riktas till.

Kodverk:

Kv_kon

1=man

2=kvinna

Koden ”övrigt” tillåts ej i detta attribut.

Exempel code: 1

targetGroupGender.codeSystem: 1.2.752.129.2.2.1.1

gender.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.targetGroup.gender ^comment = "TKB-fält: `../../gender` (`CVType`, kardinalitet 0..1)."
* careService.targetGroup.targetGroupAttribute ^definition = "Egenskaper

Egenskaper för målgruppen."
* careService.targetGroup.targetGroupAttribute ^comment = "TKB-fält: `../../targetGroupAttribute` (`TargetGroupAttributeType`, kardinalitet 0..*)."
* careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute ^definition = "Typ av egenskap

Innehåller någon specifik egenskap som identifierar den målgrupp som tjänsten riktas till.

Exempel:

Gravida i veckointervall X-Y

Kod från Snomed CT hierarkin 363787002 | observerbar företeelse |

typeOfPersonalAttribute.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute ^comment = "TKB-fält: `../../../ typeOfPersonalAttribute` (`CVType`, kardinalitet 1..1)."
* careService.targetGroup.targetGroupAttribute.attributeValue ^definition = "Värde

Innehåller detaljer om den specifika egenskapen.

Exempel:

0-20"
* careService.targetGroup.targetGroupAttribute.attributeValue ^comment = "TKB-fält: `../../../attributeValue` (`string`, kardinalitet 1..1)."
* careService.location ^definition = "Plats

Plats där vård- och omsorgstjänsten erbjuds.

Anges med geografiskt område, fysisk plats eller virtuell plats."
* careService.location ^comment = "TKB-fält: `../location*` (`LocationType`, kardinalitet 1..*)."
* careService.location.geographicalLocation ^definition = "Geografiskt område

Anger det geografiska område där vård- och omsorgstjänsten erbjuds.

Anges med län, kommun eller övrigt område."
* careService.location.geographicalLocation ^comment = "TKB-fält: `../../geographicalLocation*` (`GeographicalLocationType`, kardinalitet 0..1)."
* careService.location.geographicalLocation.county ^definition = "Länskod enligt SCB:s lista över län och kommuner, se referens R13. Tvåställig kod.

Exempel:

county.code = 05

county.codeSystem = 1.2.752.129.2.2.1.18

county.displayName = Östergötlands län

county.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.location.geographicalLocation.county ^comment = "TKB-fält: `../../../county` (`CVType`, kardinalitet 0..1)."
* careService.location.geographicalLocation.municipality ^definition = "Kommunkod enligt SCB:s lista över län och kommuner, se referens R13. Fyrställig kod.

Exempel:

municipality.code =  0126

municipality.codeSystem =1.2.752.129.2.2.1.17

municipality.displayName = Huddinge

municipality.displayName returnerar endast svenska även om annat språk är angivet i begäran."
* careService.location.geographicalLocation.municipality ^comment = "TKB-fält: `../../../municipality` (`CVType`, kardinalitet 0..1)."
* careService.location.geographicalLocation.otherLocation ^definition = "Övrigt område är ett begränsat område som vård- och omsorgstjänsten erbjuds inom."
* careService.location.geographicalLocation.otherLocation ^comment = "TKB-fält: `../../../otherLocation` (`OtherLocationType`, kardinalitet 0..1)."
* careService.location.geographicalLocation.otherLocation.polygon ^definition = "Polygon

Det område som avgränsas med minst 3 punkter med sina respektive koordinater."
* careService.location.geographicalLocation.otherLocation.polygon ^comment = "TKB-fält: `../../../../polygon` (`GeoLocationType`, kardinalitet 3..*)."
* careService.location.geographicalLocation.otherLocation.polygon.north ^definition = "Exempel

geoLocation.north = 6407869"
* careService.location.geographicalLocation.otherLocation.polygon.north ^comment = "TKB-fält: `../../../../../north` (`long`, kardinalitet 1..1)."
* careService.location.geographicalLocation.otherLocation.polygon.east ^definition = "Exempel

geoLocation.east = 485748"
* careService.location.geographicalLocation.otherLocation.polygon.east ^comment = "TKB-fält: `../../../../../east` (`long`, kardinalitet 1..1)."
* careService.location.geographicalLocation.otherLocation.name ^definition = "Benämning på övrigt område.

Exempelvis kommundel."
* careService.location.geographicalLocation.otherLocation.name ^comment = "TKB-fält: `../../../../name` (`string`, kardinalitet 0..1)."
* careService.location.physicalLocation ^definition = "Fysisk plats

Den fysiska plats där vård- och omsorgstjänsten erbjuds. Anges med besöksadress och/eller geografiska koordinater."
* careService.location.physicalLocation ^comment = "TKB-fält: `../../physicalLocation` (`PhysicalLocationType`, kardinalitet 0..1)."
* careService.location.physicalLocation.locationAddress ^definition = "Belägenhetsadress.

Adress för fysisk plats där vård- och omsorgstjänsten erbjuds.

Minst ett av attributen locationAddress eller geographicalCoordinates ska anges."
* careService.location.physicalLocation.locationAddress ^comment = "TKB-fält: `../../../locationAddress` (`string`, kardinalitet 0..1)."
* careService.location.physicalLocation.geographicalCoordinates ^definition = "Geografiska koordinater som avgränsar Fysisk plats.

Minst ett av attributen locationAddress eller geographicalCoordinates ska anges."
* careService.location.physicalLocation.geographicalCoordinates ^comment = "TKB-fält: `../../../ geographicalCoordinates` (`GeoLocationType`, kardinalitet 0..1)."
* careService.location.physicalLocation.geographicalCoordinates.north ^comment = "TKB-fält: `../../../../north` (`long`, kardinalitet 1..1)."
* careService.location.physicalLocation.geographicalCoordinates.east ^comment = "TKB-fält: `../../../../east` (`long`, kardinalitet 1..1)."
* careService.location.virtualLocation ^definition = "Virtuell plats

Adress till en viss vård- och omsorgstjänst om den bedrivs virtuellt. Kan exempelvis vara webbadress eller adress där det går att ladda ner en applikation."
* careService.location.virtualLocation ^comment = "TKB-fält: `../../virtualLocation` (`VirtualLocationType`, kardinalitet 0..1)."
* careService.location.virtualLocation.id ^definition = "Id på virtuell plats.

Identifierare för den plats där vård- och omsorgstjänsten bedrivs virtuellt."
* careService.location.virtualLocation.id ^comment = "TKB-fält: `../../.. /id` (`anyURI`, kardinalitet 1..1)."
* careService.location.description ^definition = "Beskrivning av platsen (län, kommun, fysisk eller virtuell plats).

Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.

Det får endast finnas en beskrivning med samma kombination av språk och roll."
* careService.location.description ^comment = "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 0..*)."
* careService.location.description.text ^definition = "Text

Den textuella beskrivningen."
* careService.location.description.text ^comment = "TKB-fält: `../../../text` (`string`, kardinalitet 1..1)."
* careService.location.description.language ^definition = "Språk

Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.

Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for

comprehensive coverage of languages”.

Exempel på code:

swe (svenska)

eng (engelska)

deu (tyska)

language.code: swe

language.displayname: Swedish

language.codesystem: 1.0.639.3"
* careService.location.description.language ^comment = "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1)."
* careService.location.description.role ^definition = "Roll

Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare (enskild person) eller hälso- och sjukvårdspersonal.

role.code: 223366009

role.displayname: hälso- och sjukvårdspersonal

role.codesystem:  1.2.752.116.2.1.1

role.code: 257513009

role.displayname: enskild person

role.codesystem:  1.2.752.116.2.1.1

role.code: 224611006

role.displayname: personal inom socialtjänsten

role.codesystem:  1.2.752.116.2.1.1

role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.location.description.role ^comment = "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*)."
* careService.contactInformation ^definition = "Kontaktuppgift till den organisatoriska enhet som erbjuder en viss vård- och omsorgstjänst."
* careService.contactInformation ^comment = "TKB-fält: `../contactInformation` (`ContactInformationType`, kardinalitet 0..*)."
* careService.contactInformation.ranking ^definition = "Rangordning för kontaktuppgifterna. Om det finns flera kontaktuppgifter används rangordning för att visa vilken som föredras framför en annan.

Anges med siffror där 1 innebär högst rangordning osv.

Exempelvis om en e-postadress ska användas i första hand och ett telefonnummer ska användas i andra hand, används rangordning 1 för e-postadressen och rangordning 2 för telefonnumret."
* careService.contactInformation.ranking ^comment = "TKB-fält: `../../ranking` (`integer`, kardinalitet 0..1)."
* careService.contactInformation.forRole ^definition = "För roll

Attributet anger om kontaktuppgiften avser en viss roll.

En roll kan vara en invånare (enskild person), personal inom socialtjänst eller hälso- och sjukvårdspersonal.

Ett telefonnummer som finns registrerat för en vård- och omsorgstjänst ska i vissa fall endast användas för invånare och ett annat telefonnummer, avseende samma vård- och omsorgstjänst, ska användas av hälso- och sjukvårdspersonal.

role.code: 223366009

role.displayname: hälso- och sjukvårdspersonal

role.codesystem:  1.2.752.116.2.1.1

role.code: 257513009

role.displayname: enskild person

role.codesystem:  1.2.752.116.2.1.1

role.code: 224611006

role.displayname: personal inom socialtjänsten

role.codesystem:  1.2.752.116.2.1.1

role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.contactInformation.forRole ^comment = "TKB-fält: `../../forRole` (`CVType`, kardinalitet 0..*)."
* careService.contactInformation.purpose ^definition = "Syfte

Angivelse av syftet med kontaktuppgiften.

Exempelvis avbokning, ombokning, receptförnyelse."
* careService.contactInformation.purpose ^comment = "TKB-fält: `../../purpose` (`String`, kardinalitet 0..1)."
* careService.contactInformation.address ^definition = "Postadress

Den adress som kan användas för att kontakta en organisatorisk enhet gällande en vård- och omsorgstjänst. Kan exempelvis vara adress dit en pappersremiss ska skickas.

Observera att detta ej är besöksadress (återfinns i Fysisk plats).

Adress är obligatoriskt om det är möjligt att remittera till vård- och omsorgstjänsten."
* careService.contactInformation.address ^comment = "TKB-fält: `../../address` (`Address`, kardinalitet 0..1)."
* careService.contactInformation.availableTime ^definition = "Kalendertid

Den tid som kontaktuppgiften är tillgänglig.

Det kan vara möjligt att ringa mån – fre 08.00-17.00 på ett telefonnummer.

Se avsnitt 5.2.2 för beskrivning av format."
* careService.contactInformation.availableTime ^comment = "TKB-fält: `../../availableTime` (`CalendarType`, kardinalitet 0..*)."
* careService.contactInformation.telecom ^definition = "Adress för telekommunikation

Innehåller den elektroniska adressinformation som ska användas för att kontakta en organisatorisk enhet gällande en viss vård- och omsorgstjänst."
* careService.contactInformation.telecom ^comment = "TKB-fält: `../../telecom` (`TelecomType`, kardinalitet 0..1)."
* careService.contactInformation.telecom.typeOfTelecom ^definition = "Typ av medium

Vilken typ av medium för telekommunikation som avses.

Anges med kod från kodverket Kv tele ekom typ (OID: 1.2.752.129.2.2.1.30) [R14].

Observera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.

typeOfTelecom.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.contactInformation.telecom.typeOfTelecom ^comment = "TKB-fält: `../../../typeOfTelecom` (`CVType`, kardinalitet 1..1)."
* careService.contactInformation.telecom.contactPoint ^definition = "Värde

Angivelse av värde i klartext för typen av medium.

Exempelvis 070-707070 som telefonnummer, epost@epost.se som e-postadress etc."
* careService.contactInformation.telecom.contactPoint ^comment = "TKB-fält: `../../../contactPoint*` (`string`, kardinalitet 1..1)."
* careService.contactInformation.description ^definition = "Beskrivning

Ytterligare information om kontaktuppgiften.

Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.

Det får endast finnas en beskrivning med samma kombination av språk och roll."
* careService.contactInformation.description ^comment = "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 0..*)."
* careService.contactInformation.description.text ^definition = "Text

Den textuella beskrivningen."
* careService.contactInformation.description.text ^comment = "TKB-fält: `../../../text` (`string`, kardinalitet 1..1)."
* careService.contactInformation.description.language ^definition = "Språk

Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.

Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for

comprehensive coverage of languages”.

Exempel på code:

swe (svenska)

eng (engelska)

deu (tyska)

language.code: swe

language.displayname: Swedish

language.codesystem: 1.0.639.3"
* careService.contactInformation.description.language ^comment = "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1)."
* careService.contactInformation.description.role ^definition = "Roll

Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänst  eller hälso- och sjukvårdspersonal.

Om beskrivning anges, ska minst en beskrivning för invånare anges.

role.code: 223366009

role.displayname: hälso- och sjukvårdspersonal

role.codesystem:  1.2.752.116.2.1.1

role.code: 257513009

role.displayname: enskild person

role.codesystem:  1.2.752.116.2.1.1

role.code: 224611006

role.displayname: personal inom socialtjänsten

role.codesystem:  1.2.752.116.2.1.1

role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.contactInformation.description.role ^comment = "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*)."
* careService.cooperation ^definition = "Samverkan

Håller information om vilken organisatorisk enhet som samverkar med annan organisatorisk enhet kring en vård- och omsorgstjänst och vad samverkan avser.

Ett exempel på samverkan är när två organisatoriska enheter samverkar kring öppettider avseende en viss typ av vård- ocn omsorgstjänst så att en patient kan hänvisas rätt utanför normala öppettider, exempelvis från vårdcentral till närakut."
* careService.cooperation ^comment = "TKB-fält: `../cooperation` (`CooperationType`, kardinalitet 0..*)."
* careService.cooperation.typeOfCooperation ^definition = "Typ av samverkan

Vilken typ av samverkan organisationerna har mellan varandra."
* careService.cooperation.typeOfCooperation ^comment = "TKB-fält: `../../typeOfCooperation` (`String`, kardinalitet 1..1)."
* careService.cooperation.validity ^definition = "Giltighet

Giltighetsperioden för samverkan mellan organisationerna.

Om samverkan exempelvis gäller vid semesterstängt, kan giltigheten exempelvis vara 20160601‒20160831."
* careService.cooperation.validity ^comment = "TKB-fält: `../../validity*` (`DatePeriodType`, kardinalitet 0..1)."
* careService.cooperation.referenceToCareServiceId ^definition = "Referens till vård- och omsorgstjänst

Unikt id som identifierar den vård och- omsorgstjänst som två organisationer samverkar kring.

Om HSA-id används:

careServiceId.root: 1.2.752.129.2.1.4.1

careServiceId.extension: `<hsa-id>`

Om ej HSA-id:

careServiceId.root: `<UUID>`

careServiceId.extension: Anges ej"
* careService.cooperation.referenceToCareServiceId ^comment = "TKB-fält: `../../referenceToCareServiceId` (`IIType`, kardinalitet 1..1)."
* careService.cooperation.description ^definition = "Beskrivning

Ytterligare information om samverkan.

Om beskrivning anges ska det åtminstone finnas på svenska och vara anpassad för invånare.

Det får endast finnas en beskrivning med samma kombination av språk och roll."
* careService.cooperation.description ^comment = "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 0..*)."
* careService.cooperation.description.text ^definition = "Text

Den textuella beskrivningen."
* careService.cooperation.description.text ^comment = "TKB-fält: `../../../text` (`string`, kardinalitet 1..1)."
* careService.cooperation.description.language ^definition = "Språk

Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.

Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for

comprehensive coverage of languages”.

Exempel på code:

swe (svenska)

eng (engelska)

deu (tyska)

language.code: swe

language.displayname: Swedish

language.codesystem: 1.0.639.3"
* careService.cooperation.description.language ^comment = "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1)."
* careService.cooperation.description.role ^definition = "Roll

Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.

Om roll inte anges, riktas beskrivningen till samtliga roller.

Om beskrivning anges, ska minst en beskrivning för invånare anges.

role.code: 223366009

role.displayname: hälso- och sjukvårdspersonal

role.codesystem:  1.2.752.116.2.1.1

role.code: 257513009

role.displayname: enskild person

role.codesystem:  1.2.752.116.2.1.1

role.code: 224611006

role.displayname: personal inom socialtjänsten

role.codesystem:  1.2.752.116.2.1.1

role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.cooperation.description.role ^comment = "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*)."
* careService.resource ^definition = "Resurs

Vilken resurs som kan erbjudas med en vård- och omsorgstjänst."
* careService.resource ^comment = "TKB-fält: `../resource` (`ResourceType`, kardinalitet 0..*)."
* careService.resource.typeOfResource ^definition = "Typ av resurs

Exempelvis bassäng eller vård- och omsorgspersonal med särskild kompetens.

Kod från Snomed CT hierarkin 308916002 | område eller geografisk plats |, 260787004 | fysiskt objekt | eller 106288005 | läkare, tandläkare, veterinär eller motsvarande yrke |

typeOfResource.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.resource.typeOfResource ^comment = "TKB-fält: `../../typeOfResource` (`CVType`, kardinalitet 1..1)."
* careService.resource.resourceAttribute ^definition = "Egenskap

Värdet på resursen. Exempelvis om tolk så anges vilket språk."
* careService.resource.resourceAttribute ^comment = "TKB-fält: `../../resourceAttribute` (`String`, kardinalitet 0..1)."
* careService.resource.availableTime ^definition = "Kalendertid

Vilken tid resursen är tillgänglig.

Se avsnitt 5.2.2 för beskrivning av format."
* careService.resource.availableTime ^comment = "TKB-fält: `../../availableTime` (`CalendarType`, kardinalitet 0..*)."
* careService.resource.description ^definition = "Beskrivning

Ytterligare information om resursen.

Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.

Det får endast finnas en beskrivning med samma kombination av språk och roll."
* careService.resource.description ^comment = "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 0..*)."
* careService.resource.description.text ^definition = "Text

Den textuella beskrivningen."
* careService.resource.description.text ^comment = "TKB-fält: `../../../text` (`string`, kardinalitet 1..1)."
* careService.resource.description.language ^definition = "Språk

Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.

Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for

comprehensive coverage of languages”.

Exempel på code:

swe (svenska)

eng (engelska)

deu (tyska)

language.code: swe

language.displayname: Swedish

language.codesystem: 1.0.639.3"
* careService.resource.description.language ^comment = "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1)."
* careService.resource.description.role ^definition = "Roll

Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten  eller hälso- och sjukvårdspersonal.

Om beskrivning anges, ska minst en beskrivning för invånare anges.

role.code: 223366009

role.displayname: hälso- och sjukvårdspersonal

role.codesystem:  1.2.752.116.2.1.1

role.code: 257513009

role.displayname: enskild person

role.codesystem:  1.2.752.116.2.1.1

role.code: 224611006

role.displayname: personal inom socialtjänsten

role.codesystem:  1.2.752.116.2.1.1

role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.resource.description.role ^comment = "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*)."
* careService.interferenceInformation ^definition = "Störningsinformation.

Information om omständigheter som innebär en avvikelse i tillgängligheten för en viss vård- och omsorgstjänst."
* careService.interferenceInformation ^comment = "TKB-fält: `../interferenceInformation` (`InterferenceInformationType`, kardinalitet 0..*)."
* careService.interferenceInformation.datePeriod ^definition = "Datumperiod

Start- och sluttid för det inträffade, där starttid är obligatorisk och sluttid valfri."
* careService.interferenceInformation.datePeriod ^comment = "TKB-fält: `../../datePeriod*` (`DatePeriodType`, kardinalitet 1..1)."
* careService.interferenceInformation.typeOfInterference ^definition = "Typ av störning

Vilken typ av avvikelse. Exempelvis ombyggnation, semester.

Kod från Snomed CT hierarkin 272379006 | händelse |

typeOfInterference.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.interferenceInformation.typeOfInterference ^comment = "TKB-fält: `../../typeOfInterference` (`CVType`, kardinalitet 0..1)."
* careService.interferenceInformation.description ^definition = "Beskrivning

Ytterligare information om avvikelser.

Det ska åtminstone finnas beskrivning på svenska och vara anpassad för invånare.

Det får endast finnas en beskrivning med samma kombination av språk och roll."
* careService.interferenceInformation.description ^comment = "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 1..*)."
* careService.interferenceInformation.description.text ^definition = "Text

Den textuella beskrivningen."
* careService.interferenceInformation.description.text ^comment = "TKB-fält: `../../../text` (`string`, kardinalitet 1..1)."
* careService.interferenceInformation.description.language ^definition = "Språk

Anger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.

Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for

comprehensive coverage of languages”.

Exempel på code:

swe (svenska)

eng (engelska)

deu (tyska)

language.code: swe

language.displayname: Swedish

language.codesystem: 1.0.639.3"
* careService.interferenceInformation.description.language ^comment = "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1)."
* careService.interferenceInformation.description.role ^definition = "Roll

Anger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten  eller hälso- och sjukvårdspersonal.

Om beskrivning anges, ska minst en beskrivning för invånare anges.

Urval ur Snomed CT:

role.code: 223366009

role.displayname: hälso- och sjukvårdspersonal

role.codesystem:  1.2.752.116.2.1.1

role.code: 257513009

role.displayname: enskild person

role.codesystem:  1.2.752.116.2.1.1

role.code: 224611006

role.displayname: personal inom socialtjänsten

role.codesystem:  1.2.752.116.2.1.1

role.displayName returnerar endast text på svenska även om annat språk är angivet i begäran."
* careService.interferenceInformation.description.role ^comment = "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*)."
