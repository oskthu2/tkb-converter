## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot NI 2015:1 samt mot schema (XSD) för tjänstekontrakt.

### V-MIM - Aktiviteter

![img_003.jpeg](images/img_003.jpeg)
Mörkblå klasser och cyanfärgade markeringar visar skillnader från NI release 2015:1. I vissa fall är det endast en avvikande kardinalitet.

| XSD Schema | Mappning mot NI 2015 release 1
(eller V-MIM enligt ovan) |
| :--- | :--- |
| ActivityGroup. sourceSystem | NI 2015:1
Saknar motsvarighet / I V-MIM
Källsystem.id |
| Activity.id | Uppgift i patientjournal.id |
| Activity.type | Aktivitet.kod |
| Activity.status | Aktivitet.status |
| Activity.time | Aktivitet.tid |
| Activity.method | Aktivitet.metod |
| Activity.targetSite | Aktivitet.lokalisation |
| Activity.description | Aktivitet.beskrivning |
| Activity.additionalInformation.key | NI 2015:1
Saknar motsvarighet / I V-MIM
YtterligareInfomration.typ |
| Activity.additionalInformation.value | NI 2015:1
Saknar motsvarighet / I V-MIM 
YtterligareInfomration.värde |
| Activity.RegistrationTime | Uppgift i patientjournal.dokumentationstidpunkt |
| Activity.approvedForPatient | NI 2015:1
Saknar motsvarighet / I V-MIM / Uppgift i patientjournal.godkändFörUtlämnandeTillPatient |
| Location.id | NI 2015:1
Saknar motsvarighet / I V-MIM
Plats.id |
| Location.name | NI 2015:1
Saknar motsvarighet / I V-MIM
Plats.namn |
| Location.address | NI 2015:1
Saknar motsvarighet / I V-MIM
Plats.adress |
| Location.electronicAddress | NI 2015:1
Saknar motsvarighet / I V-MIM
Plats.elektroniskAdress |
| Patient.id | Person.person-id/Patient.id |
| Patient.name | Person.förnamn
Person.efternamn
Person.mellannamn
Person.tilltalsnamnsmarkering |
| Patient.dateOfBirth | Person.födelsetidpunkt |
| Patient.gender | Person.kön |
| LegalAuthenticator.id | NI 2015:1
Saknar motsvarighet / I V-MIM
Deltagande(signerare)->Professionell aktör.id |
| LegalAuthenticator.time | NI 2015:1
Saknar motsvarighet / I V-MIM
Deltagande(signerare).tid |
| LegalAuthenticator.name | NI 2015:1
Saknar motsvarighet / I V-MIM
Deltagande(signerare)->Professionell aktör->Person.förnamn + Person.efternamn |
| SourceSystem.id | NI 2015:1
Saknar motsvarighet / I V-MIM
Källsystem.id |
| Relation.code | Samband.typ |
| ReferredInformation.id | NI 2015:1
Uppgift i patientjournal.id / I V-MIM
Referens till Uppgift i patientjournal.id |
| ReferredInformation.time | NI 2015:1
Saknar motsvarighet / I V-MIM
Referens till Uppgift i patientjournal.tidpunkt |
| ReferredInformation.type | NI 2015:1
Saknar motsvarighet / I V-MIM
Saknar motsvarighet |
| InformationOwner.id | NI 2015:1
Saknar motsvarighet / I V-MIM
Källsystem.id |
| PerformerRole.id | NI 2015:1
Saknar motsvarighet / I V-MIM
Deltagande->Roll->Professionell aktör.id eller patient.id/person.person-id |
| PerformerRole.code | NI 2015:1
Saknar motsvarighet / I V-MIM
Deltagande->Roll.typ |
| Person.id | Person.person-id |
| Person.name | Person.förnamn 
Person.mellannamn 
Person.efternamn
Person.tilltalsnamnsmarkering |
| CareUnit.id | NI 2015:1
Organisation.id / I V-MIM
Organisation(vårdenhet).id |
| CareUnit.name | NI 2015:1
Organisation.namn / V-MIM
Organisation(vårdenhet).namn |
| CareGiver.id | NI 2015:1
Organisation. id / V-MIM
Organisation(vårdgivare).id |
| CareGiver.name | NI 2015:1
Organisation.namn / V-MIM
Organisation(vårdgivare).namn |
| AdditionalParticipant.id | NI 2015:1
Saknar motsvarighet / V-MIM
Professionell aktör.id (om sådan deltagare) |
| AdditionalParticipant.type | Deltagande.typ |
| AdditionalParticipant.role | NI 2015:1
Saknar motsvarighet / V-MIM
Roll.typ |
| AdditionalParticipant.time | Deltagande.tid |
| Device.id | NI 2015:1
Saknar motsvarighet / V-MIM
Artefakt.id |
| Device.type | NI 2015:1
Saknar motsvarighet / V-MIM
Artefakt.typ |
| Device.model | NI 2015:1
Saknar motsvarighet / V-MIM
Artefakt.modell |

