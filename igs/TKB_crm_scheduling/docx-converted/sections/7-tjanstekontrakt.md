## Tjänstekontrakt

### CancelBooking
Tjänst för att avboka en bokning vid en vårdenhet. För att vårdgivaren ska kunna spåra avbokningar gjorda av invånaren genom direkttjänst, bör vårdsystemet kunna betjäna vårdgivaren med möjlighet att följa upp invånarens bokningsaktiviteter.

#### Frivillighet
Tjänsten är obligatorisk för vårdenheter som erbjuder avbokning och således kan svara ”sant” i fältet ”cancelBookingAllowed” för någon av följande tjänster:
GetSubjectOfCareSchedule
GetAvailableTimeslots
GetBookingDetails
I övriga fall är tjänsten frivillig.

#### Version
Tjänsten finns sedan 1.0. Tjänsten har inte uppdaterats sedan 1.0.

#### Meddelandeinformationsmodell (MIM)

![img_021.jpg](images/img_021.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet | 1..1 |
| bookingId | BookingIdType (string) | Intern bokningsidentitet | 1..1 |
| message | string | Invånarens beskrivning av orsak för avbokning. Fältet kan bara skickas om värdet på message_allowed är ”true” i svaret från GetBookingDetails. | 0..1 |
| Svar |  |  |  |
| resultCode | ResultCodeEnum (string) | Status för den gjorda avbokningen. | 1..1 |
| resultText | string | Ev. meddelande kopplat till resultatkoden. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Om bokningen som avbokas är en tidsatt kallelse (isInvitation = ”true” och start- och endDateInclusive är angivna) behöver tjänsteproducenten agera utifrån gällande verksamhetsregler för avbokad kallad tid. Det skulle t.ex. kunna vara att generera en ny kallelse.

### GetAllCareTypes
Tjänst att för invånaren kunna visa en lista över vilka typer av vård som kan bokas hos en viss vårdenhet/mottagning (ex: Provtagning, Sjukgymnastik, Vaccinering, Synundersökning). Efter val kan konsumerande system begränsa visade tider till den typ av vård som invånaren är ute efter.
Betydelse och kodverk är inte nationellt standardiserat, utan styrs av respektive vårdenhet. Tjänstekonsumenten får därför inte binda logik till specifika värden. De värden (koder och beskrivningar) som returneras i svaret kan visas för användaren (t.ex. i vallistor), samt användas som värde i begäran till andra tjänster i denna domän som har fältet. All annan användning av CareType saknar stöd i detta regelverk.
Tjänsten returnerar en lista över vårdtyper som erbjuds angiven invånare (subject_of_care) av angiven vårdenhet och som kan bokas online för angivna tidstyper och utförare. Om utförare (performer) eller tidstyper utelämnats i begäran, motsvaras det av att alla tidstyper och alla utförare angivits i begäran.

#### Frivillighet
Kontraktet är frivilligt att implementera för producent.

#### Version
Tjänsten finns sedan 1.1. Tjänsten har inte uppdaterats sedan 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_014.jpg](images/img_014.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| timeTypeIDs | TimeTypeIDType (string) | Lista med tidstyper. | 0..* |
| performer | HsaIdType (string) | HSA-id för medarbetaren. | 0..* |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| Svar (careTypes) | CareTypeType | Lista med vårdtyper. | 0..* |
| careTypeName | string | Beskrivande text för vårdtypen (att visas för användare). | 1..1 |
| careTypeId | CareTypeIDType (string) | Kod för vårdtypen (intern för vårdenheten). | 1..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
De careType-koder som tjänsteproducenten returnerar måste vara giltiga att ange som CareType i övriga tjänstekontrakt (där fältet förekommer) i denna domän i interaktion med samma vårdenhet.
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

### GetAllHealthcareFacilities
Tjänst för att hämta alla vårdenheter som erbjuds för ombokning eller nybokning för aktuell invånare (vårdenhet i begäran representerar då den kallande organisationen). Denna tjänst följer inte riktigt samma mönster som övriga tjänster, genom att vårdenheten som får begäran i någon mening agerar ställföreträdare för en sortiments- och utbudskatalog och därigenom svarar för andra vårdenheters räkning. Det är dock underförstått att de vårdenheter som listas i svaret utför samma typ av behandling som den vårdenhet som fick begäran och följer samma kodverk för CareType, TimeType etc. Det är den svarande vårdenhetens ansvar att de vårdenheter som listas i svaret är bokningsbara, rent avtalsmässigt och att de har stöd för online-bokning enligt dessa tjänstekontrakt.
Tjänsten returnerar en lista av vårdenheter som kan bokas online av angiven invånare. Om bookingId är med i begäran, returneras endast vårdenheter som är valbara vid ombokning av just angiven bokning. Om namn på vårdenhet returneras, indikeras att detta värde bör visas för användaren, snarare än värdet i HSA-katalogen.
Förtydligande:
I listan med vårdenheter i svaret ska även den vårdenhet som svarar på frågan finnas med om denna erbjuder tider för aktuell behandling. D.v.s. det ska inte vara underförstått för konsumenten att den svarande vårdenheten alltid kan utföra det som efterfrågas. Exempel på situationer när den svarande vårdenheten inte ska finnas med i listan är om denna är en så kallad virtuell mottagning/vårdenhet som används som avsändare vid kallelser för screening men som inte utför åtgärden.
Tjänsten är obligatorisk för vårdenheter som tillåter ombokning på annan vårdenhet (t.ex. cytologi-prov där kvinnan kan välja olika vårdenheter baserat på en bokning eller kallelse).

#### Frivillighet
Kontraktet är frivilligt att implementera för producent.

#### Version
Tjänsten finns sedan 1.1. Tjänsten har inte uppdaterats sedan 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_008.jpg](images/img_008.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. / Kan användas för att filtrera vad en tjänsteproducent ska returnera för en viss invånare (även vid nybokning). | 1..1 |
| bookingId | BookingIdType (string) | Internt bokningsid. Obligatoriskt när förfrågan gäller ombokning. Detta bokningsid behövs för tjänsteproducenten ska kunna filtrera på egenskaper för en grundbokning | 0..1 |
| Svar (healthcareFacilityInfos) | HealthcareFacilityInfoType | Lista med tillgängliga mottagningar/vårdenheter. | 0..* |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| healthcare_facility_name | string | Vårdenhetens föredragna namn, vid visning för användare (i förhållande till HSA-katalogens innehåll). | 0..1 |

### GetAllPerformers
Tjänst för att hämta en lista över medarbetare i vårdprofessionen som är bokningsbara online hos angiven vårdenhet för aktuell invånare. Tjänsteproducenten ansvarar för att tillämpa verksamhetens regelverk för att filtrera svaret (t.ex. en vårdenhet som bara tillåter invånare att boka tid enligt listad doktor).
Tjänsten returnerar en lista med information om utförare (en medarbetare). För varje utförare ska HSA-id vara med.

#### Frivillighet
Tjänsten är obligatorisk för vårdenheter som erbjuder val av vårdpersonal i samband med nybokning eller ombokning. För övriga är tjänsten frivillig.

#### Version
Tjänsten finns sedan 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_005.jpg](images/img_005.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| timeTypeIDs | TimeTypeIDType (string) | Tidstypid för att begränsa svarslistan. | 0..* |
| careTypeIDs | CareTypeIDType (string) | Vårdtypsid för att begränsa svarslistan. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..* |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx för begränsa/utöka svarslistan. | 1..1 |
| Svar (performerInfos) | PerformerInfoType | Lista med medarbetare. | 0..* |
| perfomer | HsaIdType (string) | HSA-id för bokningsbar medarbetare. / Felstavning på namnet (”perfomer” istället för ”performer”) är enligt schema. Se issue id 19. | 1..1 |
| firstName | string | Medarbetarens förnamn. | 1..1 |
| lastName | string | Medarbetarens efternamn. | 1..1 |
| title | string | Medarbetarens titel. | 0..1 |

### GetAllTimeTypes
Tjänsten hämtar alla tidstyper som kan användas vid nybokning hos angiven vårdenhet. Tidstyperna kan filtreras för valda vårdtyper, utförare och per invånare.
Tjänsten returnerar en lista över tidstyper som erbjuds angiven invånare av angiven vårdenhet och som kan bokas online för angivna vårdtyper och utförare. Om utförare eller vårdtyper utelämnats ur begäran, motsvaras det av att alla vårdtyper eller alla utförare angivits.

#### Frivillighet
Tjänsten är obligatorisk om vårdenhet erbjuder nybokning. För övriga är tjänsten frivillig.

#### Version
Tjänsten finns sedan 1.0. Tjänsten har förändrats i version 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_025.jpg](images/img_025.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| careTypeIDs | CareTypeIDType (string) | Vårdtypsidentitet för att begränsa sökningen. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..* |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. / Kan användas för att filtrera vad tjänsteproducenten ska returnera för en viss invånare. (T.ex. patient som pga. av sjukdom måste erbjudas enstaka speciella tidstyper, som inte erbjuds alla patienter). | 1..1 |
| Svar (ListOfTimeTypes) | TimeTypeType | Lista med tillgängliga tidstyper. | 0..* |
| timeTypeName | string | Namnet på tidstypen. | 1..1 |
| timeTypeId | TimeTypeIDType (string) | Identifierare för tidstypen. | 1..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

### GetAvailableDates
Tjänsten hämtar datum med lediga tider för angivet datumintervall. Vid anrop för ombokning styr tidstyp och resurs från ursprungsbokningen vilka datum som returneras. Om det är nybokning hämtas tillgängliga datum utifrån tidstyp. Observera att passerade tider inte ska returneras av tjänsten.
Tjänsten returnerar lediga tider som är bokningsbara online för angiven invånare (historiska tider får inte returneras).

#### Frivillighet
Tjänsten är obligatorisk om vårdenhet erbjuder nybokning eller ombokning. För övriga är tjänsten frivillig.

#### Version
Tjänsten finns sedan 1.0.

#### Meddelandeinformationsmodell (MIM)

![img_019.jpg](images/img_019.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | Hsa-Id för mottagning/vårdenhet. | 1..1 |
| bookingId | BookingIdType (string) | Intern bokningsidentitet. Används för att indikera ombokning, så att tjänsteproducenten kan anpassa svaret till tider som är giltiga för ombokning av angiven bokning. | 0..1 |
| startDateInclusive | DT (string) | Datum från och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD. | 1..1 |
| endDateInclusive | DT (string) | Datum till och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD. | 1..1 |
| performer | HsaIdType (string) | HSA-id för HoS-personal. | 0..* |
| timeTypeName | string | Namn på tidstyp. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identifierare för tidstyp | 0..1 |
| careTypeName | string | Namn på vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| Svar (performerAvailabilityByDate) | PerformerAvailabilityByDateType | Lista med tillgängliga tider. | 0..* |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| performer | HsaIdType (string) | HSA-id för HoS-personal. | 0..1 |
| date | DT (string) | Ett datum där lediga tider finns, på formatet ÅÅÅÅMMDD. | 1..1 |
| resourceName | string | Namn på resurs. | 0..1 |
| resourceID | ResourceIDType (string) | Identifierare för resurs. | 0..1 |
| timeTypeName | string | Namn på tidstyp. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identifierare för tidstyp. | 0..1 |
| careTypeName | string | Namn på vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |

### GetAvailableTimeslots
Tjänsten hämtar lediga tider för angivet datumintervall. Vid anrop för ombokning styr tidstyp och resurs från ursprungsbokningen vilka datum som returneras. Om det är nybokning hämtas tillgängliga datum utifrån tidstyp. Observera att passerade tider inte ska returneras av tjänsten (tider som är historiskt bokbara).

#### Frivillighet
Tjänsten är obligatorisk om vårdenhet erbjuder nybokning eller ombokning. För övriga är tjänsten frivillig.

#### Version
Tjänsten finns sedan version 1.0. Tjänsten har inte förändrats sedan version 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_015.jpg](images/img_015.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | Hsa-ID för mottagning/vårdenhet. | 1..1 |
| bookingId | BookingIdType (string) | Intern bokningsidentitet. Används för att indikera ombokning, så att tjänsteproducenten kan anpassa svaret till tider som är giltiga för ombokning av angiven bokning. | 0..1 |
| startDateInclusive | DT (string) | Datum från och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD. | 1..1 |
| endDateInclusive | DT (string) | Datum till och med för de lediga tider som skall sökas ut, på formatet ÅÅÅÅMMDD. | 1..1 |
| performer | HsaIdType (string) | HSA-id för HoS-personal. | 0..* |
| timeTypeName | string | Namn på tidstyp. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identifierare för tidstyp. | 0..1 |
| careTypeName | string | Namn på vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identifierare för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| Svar (timeslotDetail) | TimeslotType | Lista med tillgängliga tider. | 0..* |
| startTimeInclusive | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| endTimeExclusive | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| performer | HsaIdType (string) | HSA-id för Hos-person som besöket är bokat hos. | 0..1 |
| bookingId | BookingIdType (string) | Bokningsidentitet för det bokade besöket. | 0..1 |
| purpose | string | Beskrivning av besöksorsak angiven av vårdenhet. | 0..1 |
| reason | string | Kontaktorsak som invånare uppger vid bokning. | 0..1 |
| resourceName | string | Namn på resurs. | 0..1 |
| healthcare_facility_name | string | Namn på bokad mottagning/vårdenhet. | 0..1 |
| performerName | string | Namn på HoS-person som besöket är bokat hos. Ska innehålla en blank-tecken-separerad sammanslagning av yrkestitel, förnamn, mellannamn, efternamn. | 0..1 |
| resourceID | ResourceIDType (string) | Identifierare för resurs. | 0..1 |
| timeTypeName | string | Tidstyp för det bokade besöket. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identifierare för tidstyp. | 0..1 |
| careTypeName | string | Klartext för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identifierare för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| cancel_booking_allowed | boolean | Sätts av producenten. Anger om bokningen kan avbokas. Avbokning är inte tillåten om värdet saknas eller om värdet är false. | 0..1 |
| rebooking_allowed | boolean | Sätts av producenten. Anger om bokningen kan ombokas. Ombokning är inte tillåten om värdet saknas eller om värdet är false. | 0..1 |
| message_allowed | boolean | Sätts av producenten. Anger om orsak till av- eller ombokning kan skickas med i berörda tjänster. Orsak kan inte skickas om värdet saknas eller om värdet är false. | 0..1 |

### GetBookingDetails
Tjänsten hämtar detaljinformation för en befintlig bokning vid en vårdenhet. Bokningen kan också avse en kallelse, vilket indikeras av flaggan isInvitation i svaret. Svaret kan vara en öppen kallelse – d.v.s. isInvitation är ”true” och start- och endTimeInclusive saknas.

#### Frivillighet

#### Version
Tjänsten finns sedan version 1.0. Tjänsten har förändrats i version 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_009.jpg](images/img_009.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| bookingId | BookingIdType (string) | Intern bokningsidentitet. | 1..1 |
| Svar (timeslotDetail) | TimeslotType | Information om den aktuella tiden. | 1..1 |
| startTimeInclusive | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 0..1 |
| endTimeExclusive | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 0..1 |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| performer | HsaIdType (string) | HSA-id för Hos-person som besöket är bokat hos. | 0..1 |
| bookingId | BookingIdType (string) | Bokningsidentitet för det bokade besöket. | 0..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| purpose* | string | Beskrivning av besöksorsak angiven av vårdenhet. | 0..1 |
| reason | string | Kontaktorsak som invånare uppger vid bokning. | 0..1 |
| resourceName | string | Namn på resurs. | 0..1 |
| healthcare_facility_name | string | Namn på bokad mottagning/vårdenhet. | 0..1 |
| performerName | string | Namn på HoS-person som besöket är bokat hos. Ska innehålla en blank-tecken-separerad sammanslagning av yrkestitel, förnamn, mellannamn, efternamn. | 0..1 |
| resourceID | ResourceIDType (string) | Identitet för resurs. | 0..1 |
| timeTypeName | string | Tidstyp för det bokade besöket. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identitet för tidstyp. | 0..1 |
| careTypeName | string | Klartext för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| cancel_booking_allowed | boolean | Sätts av producenten. Anger om bokningen kan avbokas. Avbokning är inte tillåten om värdet saknas eller om värdet är false. | 1..1 |
| rebooking_allowed | boolean | Sätts av producenten. Anger om bokningen kan ombokas. Ombokning är inte tillåten om värdet saknas eller om värdet är false. | 1..1 |
| message_allowed | boolean | Sätts av producenten. Anger om orsak till av- eller ombokning kan skickas med i berörda tjänster. Orsak kan inte skickas om värdet saknas eller om värdet är false. | 1..1 |
| isInvitation | boolean | Sätts av producenten. Anger om bokningen har skapats på vårdgivarens (isInvitation = ”true”) eller invånarens (isInvitation = ”false”, eller fältet saknas) initiativ. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
* Elementet purpose är obligatoriskt om bokningen är en kallelse (isInvitation = ”true”). Producenten har möjlighet att ange kallelsetexten i det standardiserade layout-formatet ”DocBook” version 5.0 (Oasis standard). Se avsnitt DocBook under Generella regler för instruktioner och regler för användning.
Användningen av DocBook för i elementet purpose är begränsad till följande element:
Article
Info
Title
Para
Section
Ulink
Bibliography

### GetSubjectOfCareSchedule
Tjänsten hämtar alla bokade tider för en invånare. Information om tiden är möjlig att av/omboka medföljer.
Vid direktadressering med verksamhets HSA-id returneras samtliga tider för den aktuella verksamheten.
Om tjänsten anropas som aggregerande tjänst så returneras invånarens bokade tider för samtliga enheter som har uppdaterat Engagemangsindex.

#### Frivillighet
Tjänstekontraktet är obligatoriskt att stödja för producenter.

#### Version
Tjänsten finns sedan version 1.0. Tjänsten har förändrats i version 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_003.jpg](images/img_003.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. / Observera att vid adressering av aggregerande tjänst kommer detta fält att ignoreras av den aggregerande tjänsten. Fältet måste ändå finnas med av kompatibilitetsskäl. | 1..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| Svar (timeslotDetail*) | TimeslotType | Lista med användarens tider för angiven vårdenhet. | 0..* |
| startTimeInclusive | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| endTimeExclusive | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| performer | HsaIdType (string) | HSA-id för Hos-person som besöket är bokat hos. | 0..1 |
| bookingId | BookingIdType (string) | Bokningsidentitet för det bokade besöket. | 1..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| purpose | string | Beskrivning av besöksorsak angiven av vårdenhet. | 0..1 |
| reason | string | Kontaktorsak som invånare uppger vid bokning. | 0..1 |
| resourceName | string | Namn på resurs. | 0..1 |
| healthcare_facility_name | string | Namn på bokad mottagning/vårdenhet. | 0..1 |
| performerName | string | Namn på HoS-person som besöket är bokat hos. Ska innehålla en blank-tecken-separerad sammanslagning av yrkestitel, förnamn, mellannamn, efternamn. | 0..1 |
| resourceID | ResourceIDType (string) | Identitet för resurs. | 0..1 |
| timeTypeName | string | Tidstyp för det bokade besöket. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identitet för tidstyp | 0..1 |
| careTypeName | string | Klartext för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| cancel_booking_allowed | boolean | Sätts av producenten. Anger om bokningen kan avbokas. Avbokning är inte tillåten om värdet saknas eller om värdet är false. | 0..1 |
| rebooking_allowed | boolean | Sätts av producenten. Anger om bokningen kan ombokas. Ombokning är inte tillåten om värdet saknas eller om värdet är false. | 0..1 |
| message_allowed | boolean | Sätts av producenten. Anger om orsak till av- eller ombokning kan skickas med i berörda tjänster. Orsak kan inte skickas om värdet saknas eller om värdet är false. | 0..1 |
| isInvitation | boolean | Sätts av producenten. Anger om bokningen har skapats på vårdgivarens (isInvitation = ”true”) eller invånarens (isInvitation = ”false”, eller fältet saknas) initiativ. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
* Öppna kallelser ingår inte i svaret.

#### Annan information om kontraktet

##### Användning med aggregerande tjänst
Tjänstekontraktet kan användas inom en aggregerande tjänst genom att i LogicalAddress i frågemeddelandets header, uppge HSA-id för aktuell plattform där den aggregerande tjänsten finns (normalt Nationella tjänsteplattformen hos Inera). I dessa fall måste även elementet healthcare_facility i frågemeddelandets body vara plattformens HSA-id.

### MakeBooking
Tjänst för nybokning vid en vårdenhet. Tjänsten returnerar en status för genomförd nybokning.

#### Frivillighet
Tjänstekontraktet är obligatoriskt att stödja för vårdenheter som erbjuder nybokning.

#### Version
Tjänsten finns sedan 1.0. Tjänsten har inte förändrats sedan version 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_016.jpg](images/img_016.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcare_facility_med | HsaIdType (string) |  | 1..1 |
| requestedTimeslot | TimeslotType | Information för aktuell bokning. | 1..1 |
| startTimeInclusive | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| endTimeExclusive | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| performer | HsaIdType (string) | HSA-id för Hos-person som besöket är bokat hos. | 0..1 |
| bookingId | BookingIdType (string) | Bokningsidentitet för det bokade besöket. | 0..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| purpose | string | Beskrivning av besöksorsak angiven av vårdenhet. | 0..1 |
| reason | string | Kontaktorsak som invånare uppger vid bokning. | 0..1 |
| resourceName | string | Namn på resurs. | 0..1 |
| healthcare_facility_name | string | Namn på bokad mottagning/vårdenhet. | 0..1 |
| performerName | string | Namn på HoS-person som besöket är bokat hos. Ska innehålla en blank-tecken-separerad sammanslagning av yrkestitel, förnamn, mellannamn, efternamn. | 0..1 |
| resourceID | ResourceIDType (string) | Identitet för resurs. | 0..1 |
| timeTypeName | string | Tidstyp för det bokade besöket. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identitet för tidstyp. | 0..1 |
| careTypeName | string | Klartext för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| subject_of_care_info | SubjectOfCareType |  | 1..1 |
| phone | string | Telefonnummer. | 0..1 |
| email | string | Email-adress. | 0..1 |
| address | string | Adress. | 0..1 |
| coaddress | string | Co-adress. | 0..1 |
| firstName | string | Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). | 1..1 |
| middleName | string | Invånarens mellannamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). | 0..1 |
| lastName | string | Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). | 1..1 |
| notification | string | Notifiering till producent | 0..1 |
| Svar |  |  |  |
| bookingId | BookingIdType (string) | Id för skapad bokning. Ska anges vid genomförd bokning (resultCode OK eller INFO), annars inte (ERROR). | 0..1 |
| resultCode | ResultCodeEnum (string) | Status för den gjorda avbokningen. | 1..1 |
| resultText | string | Ev. meddelande kopplat till resultatkoden. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Om bookingId angivits i begäran (nybokning mot öppen kallelse) ska producenten säkerställa att upprepad nybokning mot samma kallelse inte kan göras även om ledig tid anges.
Om bookingId anges (för öppen kallelse) får nybokning endast ske mot healthcare_facility som hämtats från GetAllHealthcareFacilities med bookingId för kallelsen som sökparameter.
Logiskt fel: resultCode, resultText.

