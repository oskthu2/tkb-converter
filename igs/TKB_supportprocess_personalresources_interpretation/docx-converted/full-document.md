
|  | Tjänstekontraktsbeskrivning Tolkförmedling / Version 1.0_RC1 / 2017-07-10 |
| :--- | :--- |
Innehåll
1	Inledning	6
1.1	Svenskt namn	6
2	Versionsinformation	6
2.1	Version 1.0	6
2.1.1	Oförändrade tjänstekontrakt	6
2.1.2	Nya tjänstekontrakt	6
2.1.3	Förändrade tjänstekontrakt	6
2.1.4	Utgångna tjänstekontrakt	7
2.2	Version tidigare	7
3	Tjänstedomänens arkitektur	7
3.1	Flöden	7
3.1.1	Beställning av tolk	7
3.1.2	Inringd beställning av tolk	9
3.1.3	Obligatoriska kontrakt	11
3.2	Adressering	11
3.3	Aggregering och engagemangsindex	11
4	Tjänstedomänens krav och regler	11
4.1	Informationssäkerhet och juridik	11
4.1.1	Krav på tjänstekonsumenten	12
4.1.2	Krav på tjänsteproducenten	12
4.2	SLA-krav/support	12
4.2.1	Tillgänglighet/support	12
4.2.2	SLA krav	12
4.2.3	Intervall mellan hämtningar	12
4.3	Felhantering	13
4.3.1	Krav på en tjänsteproducent	13
4.3.2	Krav på en tjänstekonsument	13
5	Tjänstedomänens meddelandemodeller	13
5.1	V-MIM	14
5.1.1	AnswerInquiry	14
5.1.2	CreateBooking	16
5.1.3	ListBookings	18
5.1.4	ListInquiries	21
5.1.5	UpdateBooking	24
5.2	Formatregler	25
5.2.1	Datum och tid	25
6	Tjänstekontrakt	26
6.1	AnswerInquiry	26
6.1.1	Version	26
6.1.2	Fältregler	26
6.1.3	Övriga regler	26
6.1.4	Annan information om kontraktet	26
6.2	ListBookings	27
6.2.1	Version	27
6.2.2	Fältregler	27
6.2.3	Övriga regler	27
6.2.4	Annan information om kontraktet	27
6.3	ListInquiries	28
6.3.1	Version	28
6.3.2	Fältregler	28
6.3.3	Övriga regler	28
6.3.4	Annan information om kontraktet	28
6.4	UpdateBooking	29
6.4.1	Version	29
6.4.2	Fältregler	29
6.4.3	Övriga regler	29
6.4.4	Annan information om kontraktet	29
6.5	CreateBooking	30
6.5.1	Version	30
6.5.2	Fältregler	30
6.5.3	Övriga regler	30
6.5.4	Annan information om kontraktet	30
6.6	Gemensamma klasser och datatyper	30
6.6.1	AuthorizationLevelWithRequirement	30
6.6.2	Booking	31
6.6.3	BookingAnswerData	31
6.6.4	BookingCreate	31
6.6.5	BookingData	32
6.6.6	BookingInformationFromAssociation	33
6.6.7	BookingOccasion	34
6.6.8	BookingOccasionCreate	34
6.6.9	BookingUpdate	34
6.6.10	ContactInformation	34
6.6.11	Inquiry	35
6.6.12	InquiryResponse	36
6.6.13	MessageSequenceNumber	37
6.6.14	PatientInformation	37
6.6.15	ReferenceNumberMapping	37
6.6.16	RequiredGenderWithRequirement	37
6.6.17	RequiredInterpreterNameWithRequirement	38
6.6.18	ResultType	38
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.0_RC1 |  | 2017-01-04 | Skapat första version av dokumentet | Gustaf Claesson / Emmy Damberg |  |
| 1.0_RC1 |  | 2017-06-08 | Lagt till för inringd beställning | Terje Isaksen |  |
| 1.0_RC1 |  | 2017-07-10 | Lagt till information i kap 4. / Uppdaterat datatyper i scheman och MIM:ar så att kodad datatyp och instansidentifierare används istället för enums/strängar där det är relevant. | Emmy Damberg |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | AB_supportprocess_personalresources_interpretation | Arkitekturella beslut för domänen Tolkförmedling |  |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | IS_supportprocess_personalresources_interpretation | Informationsspecifikation för domänen Tolkförmedling |  |
| R4 | Regel #11, Logiska fel | RIV Tekniska Anvisningar - Tjänsteschema 2.1 | http://rivta.se/documents/ARK_0005/ |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
supportprocess: personalresources: interpretation
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
operativt processtöd:personalresurser:tolkförmedling
tolkförmedling

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen supportprocess: personalresources: interpretation.

### Version 1.0

#### Oförändrade tjänstekontrakt
Ingen tidigare version av tjänstekontrakt finns.

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
AnswerInquiry, version 1.0
CreateBooking, version 1.0
ListBookings, version 1.0
ListInquiry, version 1.0
UpdateBooking, version 1.0

#### Förändrade tjänstekontrakt
Ingen tidigare version av tjänstekontrakt finns.

#### Utgångna tjänstekontrakt
Ingen tidigare version av tjänstekontrakt finns.

### Version tidigare
Ingen tidigare version av tjänstekontrakt finns.

## Tjänstedomänens arkitektur

