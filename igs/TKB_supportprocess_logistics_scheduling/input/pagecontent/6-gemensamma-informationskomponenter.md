# 6 Gemensamma informationskomponenter

Källa: *Tjänstekontraktsbeskrivning Tidbokning*, version 2.0 RC2 (2023-11-01), [TKB_supportprocess_logistics_scheduling.docx](TKB_supportprocess_logistics_scheduling.docx).

Motsvarar TKB kapitel 7 *Definition av komplexa typer* (6.1 = TKB 7.1 osv.).

För kardinalitet, se beskrivning för respektive tjänsteinteraktion, då den kan skilja sig när datatypen används i olika tjänstekontrakt.

### 6.1 ActorType

Flera tjänsteinteraktioner i domänen har ett obligatoriskt attribut för att från tjänstekonsumenten ange typ av aktör som utför operationen (attributet actor). En aktör kan vara invånaren själv, vårdnadshavare eller en medarbetare i professionen som handräcker invånaren med genomförandet av bokningen. Det kan t.ex. vara en sköterska på 1177 Sjukvårdsrådgivningen som på invånarens begäran genomför en bokning via 1177 Vårdguidens e-tjänster eller via 1177 Rådgivningsstödet.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| actor.actorId | IIType | Identifierare för aktören. Kan vara ett personnummer, samordningsnummer eller HSAId beroende på typ av aktör | 1..1 |
| actor.actorId.root | string | OID som definierar typ av identifierare. / 1) För PNR ska Skatteverkets oid för PNR (1.2.752.129.2.1.3.1) användas. / 2) För SNR ska Skatteverkets oid för SNR (1.2.752.129.2.1.3.3) användas. / 3) För HSAId ska oid för HSAId (1.2.752.129.2.1.4.1) användas. | 1..1 |
| actor.actorType | SnomedCtType / (CVType) | Kod som definierar typ av aktör | 1..1 |
| actor.actorType.code | string | Följande aktörstyper kan uttryckas enligt följande koder (Se Snomed-CT, Svenska upplagan): / Invånare är själv aktören = 116154003 / Vårdnadshavare = 60101000052104 / God man = 60081000052107 / Förmyndare = 60121000052105 / Hälso- och sjukvårdspersonal = 223366009 | 1..1 |
| actor.actorType.codeSystem | string | Aktörstypen uttrycks som en Snomed-CT kod. Attributet codeSystem sätts till ”1.2.752.116.2.1.1” | 1..1 |

Följande exempel på xml-struktur anger att aktören är en patient/invånare. ActorId ska då vara personnummer/samordningsnummer:

```xml
<ah:Actor xmlns:ah=”urn:riv:interoperability:headers:1” >
<ah:actorId>
<ah:root>1.2.752.129.2.1.3.1</ah:root>
<ah:extension>191212121212</ah:extension>
</ah:actorId>
<ah:actorType>
<ah:code>116154003</ah:code>
<ah:codeSystem>1.2.752.116.2.1.1</ah:codeSystem>
</ah:actorType>
</ah:Actor>
```

Följande exempel på xml-struktur anger att aktören är en medarbetare i professionen (hälso- och sjukvårdspersonal).  actorId ska då vara medarbetarens HSA-id:

```xml
<ah:Actor xmlns:ah=”urn:riv:interoperability:headers:1” >
<ah:actorId>
<ah:root>1.2.752.129.2.1.4.1</ah:root>
<ah:extension>SE123456-ETT-HSAID</ah:extension>
</ah:actorId>
<ah:actorType>
<ah:code>223366009</ah:code>
<ah:codeSystem>1.2.752.116.2.1.1</ah:codeSystem>
</ah:actorType>
</ah:Actor>
```

För aktören medarbetare i professionen får endast Flöden 1-3 - Boka tid tillgängliggöras i tjänstekonsument. Detta för att inte tjänstekonsument ska hamna inom lagrum direktåtkomst/sammanhållen journalföring.

### 6.2 AvailableDateType

Datatypen används för att förmedla ett datum där verksamheten erbjuder minst en ledig tid.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| date | DT | Datumet där verksamheten erbjuder minst en ledig tid | 1..1 |
| noOfTimeslots | integer | Antal lediga tider (tidsluckor) som erbjuds för det aktuella datumet | 1..1 |
| timeType | TimeTypeType | Tidstypen som erbjuds för aktuellt datum | 1..1 |
| practitioner | PractitionerType | Personal som är relaterad till de lediga tiderna | 0..1 |
| resource | ResourceType | Resurs som är relaterad till de lediga tiderna | 0..1 |

