## Tjänstedomänens meddelandemodeller
Här beskrivs de modeller som beskriver informationsinnehållet i tjänstekontrakten inom tjänstedomänen. Varje tjänstekontrakt ska ha en (1..1) egen meddelandemodell som uttömmande beskriver informationen som tjänstekontraktet bär. För varje meddelandemodell beskrivs hur mappning ser ut mot tjänstekontraktets schema (XSD).

![ProcessRegistrationNotification](images/img_011.jpeg)
ProcessRegistrationNotification
Modellen är en UML-representation av XSD-schemat. Någon mappning mellan XSD och MIM är därmed inte inkluderad.
Nedan beskrivs mappning mellan XSD och informationsmodellen i informationsspecifikationen.

| Klass.attribut | Mappning mot informationsmodell |
| :--- | :--- |
| ProcessRegistrationNotificationRequest |  |
| LogicalAddress | Saknas |
| parameters | Saknas |
| ProcessRegistrationNotificationType |  |
| type | Notifiering till kvalitetsregister.typ |
| patientId | Patient.patient-id |
| healthcareProviderId | Vårdgivare.id |
| registerUnitId | Notifiering till kvalitetsregister.registerenhet-id |
| reference | ReferenceType |
| NkrrParameters | NKRR-anropsattribut |
| NkrrParametersType |  |
| formId | NKRR-anropsattribut.formulär-id |
| careEncounterDate | NKRR-anropsattribut.vårdhändelsdatum |
| careUnitId | NKRR-anropsattribut.vårdenhet-id |
| ReferenceType |  |
| key | Referenspost.nyckel |
| value | Referenspost.värde |
| ProcessRegistrationNotificationResponse |  |
| parameters | Saknas |
| ProcessRegistrationNotificationResponseType |  |
| referenceId | Svar på notifiering.referens-id |
| result | Saknas |
| ResultType |  |
| resultCode | Saknas |
| resultText | Saknas |

### GetFormData

![img_009.jpeg](images/img_009.jpeg)
Modellen är en UML-representation av XSD-schemat. Någon mappning mellan XSD och MIM är därmed inte inkluderad.
Nedan beskrivs mappning mellan XSD och informationsmodellen i informationsspecifikationen.

| Klass.attribut | Mappning mot informationsmodell |
| :--- | :--- |
| GetFormDataRequest |  |
| LogicalAddress | Saknas |
| parameters | Saknas |
| GetFormDataType |  |
| formId | NKRR-anropsattribut.formulär-id |
| subjectOfCareId | Person.person-id |
| careEncounterStartDate | NKRR-anropsattribut.filtreringsdatum |
| employeeId | Saknas |
| careUnitHSAId | NKRR-anropsattribut.vårdenhet-id |
| employeePersonId | Saknas |
| careEncounterEndDate | NKRR-anropsattribut.filtreringsdatum |
| GetFormDataResponse |  |
| parameters | Saknas |
| GetFormDataResponseType |  |
| formElement | Formulärdata |
| resultCode | Saknas |
| resultText | Saknas |
| logId | Saknas |
| FormElementType |  |
| formId | Formulärdata.id |
| query | Fråga.id |
| answer | Svar |
| sourceData | Underlag |
| AnswerType |  |
| value | Svar.värde |
| type | Svar.typ |
| SourceDataType |  |
| name | Underlagskälla.källa |
| entry | Underlagspost |
| SourceDataEntryType |  |
| name | Underlagspost.nyckel |
| value | Underlagspost.värde |

### Formatregler

#### Format för datum och tidpunkter
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar ISO 8601-kompatibla formatbeskrivningen ”YYYYMMDD” (se referens [R3]).
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvarar den ISO 8601-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss” (se referens [R3]).