### Flöden
I detta avsnitt beskrivs domänens sekvensdiagram. För arbetsflöden, informationsspecifikationen [R3].
Följande aktörer och system förekommer i flödena:

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Beställare | Person som arbetar inom hälso- och sjukvården och som initierar beställning av ett tolkuppdrag. |
| Tolkportalen | Stockholms läns landstings system för beställning och hantering av tolkbeställningar. |
| Tjänsteplattform | Regional tjänsteplattform. |
| System hos tolkförmedling | Administrativt system hos tolkförmedlingen där förfrågningar besvaras och beställningar hanteras. |
| Personal hos tolkförmedling | Person som arbetar åt en tolkförmedling med att besvara och administrera förfrågningar om tolkuppdrag. |

#### Beställning av tolk
Flödet beskriver de steg som genomförs i de fall då beställaren registrerar beställningen själv i Tolkportalen.
Beställaren skapar beställning och personal hos tolkförmedling kan titta på aktuella förfrågningar. Tolkförmedlingen hämtar med fördel förfrågningar automatiskt med jämna mellanrum, t.ex. en gång per minut (men inte oftare, se avsnitt 4.2.3). Personal hos tolkförmedlingen svarar på förfrågning och beställaren kan då se beställningen i sin helhet, inklusive information om vilken tolk som är inbokad för uppdraget. Vid behov kan bland annat denna information även uppdateras senare. Efter utfört tolkuppdrag ska beställaren kvittera uppdraget i Tolkportalen.

![img_009.png](images/img_009.png)

##### Sekvenssteg
I nedanstående tabell beskrivs huvudstegen i sekvensdiagrammet.

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| 1 Skapar beställning | Beställaren skapar beställning i Tolkportalen, vilket leder till att en förfrågning går ut ut till tolkförmedlingarna enligt givna regler. |
| 2-3 Hämtar förfrågningar | System hos tolkförmedling hämtar tillgängliga förfrågningar via tjänstekontraktet ListInquiries. Detta sker förslagsvis schemalagt en gång i minuten, men kan också göras manuellt. |
| 4 Tittar på förfrågningar | Personal hos tolkförmedlingen tittar i tolkförmedlingssystemet på de förfrågningar som hämtats in från Tolkportalen. |
| 5 Svarar på förfrågning | Tolkförmedlingen svarar på en tillgänglig förfrågan, antingen genom att acceptera den eller tacka nej. Tolkförmedlingen anger också vilken tolk som är tilltänkt för uppdraget. Informationen förmedlas via tjänstekontraktet AnswerInquiry. |
| 6-7 Hämtar information om beställningar | System hos tolkförmedling hämtar information om sina aktuella beställningar via tjänstekontraktet ListBookings. Detta sker förslagsvis schemalagt en gång i minuten, men kan också göras manuellt. |
| 8 Tittar på aktuell information om beställning | Personal hos tolkförmedlingen tittar på de beställningar som tillhör den egna förmedlingen i sitt system. Beställaren kan när som helst avboka en beställning, dvs. ställa in tolkuppdraget, och förmedlaren kommer då att se detta när aktuell information om beställningar hämtas. |
| 9 Uppdaterar information | Personal hos tolkförmedlingen uppdaterar information om ett tolkuppdrag och det överförs till Tolkportalen via tjänstekontraktet UpdateBooking så att beställaren kan se det. |

#### Inringd beställning av tolk
Flödet beskriver de steg som genomförs i de fall då beställaren ringer in sin beställning till tolkförmedlingen, som därefter registrerar beställningen i sitt administrativa system och därmed också i Tolkportalen.
När beställningen är registrerad kan den hanteras på samma sätt som i flödet ”Beställning av tolk”, dvs. tittas på, uppdateras, avbokas m.m.

![img_006.png](images/img_006.png)

##### Sekvenssteg
I nedanstående tabell beskrivs huvudstegen i sekvensdiagrammet.

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| 1 Ringer till tolkförmedling | Beställaren ringer direkt till en tolkförmedling och frågar om de har en tillgänglig tolk för tolkuppdraget. |
| 2 Registrerar inringd beställning | Om tolkförmedlingen accepterar den inringda beställningen registrerar personalen på tolkförmedlingen den i sitt administrativa system och beställningen skickas till Tolkportalen via tjänstekontraktet CreateBooking. |
| 3-4 Hämtar information om beställningar | System hos tolkförmedling hämtar information om sina aktuella beställningar via tjänstekontraktet ListBookings. Detta sker förslagsvis schemalagt en gång i minuten, men kan också göras manuellt. |
| 5 Tittar på aktuell information om beställning | Personal hos tolkförmedlingen tittar på de beställningar som tillhör den egna förmedlingen i sitt system. Beställaren kan när som helst avboka en beställning, dvs. ställa in tolkuppdraget, och förmedlaren kommer då att se detta när aktuell information om beställningar hämtas. |
| 6 Uppdaterar information | Personal hos tolkförmedlingen uppdaterar information om ett tolkuppdrag och det överförs till Tolkportalen via tjänstekontraktet UpdateBooking så att beställaren kan se det. |

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Sekvensdiagram Beställning av tolk | Sekvensdiagram
Inringd beställning av tolk |
| :--- | :--- | :--- |
| CreateBooking |  | X |
| ListInquiries | X |  |
| AnswerInquiry | X |  |
| ListBookings | X | X |
| UpdateBooking | X | X |

### Adressering
Samtliga tjänstekontrakt nyttjar en systembaserad adressering där adressen går till SLL Tolkportalen.