### 6.3 InformationType

Datatypen används för att från verksamheten förmedla informations- och villkorstexter. Informations- och villkorstexter är relaterade till olika objekt i tjänstedomänen. Informationstexter är information som verksamheten vill förmedla till invånare men inte kräver att invånare aktivt bekräftar att invånare tagit del av informationen. Villkorstexter ska däremot aktivt bekräftas av invånare för att invånare ska tillåtas fortsätta i flödet.

Det är möjligt att uttrycka informations- och villkorstexter för följande objekt:

Bokning (AppointmentType) *

Tidstyp (TimeTypeType genom TimeTypeRulesType)

Vårdtjänst (HealthcareServiceType)

Vårdenheten (OrgUnitType)

(*) För bokningen (AppointmentType) kan verksamheten bara uttrycka informationstexter, ej villkorstexter. Detta för att det inte är applicerbart att efterkräva att invånare ska godkänna villkor efter att bokningen är bokad.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| header | string | Rubrik för informations- eller villkorstexten. | 1..1 |
| description | string | Informationstexten eller villkorstexten som ska förmedlas till invånare | 0..1 |
| link | anyURI | Länk till relaterad information där invånare kan läsa mer om informationstexten eller villkorstexten | 0..1 |

### 6.4 PersonIdType

PersonIdType förmedlar ett person-id för individ (motsvarande det aktuella subjektet i tjänstekontraktsanropet). Begreppsmässigt används både begreppet invånare och patient blandat i denna domän. Se domänens begreppsmodell i informationsspecifikationen för vidare förklaring.

Datatypen PersonIdType ärver från datatypen IIType och har i sin utökning en syntaktisk begränsning i vad attributet root får anta. Datatypen PersonIdType kan således endast förmedla personnummer eller samordningsnummer.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| root | string | OID som definierar typ av identifierare. / 1) För PNR ska Skatteverkets oid för PNR (1.2.752.129.2.1.3.1) användas. / 2) För SNR ska Skatteverkets oid för SNR (1.2.752.129.2.1.3.3) användas. | 1..1 |
| extension | string | Personnummer eller samordningsnummer | 1..1 |

### 6.5 ReferenceType

Datatypen förmedlar en referens som kan vara en rubrik tillsammans med en beskrivning och/eller en hyperlänk.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| name | string | Namn på referensen | 1..1 |
| description | string | Beskrivning av referensen | 0..1 |
| link | anyURI | Länk till referensen | 0..1 |

### 6.6 ResourceType

Datatypen förmedlar en resurs som är relaterad till besöket eller den lediga tiden. En resurs är något som kan tas i anspråk för eller krävs för genomförande av aktiviteter eller processer inom vård och omsorg och som inte avser personer eller organisationer. Exempel är olika typer av medicintekniska produkter inom hälso- och sjukvård och pengar som betalas ut till brukaren inom socialtjänst.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| description | string | Beskrivning av resurs | 0..1 |
| typeOfResource | CVType | Typ av resurs. Kan exempelvis uttryckas som en Snomed-CT kod / Exempel: / 272181003 / 1.2.752.116.2.1.1 = ”klinisk utrustning och/eller kliniska” hjälpmedel / 466808009 / 1.2.752.116.2.1.1 = ”videoprocessor” m fl | 0..1 |
| resourceAttribute | CVType | Detaljerade egenskaper för resursen | 0..1 |

### 6.7 TimeslotType