### Formatregler
Inga utöver de som beskrivs i samband med fältregler.

### Gemensamma datatyper
Gemensamma datatyper är typer gemensamma för användning i flera tjänstekontrakt. Nedan listas de gemensamma typer som används i denna tjänstedomän. Dessa är hämtade från version 21 av de gemensamma datatyperna [R12].

#### CVType
En CVType är en referens till ett begrepp som definieras i ett externt kodverk (kodsystem, terminologi eller ontologi). Se vanligt förekommande kodverk [R9]. En CVType kan innehålla en enkel kod, det vill säga en hänvisning till ett begrepp som definieras direkt av det refererade kodverket, eller den kan innehålla ett uttryck i någon syntax definierad av det refererade kodverket som kan utvärderas, exempelvis begreppet "vänster fot" som är ett postkoordinerat uttryck byggt från den primära koden "FOT" och bestämningen "VÄNSTER".

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string | Kod eller uttryck definierad enligt kodverket. | 0..1 |
| codeSystem | string | Kodverket som definierar koden. | 0..1 |
| codeSystemName | string | Kodverkets namn i klartext. | 0..1 |
| codeSystemVersion | string | Versionsangivelse som har definierats specifikt för det givna kodverket. | 0..1 |
| displayName | string | Den läsbara representationen (klartext) av koden eller uttrycket som definieras av kodverket. | 0..1 |
| originalText | string | Texten så som sedd och/eller vald av användaren som har matat in den, och som representerar användarens avsedda betydelse. | 0..1 |