### Aggregering och engagemangsindex
Aggregering och uppdatering av engagemangsindex är ej aktuellt för denna domän eftersom tjänsterna inte hanterar patientidentiteter.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Se informationsspecifikationen [R3] för informationssäkerhetsklassning.

#### Krav på tjänstekonsumenten
Ansvarig för tjänstekonsumenten ansvarar för att slutanvändaren är inloggad och behörig att ta del av informationen i e-tjänsten.

#### Krav på tjänsteproducenten
Ansvarig för tjänsteproducenten ansvarar för att information endast lämnas ut till godkända tjänstekonsumenter och att slutanvändaren är inloggad med stark autentisering och behörig att ta del av informationen i e-tjänsten.

### SLA-krav/support

#### Tillgänglighet/support
Dessa tjänster driftas med kontorstidssupport. System som utnyttjar dem skall inte vara beroende av tillgänglighet hos tjänsterna under vård av enskild patient. Dessa system måste därför kunna hantera omsändningar av information vid ett senare tillfälle. Tjänsterna är normalt tillgängliga 24h/dygn.

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund exklusive nätverksfördröjningar för 95% av alla anrop |  |
| Tillgänglighet | 99% |  |
| Last | 1 transaktion per sekund | Notera att användningsfrekvensen inte kommer vara jämn över dygnet utan toppar kommer finnas då antalet anrop är betydligt högre än snittet. Förväntad högre belastning 08:00 - 17:00 vardagar. |
| Aktualitet | All information skall alltid vara uppdaterad |  |
| Återställningstid | 2 dygn | Vid katastrof, bortfall av hel hall |
| Servicefönster | Servicefönster första tisdagen i månaden kl. 17-19 |  |

#### Intervall mellan hämtningar
När en tjänstekonsument hämtar förfrågningar (med tjänstekontraktet ListInquiries) så görs detta med fördel automatiskt med jämna mellanrum, t.ex. en minut. Hämtning får dock inte göras oftare än en gång per minut för att undvika överbelastning hos tjänsteproducenten.
Det samma gäller vid hämtning av aktuella beställningar (med tjänstekontraktet ListBookings).

### Felhantering

#### Krav på en tjänsteproducent
Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

##### Logiska fel
För uppdaterande tjänster skall resultCode sättas till någon av de giltiga koderna enligt [R6].
Om resultText innehåller ett meddelande så skall det vara sådant att det kan visas för en användare.
Respektive kontrakt beskriver närmare vilka logiska fel som skall returneras.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Det rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID.

#### Krav på en tjänstekonsument

##### Logiska fel
För konsumenter av uppdaterande tjänster så skall felkoder kunna hanteras och i relevanta fall meddelas aktören.

##### Tekniska fel
Tekniska fel definieras med en text och en kod i ett SOAP-Exception. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som visar vilken information som förmedlas i respektive tjänstekontrakt. För varje meddelandemodell beskrivs hur mappning ser ut mot schema (XSD) för tjänstekontrakt.
Blå klasser kommer från informationsmodellen [R3], och för dessa finns mappning mot referensinformationsmodell i informationsspecifikationen [R3]. Rosa klasser är endast platshållare eller innehåller teknisk information som inte är en del av informationsmodellen.
Begäran visas nedan med rosa bakgrund och svar med vit.

### V-MIM

#### AnswerInquiry

##### Begäran

![img_011.png](images/img_011.png)

| V-MIM / Klass / Attribut | Mappning mot XSD-filer / Klass.attribut |
| :--- | :--- |
| AnswerInquiry | - |
| Svar | - |
| svar | InquiryResponse.Answer |
| beskrivning | InquiryResponse.ExplainingText |
| Restidsersättning |  |
| efterfrågad | BookingInformationFromAssociation.RequestTravelTimeCost |
| Förfrågan | - |
| id | InquiryResponse.InquiryId |
| runda | InquiryResponse.Round |
| Beställning | - |
| beställningsnummer | ReferenceNumberMapping.BookingNumber |
| referensnummer | ReferenceNumberMapping.ReferenceNumber |
| Tolkuppdrag | - |
| telefonnummer | BookingInformationFromAssociation.PhoneNumberForInterpretation |
| Tolk | - |
| namn | BookingInformationFromAssociation. InterpreterName |
| kompetensnivå | BookingInformationFromAssociation .AuthorizationLevel |

##### Svar

![img_007.png](images/img_007.png)

| V-MIM / Klass / Attribut | Mappning mot XSD-filer / Klass.attribut |
| :--- | :--- |
| AnswerInquiryResponse | - |
| Result | - |
| resultCode | ResultType.resultCode |
| errorCode | ResultType.errorCode |
| subCode | ResultType.subCode |
| logId | ResultType.logId |
| message | ResultType.message |

#### CreateBooking

##### Begäran

![img_004.png](images/img_004.png)