TimeslotType återkommer i flera interaktioner och innehåller detaljer om en tid oavsett om denna är bokad eller ledig.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| timeslotId | uuidType | Unikt id för tidsluckan. Ska uttryckas som uuid (universally unique identifier). | 1..1 |
| timeType | TimeTypeType | Typ av tid som uttrycker var bokningen/besöket avser. Se datatypen TimeTypeType för vidare information | 1..1 |
| startTime | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| endTime | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 0..1 |
| timeLength | double | Längd på besöket i minuter | 0..1 |
| healthcareFacilityHSAId | HSAIdType (string) | Vårdenheten som bokningen gäller hos | 1..1 |
| practitioner | PractitionerType | HoS-person som besöket är bokat hos. | 0..* |
| resource | ResourceType | En resurs är något som kan tas i anspråk för eller krävs för genomförande av aktiviteter eller processer inom vård och omsorg och som inte avser personer eller organisationer. Exempel är olika typer av medicintekniska produkter inom hälso- och sjukvård och pengar som betalas ut till brukaren inom socialtjänst. | 0..* |
| withinCareGuarantee | boolean | Flagga som visar huruvida denna tidslucka ligger inom Vårdgarantin. Flaggan är intressant att förmedla i samband med exempelvis ett nybokningsflöde, då invånaren söker efter lediga tider. Flaggan relaterar således till den tidpunkt då invånaren begärde att söka efter lediga tider. | 0..1 |
| alternativeAddress | string | En alternativ adress som kan anges av verksamheten, kopplat till den specifika tidsluckan. Om vårdcentralen vill förmedla en alternativ adress mer generellt rekommenderas motsvarande attribut i OrgUnitType | 0..1 |

### 6.8 PractitionerType

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| id | HsaIdType (string) | HSA-id för bokningsbar vårdpersonal. | 1..1 |
| firstName | string | Vårdpersonals förnamn. | 1..1 |
| lastName | string | Vårdpersonals efternamn. | 1..1 |
| title | string | Vårdpersonals titel. | 0..1 |

### 6.9 TimeTypeRulesType

Generell typ för att uttrycka regler kopplade till tidstypen, i kombination med det flöde som reglerna ska gälla. De olika flödena är nybokningsflöde, ombokningsflöde eller avbokningsflöde.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| type | ProcessEnum | Definierar vilken process/vilket tidbokningsflöde som reglerna gäller. Möjliga värden är: / NYBOKNING = nybokningsflöde / AVBOKNING = avbokningsflöde / OMBOKNING = ombokningsflöde | 1..1 |
| reasonTextRequired | ReasonRequiredEnum | Definierar huruvida invånaren ska ange en anledning till ny-, om eller avbokningen. Vilket av flödena det gäller definieras av föregående attribut (type). / Att ange anledning i form av fritext kan kombineras med anledning i form ett fördefinierat val (reasonCodeRequired). / Möjliga värden är: / Mandatory = Invånaren måste ange en anledning / Optional = Invånaren kan ange en anledning (frivilligt) / ReasonNotSupported = Invånaren kan inte ange en anledning | 1..1 |
| reasonCodeRequired | ReasonRequiredEnum | Definierar huruvida invånaren ska ange en anledning till ny-, om eller avbokningen, uttryckt som ett av flera fördefinierade anledningar som verksamheten i förväg har definierat. Vilket av flödena det gäller definieras av föregående attribut (type). / Att ange anledning i form av ett förval kan kombineras med anledning i form av fritext (reasonTextRequired). / Möjliga värden är: / Mandatory = Invånaren måste ange en anledning / Optional = Invånaren kan ange en anledning (frivilligt) / ReasonNotSupported = Invånaren kan inte ange en anledning | 1..1 |
| reasonCodes | CVType | Lista med förval som invånaren ska välja bland, så som anledning till ny-, om- eller avbokningen. | 0..* |
| information | InformationType | Informationstext att presentera till invånaren, kopplat till tidstypen samt till aktuellt flöde | 0..* |
| conditionToConfirm | InformationType | Villkorstext att presentera till invånaren, kopplat till tidstypen samt till aktuellt flöde | 0..* |

Exempel 1:

Verksamheten önskar att invånaren måste fylla i anledning till nybokningen i form av fritext:

```xml
<appointmentRules xmlns="urn:riv:supportprocess:logistics:scheduling:2">
<type>NYBOKNING</type>
<reasonTextRequired>Mandatory</reasonTextRequired>
<reasonCodeRequired>ReasonNotSupported</reasonCodeRequired>
</appointmentRules>
```

Exempel 2:

Verksamheten önskar att invånaren måste fylla i anledning till ombokningen i form av ett av tre förval som verksamheten bestämt. De tre förvalen i exemplet är ”Tiden passar inte”, ”Har inget vårdbehov längre”, ”Bokad på annan mottagning”:

(code1, code2, code3 är koderna som motsvarar valen. Koderna kan exempelvis vara hämtade från nationellt kodverk, exempelvis  SNOMED-CT eller från ett regionalt förvaltat kodverk. OID:codesystem1 ska då peka ut det kodverk varifrån koden är hämtad.)

```xml
<appointmentRules xmlns="urn:riv:supportprocess:logistics:scheduling:2">
<type>OMBOKNING</type>
<reasonTextRequired> ReasonNotSupported</reasonTextRequired>
<reasonCodeRequired>Mandatory</reasonCodeRequired>
<reasonCodes>
<code>code1</code>
<codeSystem>OID:codeSystem1</codeSystem>
<displayName>Tiden passar inte</displayName>
</reasonCodes>
<reasonCodes>
<code>code2</code>
<codeSystem>OID:codeSystem1</codeSystem>
<displayName>Har inget vårdbehov längre</displayName>
</reasonCodes>
<reasonCodes>
<code>code3</code>
<codeSystem>OID:codeSystem1</codeSystem>
<displayName>Bokad på annan mottagning</displayName>
</reasonCodes>
</appointmentRules>
```

Exempel 3:

Verksamhetens tidbokssystem kan inte inhämta och hantera invånares anledning till besöket i samband med en nybokning. Verksamheten vill därmed inte att invånare ska fylla i något.

```xml
<appointmentRules xmlns="urn:riv:supportprocess:logistics:scheduling:2">
<type>NYBOKNING</type>
<reasonTextRequired>ReasonNotSupported</reasonTextRequired>
<reasonCodeRequired>ReasonNotSupported </reasonCodeRequired>
</appointmentRules>
```

### 6.9 Kodverk

Uppräkningarna i domänschemat är modellerade som kodverk:

| Kodverk | Koder | CodeSystem | ValueSet |
|---|---|---|---|
| Bokningens tillstånd (AppointmentStatus) (`AppointmentStatusEnum`) | confirmed, preliminary | [scheduling-appointmentstatus-cs](CodeSystem-scheduling-appointmentstatus-cs.html) | [scheduling-appointmentstatus-vs](ValueSet-scheduling-appointmentstatus-vs.html) |
| Tidbokningsflöde (Process) (`ProcessEnum`) | NYBOKNING, AVBOKNING, OMBOKNING | [scheduling-process-cs](CodeSystem-scheduling-process-cs.html) | [scheduling-process-vs](ValueSet-scheduling-process-vs.html) |
| Krav på anledning (ReasonRequired) (`ReasonRequiredEnum`) | Mandatory, Optional, ReasonNotSupported | [scheduling-reasonrequired-cs](CodeSystem-scheduling-reasonrequired-cs.html) | [scheduling-reasonrequired-vs](ValueSet-scheduling-reasonrequired-vs.html) |
| Resultatkod (ResultCode) (`ResultCodeEnum`) | OK, ERROR, INFO, REQUESTED_TIME_IS_ALREADY_RESERVED, REQUESTED_TIME_HAS_ALREADY_PASSED, REQUESTED_TIME_IS_NO_LONGER_AVAILABLE, TOO_LATE_TO_MAKE_APPOINTMENT, USER_IS_ALREADY_OCCUPIED, APPOINTMENT_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CANCELED, APPOINTMENT_IS_ALREADY_UPDATED, TOO_LATE_TO_UPDATE_APPOINTMENT, APPOINTMENT_DOES_NOT_EXIST, UPDATE_APPOINTMENT_IS_NOT_ALLOWED, TOO_LATE_TO_CANCEL_APPOINTMENT, CANCEL_IS_NOT_ALLOWED, APPOINTMENT_IS_ALREADY_CONFIRMED, TOO_LATE_TO_CONFIRM_APPOINTMENT, CONFIRM_IS_NOT_ALLOWED | [scheduling-resultcode-cs](CodeSystem-scheduling-resultcode-cs.html) | [scheduling-resultcode-vs](ValueSet-scheduling-resultcode-vs.html) |

### 6.10 Typer i domänschemat (XSD)

Genererat ur [supportprocess_logistics_scheduling_2.0.xsd](supportprocess_logistics_scheduling_2.0.xsd).

#### ActorType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| actorId | IIType |  | 1..1 |
| actorType | SnomedCtType |  | 1..1 |

