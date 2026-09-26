## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som visar vilken information som förmedlas i respektive tjänstekontrakt. För varje meddelandemodell beskrivs hur mappning ser ut mot schema (XSD) för tjänstekontrakt.
Blå klasser kommer från informationsmodellen [R3], och för dessa finns mappning mot referensinformationsmodell i informationsspecifikationen [R3]. Rosa klasser är endast platshållare eller innehåller teknisk information som inte är en del av informationsmodellen.
Begäran visas nedan med rosa bakgrund och svar med vit.

### V-MIM

#### AnswerInquiry

##### Begäran

![img_011.png](img_011.png)

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

![img_007.png](img_007.png)

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

![img_004.png](img_004.png)

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

![img_003.png](img_003.png)

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

![img_001.png](img_001.png)

| V-MIM / Klass / Attribut | Mappning mot XSD-filer / Klass.attribut |
| :--- | :--- |
| ListBookings | - |
| LastSequenceNumber | ListBookings.LastSequenceNumber |

##### Svar

![img_010.png](img_010.png)

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

![img_005.png](img_005.png)

| V-MIM / Klass / Attribut | Mappning mot XSD-filer / Klass.attribut |
| :--- | :--- |
| ListInquiries | - |
| LastSequenceNumber | ListInqueries.LastSequenceNumber |

##### Svar

![img_002.png](img_002.png)

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

![img_012.png](img_012.png)

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

![img_008.png](img_008.png)

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