| V-MIM / Klass / Attribut | V-MIM / Klass / Attribut | Mappning mot XSD-filer / Klass.attribut |
| :--- | :--- | :--- |
| Beställning | - | - |
| referensnummer | BookingOccasionCreate.ReferenceNumber | BookingOccasionCreate.ReferenceNumber |
| Tolkningstillfälle | - | - |
| starttid | BookingOccasionCreate.StartTime | BookingOccasionCreate.StartTime |
| sluttid | BookingOccasionCreate.EndTime | BookingOccasionCreate.EndTime |
| Restidersättning | - | - |
| efterfrågad | BookingInformationFromAssociation.RequestTravelTimeCost | BookingInformationFromAssociation.RequestTravelTimeCost |
| Tolk | - | - |
| namn | BookingInformationFromAssociation.InterpreterName | BookingInformationFromAssociation.InterpreterName |
| kompetensnivå | BookingInformationFromAssociation.AuthorizationLevel | BookingInformationFromAssociation.AuthorizationLevel |
| Tolkuppdrag | - | - |
| telefonnummer | BookingInformationFromAssociation.PhoneNumberForInterpretation | BookingInformationFromAssociation.PhoneNumberForInterpretation |
| språk | BookingCreate.InterpretationLanguageId | BookingCreate.InterpretationLanguageId |
| typ av tolkning | BookingCreate.InterpretationType | BookingCreate.InterpretationType |
| Patient | - | - |
| ålder | PatientInformation.Age | PatientInformation.Age |
| kön | PatientInformation.Gender | PatientInformation.Gender |
| Tolkställe | - | - |
| adress | ContactInformation.Address | ContactInformation.Address |
| portkod | ContactInformation.DoorCode | ContactInformation.DoorCode |
| vägbeskrivning | ContactInformation.LocationDetails | ContactInformation.LocationDetails |
| namn | ContactInformation.LocationName | ContactInformation.LocationName |
| Beställare | - | - |
| namn | ContactInformation.OrderingPersonName | ContactInformation.OrderingPersonName |
| id | ContactInformation.OrderingPersonId | ContactInformation.OrderingPersonId |
| Beställande enhet | - | - |
| namn | ContactInformation.OrderingUnitName | ContactInformation.OrderingUnitName |
| id | ContactInformation.OrderingUnitHsaId | ContactInformation.OrderingUnitHsaId |
| Enhet över beställande enhet |  |  |
| namn | ContactInformation.OrderingHealthcareUnitName | ContactInformation.OrderingHealthcareUnitName |
| id | ContactInformation.OrderingHealthcareUnitHsaId | ContactInformation.OrderingHealthcareUnitHsaId |
| Hälso- och sjukvårdspersonal | - | - |
| namn | ContactInformation.HealthCareProfessionalName | ContactInformation.HealthCareProfessionalName |
| Kontaktperson | - | - |
| namn | ContactInformation.ContactPerson | ContactInformation.ContactPerson |
| telefonnummer | ContactInformation.ContactPhone | ContactInformation.ContactPhone |

##### Svar

![img_003.png](images/img_003.png)

| V-MIM / Klass / Attribut | Mappning mot XSD-filer / Klass.attribut |
| :--- | :--- |
| Beställning | - |
| beställningsnummer | ReferenceNumberMapping.BookingNumber |
| referensnummer | ReferenceNumberMapping.ReferenceNumber |
| Result | - |
| resultCode | ResultType.resultCode |
| errorCode | ResultType.errorCode |
| subCode | ResultType.subCode |
| logId | ResultType.logId |
| message | ResultType.message |

#### ListBookings
Begäran visas nedan med rosa bakgrund och svaret med vit.

##### Begäran

![img_001.png](images/img_001.png)

| V-MIM / Klass / Attribut | Mappning mot XSD-filer / Klass.attribut |
| :--- | :--- |
| ListBookings | - |
| LastSequenceNumber | ListBookings.LastSequenceNumber |

##### Svar

![img_010.png](images/img_010.png)

| V-MIM / Klass / Attribut | Mappning mot XSD-filer / Klass.attribut |
| :--- | :--- |
| ListBookingsResponse | - |
| LastSequenceNumber | ListBookingsResponseType.LastSequenceNumber |
| HasMoreEntries | ListBookingsResponseType.HasMoreEntries |
| Beställning | - |
| beställningsnummer | BookingOccasion.BookingNumber |
| referensnummer | BookingOccasion.ReferenceNumber/ BookingAnswerData.ReferenceNumber |
| status | BookingOccasion.State |
| faktureringsnummer | BookingOccasion.InvoiceEventId |
| Tolkningstillfälle | - |
| starttid | BookingOccasion.StartTime |
| sluttid | BookingOccasion.EndTime |
| Restidersättning | - |
| efterfrågad | BookingInformationFromAssociation.RequestTravelTimeCost |
| tillåten | BookingData.TravelTimeCostAllowed |
| Beställare | - |
| namn | ContactInformation.OrderingPersonName |
| id | ContactInformation.OrderingPersonId |
| Beställande enhet | - |
| namn | ContactInformation.OrderingUnitName |
| id | ContactInformation.OrderingUnitHsaId |
| Enhet över beställande enhet |  |
| namn | ContactInformation.OrderingHealthcareUnitName |
| id | ContactInformation.OrderingHealthcareUnitHsaId |
| Tolkuppdrag | - |
| språk | BookingData.InterpretationLanguageId |
| ytterligare krav | BookingData.AdditionalRequirements |
| typ av tolkning | BookingData.InterpretationType |
| patientönskemål | BookingData.AdditionalPatientRequest |
| telefonnummer | BookingInformationFromAssociation.PhoneNumberForInterpretation |
| Bokad tolk (Tolk) | - |
| namn | BookingInformationFromAssociation.InterpreterName |
| kompetensnivå | BookingInformationFromAssociation.AuthorizationLevel |
| Behov av specifik kompetensnivå på tolk (Specifikt behov) | - |
| kravnivå | AuthorizationLevelWithRequirement.RequirementLevel |
| Tolk med viss kompetensnivå (Tolk) | - |
| kompetensnivå | AuthorizationLevelWithRequirement.AuthorizationLevel |
| Behov av specifik tolk (Specifikt behov) | - |
| kravnivå | RequiredInterpreterNameWithRequirement.RequirementLevel |
| Specifik tolk (Tolk) | - |
| namn | RequiredInterpreterNameWithRequirement.RequiredInterpreterName |
| vidtalad | RequiredInterpreterNameWithRequirement.IsPreBooked |
| Behov av kön på tolk (Specifikt behov) | - |
| kravnivå | RequiredGenderWithRequirement.RequirementLevel |
| Tolk med visst kön (Tolk) | - |
| kön | RequiredGenderWithRequirement.Gender |
| Tolkställe | - |
| adress | ContactInformation.Address |
| portkod | ContactInformation.DoorCode |
| vägbeskrivning | ContactInformation.LocationDetails |
| namn | ContactInformation.LocationName |
| Hälso- och sjukvårdspersonal | - |
| namn | ContactInformation.HealthCareProfessionalName |
| Kontaktperson | - |
| namn | ContactInformation.ContactPerson |
| telefonnummer | ContactInformation.ContactPhone |
| Patient | - |
| ålder | PatientInformation.Age |
| kön | PatientInformation.Gender |