#### AppointmentPerHealthcareFacilityType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| appointmentId | uuidType |  | 1..1 |
| healthcareFacilityId | HSAIdType |  | 1..1 |

#### AppointmentType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| appointmentId | uuidType |  | 1..1 |
| relatedAppointmentId | uuidType |  | 0..* |
| timeslot | TimeslotType |  | 1..1 |
| personId | PersonIdType |  | 1..1 |
| information | InformationType |  | 0..* |
| status | AppointmentStatusEnum |  | 1..1 |
| newAppointmentReasonText | string |  | 0..1 |
| newAppointmentReasonCode | CVType |  | 0..1 |
| updateAppointmentReasonText | string |  | 0..1 |
| updateAppointmentReasonCode | CVType |  | 0..1 |
| alternativeLocation | string |  | 0..1 |
| reference | ReferenceType |  | 0..* |

#### AvailableDateType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| date | DT |  | 1..1 |
| noOfTimeslots | int |  | 1..1 |
| timeType | TimeTypeType |  | 1..1 |
| practitioner | PractitionerType |  | 0..1 |
| resource | ResourceType |  | 0..1 |

#### CVType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 1..1 |
| codeSystem | string |  | 1..1 |
| codeSystemName | string |  | 0..1 |
| codeSystemVersion | string |  | 0..1 |
| displayName | string |  | 0..1 |
| originalText | string |  | 0..1 |

#### HSAIdType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 1..1 |

#### HealthcareServiceType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | SnomedCtType |  | 1..1 |
| information | InformationType |  | 0..* |
| conditionsToConfirm | InformationType |  | 0..* |

#### IIType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 0..1 |

#### InformationType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| header | string |  | 1..1 |
| description | string |  | 0..1 |
| link | anyURI |  | 0..1 |

#### OrgUnitType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| HSAId | HSAIdType |  | 1..1 |
| name | string |  | 0..1 |
| alternativeLocation | string |  | 0..1 |
| information | InformationType |  | 0..* |
| conditionToConfirm | InformationType |  | 0..* |

#### PersonIdType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string | Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3. | 1..1 |
| extension | string |  | 1..1 |

#### PractitionerType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| HSAId | HSAIdType |  | 1..1 |
| firstName | string |  | 1..1 |
| lastName | string |  | 1..1 |
| title | string |  | 0..1 |

#### ReferenceType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| name | string |  | 1..1 |
| description | string |  | 0..1 |
| link | anyURI |  | 0..1 |

#### ResourceType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| typeOfResource | CVType |  | 0..1 |
| resourceAttribute | CVType |  | 0..1 |
| description | string |  | 0..1 |

#### SnomedCtType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 1..1 |
| codeSystem | string | Tillåtna värden: 1.2.752.116.2.1.1. | 1..1 |
| codeSystemName | string |  | 0..1 |
| codeSystemVersion | string |  | 0..1 |
| displayName | string |  | 0..1 |
| originalText | string |  | 0..1 |

#### TimeTypeRulesType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| type | ProcessEnum |  | 1..1 |
| reasonTextRequired | ReasonRequiredEnum |  | 1..1 |
| reasonCodeRequired | ReasonRequiredEnum |  | 1..1 |
| reasonCodes | CVType |  | 0..* |
| information | InformationType |  | 0..* |
| conditionToConfirm | InformationType |  | 0..* |

#### TimeTypeType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 1..1 |
| hidden | boolean |  | 0..1 |
| careContactCode | CVType |  | 0..1 |
| healthcareService | HealthcareServiceType |  | 0..* |
| healthcareTeam | boolean |  | 0..1 |
| patientGroup | boolean |  | 0..1 |
| cancelAppointmentAllowed | boolean |  | 1..1 |
| updateAppointmentAllowed | boolean |  | 1..1 |
| appointmentRule | TimeTypeRulesType |  | 0..3 |

#### TimeslotType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| timeslotId | uuidType |  | 1..1 |
| timeType | TimeTypeType |  | 1..1 |
| startTime | TS |  | 1..1 |
| endTime | TS |  | 0..1 |
| timeLength | double |  | 0..1 |
| healthcareFacilityHSAId | HSAIdType |  | 1..1 |
| practitioner | PractitionerType |  | 0..* |
| resource | ResourceType |  | 0..* |
| withinCareGuarantee | boolean |  | 0..1 |
| alternativeLocation | string |  | 0..1 |