##### Regler CVType
code
code ska vara en exakt match till en kod eller ett uttryck definierat av kodverket, som refereras till i codeSystem. Om kodverket definierar en kod eller ett uttryck som inkluderar mellanslag, ska koden inkludera mellanslaget. Ett uttryck kan endast användas där kodverket antingen definierar en uttryckssyntax, eller där det finns en allmänt accepterad syntax för kodverket.
Det åligger det mottagande systemet att bedöma om man kontrollerar huruvida det är ett uttryck som har skickats istället för en enkel kod, och utvärdera uttrycket istället för att behandla uttrycket som en kod. I vissa fall kan det vara oklart eller tvetydigt om koden representerar en enda symbol eller ett uttryck. Detta uppstår vanligtvis där kodverket definierar ett uttrycksspråk och sedan definierar prekoordinerade begrepp med symboler som matchar deras uttryck, t.ex. UCUM. I andra fall är det säkert att behandla uttrycket som en symbol. Det finns ingen garanti för att detta alltid är säkert: definitionerna i kodverket bör alltid konsulteras för att avgöra hur man ska hantera potentiella uttryck.
codeSystem
Kodverk ska refereras till genom en globalt unik identifierare, som möjliggör entydig hänvisning till standardkodverk eller andra lokala kodverk. Identifieraren ska vara en Universally Unique Identifier (UUID), Object Identifier (OID), eller Uniform Resource Identifier (URI). En CVType som har ett kodattribut ska ha ett kodverk som specificerar begreppsystemet som definierar koden.
codeSystemName
Syftet med ett kodverksnamn är att hjälpa en mänsklig tolkare av en kod att tolka codeSystem. Tjänstekonsumenter och tjänsteproducenter som använder codeSystemName ska INTE funktionellt förlita sig på kodverkets namn. Dessutom KAN de välja att inte implementera kodverkets namn men ska INTE avvisa instanser då namnet finns.
codeSystemVersion
Olika versioner av ett kodverk måste vara kompatibla. Per definition ska en kod ha samma betydelse i alla versioner av ett kodverk. Mellan versioner kan koder inaktiveras men inte tas bort eller återanvändas. Om klartexten av en kod ändras måste den fortfarande vara kompatibel (lika) mellan olika kodverksversioner.
displayName
Om ifylld, ska klartexten vara den läsbara representationen av koden eller uttrycket som definieras av kodverket vid tiden för datainmatningen. Om kodverket inte definierar en klartext för koden eller uttrycket, kan ingen tillhandahållas. Tjänstekonsumenter och tjänsteproducenter som hävdar direkt eller indirekt överensstämmelse KAN välja att inte implementera klartext men ska INTE avvisa instanser då klartext finns.
Huvudsyfte med klartexten är att stödja implementationsfelsökning, men kan även användas till andra tillämpningsspecifika ändamål som till exempel visning för användaren i gränssnittet.
originalText
Det finns två godkända tillämpningar av elementet originalText:
OriginalText kan användas för att beskriva det en användare angav och som representeras av koden. I en situation där användaren dikterar eller skriver text är originalText den text som matats in eller yttrats av användaren.
OriginalText kan användas i de fall producenten avser ange ett värde som saknar kod. I dessa fall motsvarar originalText benämningen för värdet som saknar kod. Behov att tillföra nya koder till kodverket förmedlas till den som ansvarar för kodverkets innehåll.
OriginalText ska vara den exakta text så som den presenteras i originalkällan utan att på något sätt bearbetas eller omvandlas. Således ska originalText representeras i vanlig textform.

#### DateType
Datum anges som en sträng med formatet ”ÅÅÅÅMMDD”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”. Tidszon anges inte. Datum ska anges i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

#### IIType
En IIType är en numerisk eller alfanumerisk sträng som kan härledas till ett enskilt objekt eller entitet i ett känt system. Exempel är ett personnummer eller ett vårdkontakts-id. Se identifierare i nationella tjänstekontrakt [R3].

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string | En identifierare som i sig själv eller tillsammans med värdet för extension är universellt unik. Om extension anges är root en unik identifierare av namnrymden för värdet som anges i extension. | 1..1 |
| extension | string | En identifierare som tillsammans med värdet för root är universellt unik. Används om värdet på root inte är universellt unikt. | 0..1 |

##### Regler för IIType
root
När root används som en identifierare av en namnrymd ska identifieraren vara en Universally Unique Identifier (UUID), Object Identifier (OID), eller Uniform Resource Identifier (URI).
extension
Vissa scheman för identifierare definierar formateringsmöjligheter för deras kodvärden. Till exempel så skrivs personnumret vanligtvis med bindestreck, 19121212-1212. Bindestrecket bär dock ingen betydelse och kan utelämnas, som i 191212121212.

#### TimePeriodType
Ett tidsintervall anges normalt sett med en start- och en sluttidpunkt, men öppna intervall är tillåtna. Huruvida ändpunkterna inkluderas i intervallet eller ej bör tydligt beskrivas vid varje enskild tillämpning.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | TimeStampType | Periodens starttid. Minst ett av start och end skall anges. | 0..1 |
| end | TimeStampType | Periodens sluttid. Minst ett av start och end skall anges. | 0..1 |

#### TimeStampType
Tidpunkt anges som en sträng med formatet ”ÅÅÅÅMMDDttmmss”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”. Tidszon anges inte. Tidpunkt ska anges i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid)