#### ListInquiries
Begäran visas nedan med rosa bakgrund och svaret med vit.

##### Begäran

![img_005.png](images/img_005.png)

| V-MIM / Klass / Attribut | Mappning mot XSD-filer / Klass.attribut |
| :--- | :--- |
| ListInquiries | - |
| LastSequenceNumber | ListInqueries.LastSequenceNumber |

##### Svar

![img_002.png](images/img_002.png)

| V-MIM / Klass / Attribut | Mappning mot XSD-filer / Klass.attribut |
| :--- | :--- |
| ListInquiriesResponse | - |
| HasMoreEntries | ListInquiriesResponseType.HasMoreEntries |
| LastSequenceNumber | ListInquiriesResponseType.LastSequenceNumber |
| Förfrågan | - |
| id | Inquiry.InquiryId |
| runda | Inquiry.Round |
| status | Inquiry.InquiryState |
| sista svarstid | Inquiry.LastResponseTime |
| först i tur | Inquiry.FirstInRank |
| samma tolk | Inquiry. SameInterpreterRequiredForAllOccasions |
| beskrivning | Inquiry.ExplainingText |
| Beställning | - |
| beställningsnummer | BookingOccasion.BookingNumber |
| referensnummer | BookingOccasion.ReferenceNumber |
| status | BookingOccasion.State |
| faktureringsnummer | BookingOccasion.InvoiceEventId |
| Tolkningstillfälle | - |
| starttid | BookingOccasion.StartTime |
| sluttid | BookingOccasion.EndTime |
| Önskad tolk (Tolk) |  |
| namn | Inquiry.InterpreterName |
| Restidsersättning | - |
| tillåten | BookingData.TravelTimeCostAllowed |
| Beställare | - |
| namn | ContactInformation.OrderingPersonName |
| id | ContactInformation.OrderingPersonId |
| Beställande enhet |  |
| namn | ContactInformation.OrderingUnitName |
| id | ContactInformation.OrderingUnitHsaId |
| Enhet över beställande enhet | - |
| namn | ContactInformation.OrderingHealthcareUnitName |
| id | ContactInformation.OrderingHealthcareUnitHsaId |
| Tolkuppdrag | - |
| språk | BookingData.InterpretationLanguageId |
| ytterligare krav | BookingData.AdditionalRequirements |
| typ av tolkning | BookingData.InterpretationType |
| patientönskemål | BookingData.AdditionalPatientRequest |
| Behov av specifik kompetensnivå på tolk (Specifikt behov) | - |
| kravnivå | AuthorizationLevelWithRequirement.RequirementLevel |
| Tolk med viss kompetensnivå (Tolk) | - |
| kompetensnivå | AuthorizationLevelWithRequirement.AuthorizationLevel |
| Behov av specifik tolk (Specifikt behov) | - |
| kravnivå | RequiredInterpreterNameWithRequirement.RequirementLevel |
| Specifik tolk (Tolk) | - |
| namn | RequiredInterpreterNameWithRequirement.RequiredInterpreterName |
| vidtalad | RequiredInterpreterNameWithRequirement.IsPreBooked |
| Behov av kön på tolk (Specifikt behov) | - |
| kravnivå | RequiredGenderWithRequirement.RequirementLevel |
| Tolk med visst kön (Tolk) | - |
| kön | RequiredGenderWithRequirement.Gender |
| Patient | - |
| ålder | PatientInformation.Age |
| kön | PatientInformation.Gender |
| Tolkställe | - |
| adress | ContactInformation.Address |
| portkod | ContactInformation.DoorCode |
| vägbeskrivning | ContactInformation.LocationDetails |
| namn | ContactInformation.LocationName |
| Hälso- och sjukvårdspersonal | - |
| namn | ContactInformation.HealthCareProfessionalName |
| Kontaktperson | - |
| namn | ContactInformation.ContactPerson |
| telefonnummer | ContactInformation.ContactPhone |

#### UpdateBooking
Begäran visas nedan med rosa bakgrund och svar med vit.