### UpdateBooking
Tjänst för att uppdatera en bokning med nytt datum och tid, alltså en ombokning. För att vårdgivaren ska kunna spåra ombokningar gjorda av invånaren genom direkttjänst, bör vårdsystemet kunna betjäna vårdgivaren med möjlighet att följa upp invånarens bokningsaktiviteter.
Tjänsten returnerar en status för genomförd ombokning.

#### Frivillighet
Tjänsten är obligatorisk för vårdenheter som erbjuder ombokning och således kan svara ”sant” i fältet ”rebooking_allowed” för någon av följande tjänster:
GetSubjectOfCareSchedule
GetAvailableTimeslots
GetBookingDetail
I övriga fall är tjänsten frivillig.

#### Version
Tjänsten finns sedan 1.0. Tjänsten har inte förändrats sedan version 1.1.

#### Meddelandeinformationsmodell (MIM)

![img_012.jpg](images/img_012.jpg)

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kard. |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| requestedTimeslot | TimeslotType |  | 1..1 |
| startTimeInclusive | TS (string) | Startdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| endTimeExclusive | TS (string) | Slutdatum och klockslag för bokad tid, på formatet ÅÅÅÅMMDDttmmss. | 1..1 |
| healthcare_facility | HsaIdType (string) | HSA-id för mottagning/vårdenhet. | 1..1 |
| performer | HsaIdType (string) | HSA-id för Hos-person som besöket är bokat hos. | 0..1 |
| bookingId | BookingIdType (string) | Bokningsidentitet för det bokade besöket. | 1..1 |
| subject_of_care | SubjectOfCareIdType (string) | Personnummer enl. yyyymmddxxxx. | 1..1 |
| purpose | string | Beskrivning av besöksorsak angiven av vårdenhet. | 0..1 |
| reason | string | Kontaktorsak som invånare uppger vid bokning. | 0..1 |
| resourceName | string | Namn på resurs. | 0..1 |
| healthcare_facility_name | string | Namn på bokad mottagning/vårdenhet. | 0..1 |
| performerName | string | Namn på HoS-person som besöket är bokat hos. Ska innehålla en blank-tecken-separerad sammanslagning av yrkestitel, förnamn, mellannamn, efternamn. | 0..1 |
| resourceID | ResourceIDType (string) | Identitet för resurs. | 0..1 |
| timeTypeName | string | Tidstyp för det bokade besöket. | 0..1 |
| timeTypeID | TimeTypeIDType (string) | Identitet för tidstyp. | 0..1 |
| careTypeName | string | Klartext för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| careTypeID | CareTypeIDType (string) | Identitet för vårdtyp. Ska stödjas av producent om GetAllCaretypes stödjs. Konsument får bara skicka värden till producent som stödjer GetAllCaretypes. | 0..1 |
| subject_of_care_info | SubjectOfCareType |  | 0..1 |
| phone | string | Telefonnummer. | 0..1 |
| email | string | Email-adress. | 0..1 |
| address | string | Adress. | 0..1 |
| coaddress | string | Co-adress. | 0..1 |
| firstName | string | Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). | 1..1 |
| middleName | string | Invånarens mellannamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). | 0..1 |
| lastName | string | Invånarens förnamn enligt definition och aktuellt värde hos Skatteverket (högst 5 dagar efter senaste ändring hos Skatteverket). | 1..1 |
| notification | string | Avisering | 0..1 |
| Svar |  |  |  |
| resultCode | ResultCodeEnum (string) | Status för den gjorda avbokningen. | 1..1 |
| resultText | string | Ev. meddelande kopplat till resultatkoden. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Efter genomförd begäran ska en kallelse ha omvandlats till en bokning – d.v.s. ett bookingId som vid anrop till GetBookingDetail har isInvitation = ”true” ska vid anrop efter UpdateBooking ha isInvitation = ”false”.
Begäran får endast skickas om healthcare_facility är samma healthcare_facility som ursprunglig bokning eller är en healthcare_facility som hämtats från GetAllHealthcareFacilities med bookingId för ursprunglig bokning som sökparameter.
BookingId måste avse en tidssatt bokning (oavsett värde på IsInvitation). D.v.s. UpdateBooking får inte användas för öppna kallelser (IsInvitation = ”true” och start- och endTimeInclusive saknas). För öppna kallelser ska istället MakeBooking användas (även om bookingId finns för kallelsen).
Logiskt fel: resultCode, resultText. Exempel på detta kan vara ”tiden har blivit upptagen av annan invånare”.

