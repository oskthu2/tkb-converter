## Tjänstekontrakt

> I källdokumentet är detta kapitel 6. Hänvisningar av typen "se 6.6.N" avser avsnittet [Gemensamma klasser och datatyper](#gemensamma-klasser-och-datatyper) nedan.


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

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [AnswerInquiryInteraction_1.0_RIVTABP21.wsdl](AnswerInquiryInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [AnswerInquiryResponder_1.0.xsd](AnswerInquiryResponder_1.0.xsd) | Tjänstespecifikt schema |
| [supportprocess_personalresources_interpretation_1.0.xsd](supportprocess_personalresources_interpretation_1.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Registry-schema (delat) |

#### FHIR-artefakter

* **Logisk modell (begäran):** [StructureDefinition/answerinquiry](StructureDefinition-answerinquiry.html)
* **Logisk modell (svar):** [StructureDefinition/interpretation-result](StructureDefinition-interpretation-result.html)

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

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ListBookingsInteraction_1.0_RIVTABP21.wsdl](ListBookingsInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ListBookingsResponder_1.0.xsd](ListBookingsResponder_1.0.xsd) | Tjänstespecifikt schema |
| [supportprocess_personalresources_interpretation_1.0.xsd](supportprocess_personalresources_interpretation_1.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Registry-schema (delat) |

#### FHIR-artefakter

* **Logisk modell (svar):** [StructureDefinition/listbookings](StructureDefinition-listbookings.html)
* **Logisk modell (begäran):** [StructureDefinition/listbookings-request](StructureDefinition-listbookings-request.html)

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

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ListInquiriesInteraction_1.0_RIVTABP21.wsdl](ListInquiriesInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ListInquiriesResponder_1.0.xsd](ListInquiriesResponder_1.0.xsd) | Tjänstespecifikt schema |
| [supportprocess_personalresources_interpretation_1.0.xsd](supportprocess_personalresources_interpretation_1.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Registry-schema (delat) |

#### FHIR-artefakter

* **Logisk modell (svar):** [StructureDefinition/listinquiries](StructureDefinition-listinquiries.html)
* **Logisk modell (begäran):** [StructureDefinition/listinquiries-request](StructureDefinition-listinquiries-request.html)

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

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [UpdateBookingInteraction_1.0_RIVTABP21.wsdl](UpdateBookingInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [UpdateBookingResponder_1.0.xsd](UpdateBookingResponder_1.0.xsd) | Tjänstespecifikt schema |
| [supportprocess_personalresources_interpretation_1.0.xsd](supportprocess_personalresources_interpretation_1.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Registry-schema (delat) |

#### FHIR-artefakter

* **Logisk modell (begäran):** [StructureDefinition/updatebooking](StructureDefinition-updatebooking.html)
* **Logisk modell (svar):** [StructureDefinition/interpretation-result](StructureDefinition-interpretation-result.html)

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

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [CreateBookingInteraction_1.0_RIVTABP21.wsdl](CreateBookingInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [CreateBookingResponder_1.0.xsd](CreateBookingResponder_1.0.xsd) | Tjänstespecifikt schema |
| [supportprocess_personalresources_interpretation_1.0.xsd](supportprocess_personalresources_interpretation_1.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Registry-schema (delat) |

#### FHIR-artefakter

* **Logisk modell (begäran):** [StructureDefinition/createbooking](StructureDefinition-createbooking.html)
* **Logisk modell (svar):** [StructureDefinition/createbooking-response](StructureDefinition-createbooking-response.html)
* **Resultat:** [StructureDefinition/interpretation-result](StructureDefinition-interpretation-result.html)

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

### Scheman utan beskrivning i TKB:n

Releasepaketet innehåller två interaktioner som TKB:n inte beskriver: ListLanguages och GetUnitInformation. Deras scheman refererar till typerna `Language`, `UnitInformation` och `HSAIdType`, som inte finns i domänschemat, så de går inte att validera och har ingen logisk modell i denna IG.

| Fil | Typ |
|-----|-----|
| [ListLanguagesInteraction_1.0_RIVTABP21.wsdl](ListLanguagesInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ListLanguagesResponder_1.0.xsd](ListLanguagesResponder_1.0.xsd) | Tjänstespecifikt schema |
| [GetUnitInformationInteraction_1.0_RIVTABP21.wsdl](GetUnitInformationInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetUnitInformationResponder_1.0.xsd](GetUnitInformationResponder_1.0.xsd) | Tjänstespecifikt schema |

### Gemensamma dokument för domänen

| Fil | Typ |
|-----|-----|
| [TKB_supportprocess_personalresources_interpretation.docx](TKB_supportprocess_personalresources_interpretation.docx) | Tjänstekontraktsbeskrivning (källdokument) |
| [AB_supportprocess_personalresources_interpretation.docx](AB_supportprocess_personalresources_interpretation.docx) | Arkitekturella beslut [R1] |
| [IS_supportprocess_personalresources_interpretation.docx](IS_supportprocess_personalresources_interpretation.docx) | Informationsspecifikation [R3] |