##### Begäran

![img_012.png](images/img_012.png)

| V-MIM / Klass / Attribut | Mappning mot XSD-filer / Klass.attribut |
| :--- | :--- |
| UpdateBooking | - |
| Beställning | - |
| beställningsnummer | BookingUpdate.BookingNumber |
| referensnummer | BookingUpdate.ReferenceNumber |
| Restidsersättning | - |
| efterfrågad | BookingInformationFromAssociation.RequestTravelTimeCost |
| Tolkuppdrag | - |
| telefonnummer | BookingInformationFromAssociation.PhoneNumberForInterpretation |
| Tolk | - |
| namn | BookingInformationFromAssociation.Interpretername |
| kompetensnivå | BookingInformationFromAssociation.AuthorizationLevel |

##### Svar

![img_008.png](images/img_008.png)

| V-MIM / Klass / Attribut | Mappning mot XSD-filer / Klass.attribut |
| :--- | :--- |
| UpdateBookingResponse | - |
| Result | - |
| resultCode | ResultType.resultCode |
| errorCode | ResultType.errorCode |
| subCode | ResultType.subCode |
| logId | ResultType.logId |
| message | ResultType.message |

### Formatregler

#### Datum och tid
Tid och datum anges alltid på formatet ”ÅÅÅÅ-MM-DDThh:mm:ss” enligt RFC 3339 [R5]. Exempel: 2010-11-26T09:00:00. W3C-datatypen dateTime används i tjänstekontrakten för att realisera detta.

## Tjänstekontrakt

### AnswerInquiry
Tjänstekontraktet AnswerInquiry låter tjänstekonsumenten (system hos tolkförmedling) besvara en förfrågan om tolkuppdrag.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| InquiryResponse | InquryResponse / (se 6.6.12) | Svar på förfrågan. | 1 |
| Svar |  |  |  |
| Result | ResultType / (se 6.6.19) | Information om anropets resultat. | 1 |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt.

###### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.

#### Annan information om kontraktet
Ingen.

### ListBookings
Tjänstekontraktet ListBookings låter tjänstekonsumenten (system hos tolkförmedling) hämta beställningar (från förfrågning som tidigare besvarats) från Tolkportalen.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| LastSequenceNumber | MessageSequenceNumber / (se 6.6.13) | Referens till det senaste meddelandet som togs emot (för att bara hämta beställningar som inte hämtats tidigare). | 1 |
| Svar |  |  |  |
| Bookings | Booking / (se 6.6.2) | Beställningar. | 0..* |
| LastSequenceNumber | MessageSequenceNumber / (se 6.6.13) | Nummer på meddelandet. | 1 |
| HasMoreEntries | boolean |  | 1 |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt.

###### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.

#### Annan information om kontraktet
Ingen.

### ListInquiries
Tjänstekontraktet ListInquiries låter tjänstekonsumenten (system hos tolkförmedling) hämta förfrågningar från Tolkportalen.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| LastSequenceNumber | MessageSequenceNumber / (se 6.6.13) | Referens till det senaste meddelandet som togs emot (för att bara hämta förfrågningar som inte hämtats tidigare). | 1 |
| Svar |  |  |  |
| Inquiries | Inquiry / (se 6.6.11) | Förfrågningar. | 0..* |
| LastSequenceNumber | MessageSequenceNumber / (se 6.6.13) | Nummer på meddelandet. | 1 |
| HasMoreEntries | boolean |  | 1 |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt.

###### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.

#### Annan information om kontraktet
Ingen.

### UpdateBooking
Tjänstekontraktet UpdateBooking låter tjänstekonsumenten (system hos tolkförmedling) uppdatera beställningsinformation hos Tolkportalen.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| BookingUpdate | BookingUpdate / (se 6.6.9) | Uppdatering av beställning. | 1 |
| Svar |  |  |  |
| Result | ResultType / (se 6.6.19) | Information om anropets resultat. | 1 |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt.

###### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.

#### Annan information om kontraktet
Ingen.

### CreateBooking
Tjänstekontraktet CreateBooking låter tjänstekonsumenten (system hos tolkförmedling) skapa en beställning av tolk hos Tolkportalen.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Övriga regler

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| BookingCreate | BookingCreate / (se 6.6.4) | Beställning som ska skapas. | 1 |
| Svar |  |  |  |
| ReferenceNumberMap | ReferenceNumberMapping (se 6.6.15) | Tolkförmedlingens referensnummer och Tolkportalens beställningsnummer för registrerad beställning. | 1..* |
| Result | ResultType / (se 6.6.19) | Information om anropets resultat. | 1 |

#### Övriga regler

##### Icke funktionella krav
Inga specifika krav för detta tjänstekontrakt.

###### SLA-krav
Inga krav som avviker från de generella kraven som specificerats i kapitel 4.

#### Annan information om kontraktet
Ingen.

### Gemensamma klasser och datatyper

#### AuthorizationLevelWithRequirement

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| MinAuthorizationLevel | CVType | Tolkens kompetensnivå, enligt kodverk KV Kompetensnivå tolk, se [R4]. / code=aktuell kod / codeSystem=eec2f9b0-03d5-450d-9797-ac0c74f6cfac | 1 |
| RequiredLevel | RequirementLevelEnum | Kravnivå. / En av följande: / Desired=angiven kompetensnivå är lägsta accepterade men högre godtas också / Only=endast den angivna kompetensnivån godtas | 1 |

#### Booking

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Occasion | BookingOccasion / (se 6.6.7) | Beställning för ett visst tolkningstillfälle. | 1 |
| AnswerData | BookingAnswerData / (se 6.6.3) | Information från tolkförmedlingen om beställning. | 1 |
| Data | BookingData / (se 6.6.5) | Information om en beställning. | 1 |

#### BookingAnswerData

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| ReferenceNumber | string | Tolkförmedlingens referensnummer. | 0..1 |
| BookingInformationFromAssociation | BookingInformationFromAssociation / (se 6.6.6) | Information från tolkförmedlingen om tolkningen. | 1 |

#### BookingCreate

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| CreateBookingOccasion | BookingOccasionCreate / (se 6.6.8) | Skapa beställning för ett visst tolkningstillfälle. | 1..* |
| InterpretationLanguageId | string | Anger det språk som skall tolkas utifrån Hälso- och Sjukvårdsförvaltningens (HSF) språktabell. / Arbete pågår med att harmonisera språktabellen med ISO 639. När det är gjort kommer språk istället kommuniceras med hjälp av en kodad datatyp (CVType) som kan ange kod och aktuellt kodverk. | 1 |
| InterpretationType | CVType | Typ av tolkning, enligt kodverk KV Typ av tolkning, se [R4]. / code=aktuell kod / codeSystem=498c11f2-05c0-4d99-aef2-770a2b2a8260 | 1 |
| Patient | PatientInformation / (se 6.6.14) | Information om patienten. | 1 |
| ContactInformation | ContactInformation / (se 6.6.10) | Information om tolkstället och beställaren. | 1 |
| BookingInformationFromAssociation | BookingInformationFromAssociation / (se 6.6.6) | Information från tolkförmedlingen om tolkningen. | 1 |

#### BookingData

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| InterpretationLanguageId | string | Anger det språk som skall tolkas utifrån Hälso- och Sjukvårdsförvaltningens (HSF) språktabell. / Arbete pågår med att harmonisera språktabellen med ISO 639. När det är gjort kommer språk istället kommuniceras med hjälp av en kodad datatyp (CVType) som kan ange kod och aktuellt kodverk. | 1 |
| Patient | PatientInformation / (se 6.6.14) | Information om patienten. | 0..* |
| AuthorizationLevel | AuthorizationLevelWithRequirement / (se 6.6.1) | Krav på tolkens kompetensnivå. | 1 |
| AdditionalRequirements | string | Eventuella ytterligare krav från beställaren. | 0..* |
| InterpretationType | CVType | Typ av tolkning, enligt kodverk KV Typ av tolkning, se [R4]. / code=aktuell kod / codeSystem=498c11f2-05c0-4d99-aef2-770a2b2a8260 | 1 |
| ContactInformation | ContactInformation / (se 6.6.10) | Information om tolkstället och beställaren. | 1 |
| TravelTimeCostAllowed | boolean | Anger om möjlighet till restidsersättning finns inom ramen för en förfrågan om tolkuppdrag. | 1 |
| InterpreterGender | RequiredGenderWithRequirement / (se 6.6.16) | Krav på tolkens kön. | 0..1 |
| InterpreterName | RequiredInterpreterNameWithRequirement / (se 6.6.17) | Krav på en specifik namngiven tolk. | 0..1 |
| AdditionalPatientRequest | string | Eventuella önskemål som patienten har. | 0..1 |

#### BookingInformationFromAssociation

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| AuthorizationLevel | CVType | Tolkens kompetensnivå, enligt kodverk KV Kompetensnivå tolk, se [R4]. / code=aktuell kod / codeSystem=eec2f9b0-03d5-450d-9797-ac0c74f6cfac | 1 |
| RequestTravelTimeCost | boolean | Anger om tolkförmedlingen efterfrågar restidsersättning för tolkningsuppdraget. | 1 |
| InterpreterName | string | Tolkens namn. | 1 |
| PhoneNumberForInterpretation | string | Telefonnummer som distanstolkning ska utföras på. | 0..1 |

#### BookingOccasion

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| InvoiceEventId | string | Faktureringsnummer. | 1 |
| BookingNumber | int | Tolkportalens beställningsnummer. | 1 |
| ReferenceNumber | string | Tolkförmedlingens referensnummer. | 0..1 |
| State | BookingStateEnum | Status för beställning. / En av följande: / New / AssociationBooked / Canceled / Acknowledged / AutomaticallyAckowledged / AllDeclined / AcceptedByAtLeastOne / LateCanceled / Invalid | 1 |
| StartTime | dateTime | Besökets starttid. Se 5.2.1. | 1 |
| EndTime | dateTime | Besökets sluttid. Se 5.2.1. | 1 |

#### BookingOccasionCreate

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| ReferenceNumber | string | Tolkförmedlingens referensnummer. | 1 |
| StartTime | dateTime | Besökets starttid. Se 5.2.1. | 1 |
| EndTime | dateTime | Besökets sluttid. Se 5.2.1. | 1 |

#### BookingUpdate

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| BookingNumber | int | Tolkportalens beställningsnummer. | 1 |
| ReferenceNumber | string | Tolkförmedlingens referensnummer. | 0..1 |
| BookingInformationFromAssociation | BookingInformationFromAssociation / (se 6.6.6) | Information från tolkförmedlingen om tolkningen. | 1 |

#### ContactInformation

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Address | string | Adress till tolkställe. | 1 |
| ChangedAddress | boolean | Anger om den angivna adressen till tolkstället skiljer sig mot den adress som är angiven i elektroniska katalogen (EK). | 1 |
| DoorCode | string | Eventuell portkod som krävs för att besöka tolkstället. | 0..1 |
| LocationDetails | string | Platsförtydligande/vägbeskrivning till tolkställe. | 0..1 |
| LocationName | string | Namn på tolkstället. | 1 |
| ContactPerson | string | Kontaktpersonens namn. | 1 |
| ContactPhone | string | Telefonnummer till kontaktperson. | 1 |
| HealthCareProfessionalName | string | Namn på hälso- och sjukvårdspersonal som ska träffa patienten. | 1 |
| OrderingPersonName | string | Namn på beställare. | 1 |
| OrderingPersonId | IIType | Beställares HSA-id. / root=1.2.752.129.2.1.4.1 / extension=aktuellt HSA-id | 1 |
| OrderingUnitName | string | Beställande enhetens namn. | 1 |
| OrderingUnitHsaId | IIType | Beställande enhetens HSA-id. / root=1.2.752.129.2.1.4.1 / extension=aktuellt HSA-id | 1 |
| OrderingHealthcareUnitName | string | Namn på enhet som organisatoriskt ligger över den beställande enheten. | 1 |
| OrderingHealthcareUnitHsaId | IIType | HSA-id på enhet som organisatoriskt ligger över den beställande enheten. / root=1.2.752.129.2.1.4.1 / extension=aktuellt HSA-id | 1 |

#### Inquiry

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| InquiryId | int | Id för förfrågan. | 1 |
| Round | int | Anger vilken utskicksrunda som föreligger för förfrågan: 1 = första rundan, 2 = första påminnelserunda, o.s.v. | 1 |
| Occasions | BookingOccasion / (se 6.6.7) | Beställning för ett visst besök. | 1..* |
| Data | BookingData / (se 6.6.5) | Information om en beställning. | 1 |
| InquiryState | InquiryStateEnum | Status för förfrågan. / En av följande: / NotAnswered / Booked / Rejected / Timeout / CaceledByInitiator / Accepted / LostBeforeAnswer / LostAccepted / Invalid | 1 |
| LastResponseTime | dateTime | Sista möjliga svarstid. Anges i lokal tid. | 1 |
| FirstInRank | boolean | Anger om aktuell tolkförmedling för tillfället ligger först i rangordningen för att få besvara aktuell förfrågan. | 1 |
| SameInterpreterRequiredForAllOccasions | boolean | Anger om samma tolk måste levereras till samtliga tillfällen i serie som förfrågan avser. | 1 |
| InterpreterName | string | Namn på tolk. | 0..1 |
| ExplainingText | string | Ytterligare information om förfrågan. | 0..1 |

#### InquiryResponse

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| InquiryId | int | Id för förfrågan. | 1 |
| Round | int | Anger vilken utskicksrunda som föreligger för förfrågan: 1 = första rundan, 2 = första påminnelserunda, o.s.v. | 1 |
| ReferenceNumberMap | ReferenceNumberMapping / (se 6.6.15) | Mappning mellan Tolkportalens beställningsnummer och tolkförmedlingens referensnummer. | 0..* |
| Answer | InquiryResponseAnswerEnum | Svar på förfrågan. / En av följande: / Accept / AcceptWithException / Reject | 1 |
| BookingInformationFromAssociation | BookingInformationFromAssociation / (se 6.6.6) | Information från tolkförmedlingen om tolkningen. | 1 |
| ExplainingText | string | Ytterligare information om svaret, t.ex. undantag och anledning till avslag. | 0..1 |

#### MessageSequenceNumber

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| MessageSequenceNumber | unsignedLong | Nummer på meddelande. | 1 |

#### PatientInformation

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Age | int | Patientens ålder  i år. | 1 |
| Gender | CVType | Patientens kön, enligt KV Kön, se [R4]. / code=aktuell kod / codeSystem= 1.2.752.129.2.2.1.1 / Giltiga värden (urval): / 1=Man / 2=Kvinna | 1 |

#### ReferenceNumberMapping

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| BookingNumber | int | Tolkportalens beställningsnummer. | 1 |
| ReferenceNumber | string | Tolkförmedlingens referensnummer. | 1 |

#### RequiredGenderWithRequirement

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| RequiredGender | CVType | Tolkens kön, enligt KV Kön, se [R4]. / code=aktuell kod / codeSystem= 1.2.752.129.2.2.1.1 / Giltiga värden (urval): / 1=Man / 2=Kvinna | 0..1 |
| RequiredLevel | RequirementLevelEnum | Kravnivå. / En av följande: / Desired=angivet kön önskas / Only=endast det angivna könet godtas | 1 |

#### RequiredInterpreterNameWithRequirement

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| RequiredInterpreterName | string | Tolkens namn. | 0..1 |
| RequiredLevel | RequirementLevelEnum | Kravnivå. / En av följande: / Desired=den namngivna tolken önskas / Only=endast den namngivna tolken godtas | 1 |
| IsPreBooked | boolean | Anger om tolken ifråga redan är vidtalad om tolkningsuppdraget. | 1 |

#### ResultType

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeEnum |  | 1 |
| errorCode | ErrorCodeEnum |  | 0..1 |
| subcode | String |  | 0..1 |
| logId | String |  | 1 |
| message | String |  | 0..1 |
