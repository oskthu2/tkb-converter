## 7 Tjänstekontrakt

Domänen crm:carelisting innehåller fem tjänstekontrakt för den nationella listningstjänsten.

> **OBS:** Källdokumentet (RIV_spec_Nationell_Listningsstjänsten.docx) är en informationsspecifikation och saknar standard TKB-avsnitt 7. Kontraktsspecifikationerna nedan är baserade på XSD-filerna och informationsmodellen i källdokumentet.

---

### GetListing

**Visa tjänsteval — Hämtar information om en persons aktiva listning**

**Version:** 1.0
**Namespace:** `urn:riv:crm:carelisting:GetListingResponder:1`

#### Beskrivning

Konsumenten ställer en fråga till listningssystemet med ett person-id som inparameter. Listningssystemet returnerar information om det tjänsteval som personen med det angivna person-id:t har gjort. Enheter och vård- och omsorgspersonal identifieras med HSA-id.

#### Request — GetListing

| Fält | Typ | Kard. | Beskrivning |
|------|-----|-------|-------------|
| personId | string (SubjectOfCareIdType) | 1..1 | Personnummer för vård- och omsorgstagaren. Kan anges med eller utan sekelsiffror och med eller utan bindestreck. Pattern: `(([1-9]\d{7})|(\d{6}))[\-]?\d{4}` |

#### Response — GetListing

| Fält | Typ | Kard. | Beskrivning |
|------|-----|-------|-------------|
| subjectOfCare | SubjectOfCare | 1..1 | En persons listningar. |
| subjectOfCare.personId | string | 1..1 | Identitetsbeteckning för vård- och omsorgstagaren. |
| subjectOfCare.listing | Listing | 0..* | En listning för personen. PostCondition: tillgängliga listningstyper för listningens vårdenhet är utelämnad. |
| subjectOfCare.listing.validFromDate | dateTime | 0..1 | Datum för när listningen började gälla. |
| subjectOfCare.listing.validToDate | dateTime | 0..1 | Datum när listningen slutade gälla. Om datum saknas är det implicit obestämt in i framtiden. |
| subjectOfCare.listing.listingType | string (ListingType) | 1..1 | Typ av listning, t.ex. BVC, HLM, FL. |
| subjectOfCare.listing.healthcare_facility | Facility | 1..1 | Vårdinrättning/vårdenhet som ansvarar för personen. |
| subjectOfCare.listing.healthcare_facility.facilityId | string (HsaIdType) | 1..1 | HSA-ID för vårdenheten. |
| subjectOfCare.listing.healthcare_facility.facilityName | string | 1..1 | Namn på vårdenheten. |
| subjectOfCare.listing.healthcare_facility.hasQueue | boolean | 0..1 | Indikerar om vårdenheten har kö vid listningar. |
| subjectOfCare.listing.healthcare_facility.supportedListingTypes | string | 0..* | Lista med listningstyper som vårdenheten stödjer. Utelämnas i GetListing-svaret (per postcondition). |
| subjectOfCare.listing.resource | Resource | 0..1 | Specifik resurs som utför listningstjänsten, t.ex. en läkare eller husläkarteam. |
| subjectOfCare.listing.resource.resourceId | string (HsaIdType) | 1..1 | HSA-ID för resursen. |
| subjectOfCare.listing.resource.resourceName | string | 1..1 | Namn på vårdgivaren. |

#### Felkoder

| Undantag | Beskrivning |
|----------|-------------|
| PersonNotFoundException | Personen kunde inte hittas. |
| TechnicalException | Tekniskt fel i tjänsten. |

#### 7.1 Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetListingInteraction_1.0_rivtabp20.wsdl](files/wsdl/GetListingInteraction_1.0_rivtabp20.wsdl) | WSDL-kontrakt |
| [crm_carelisting_1_0.xsd](files/schema/crm_carelisting_1_0.xsd) | Domänschema (delat) |
| [GetListing_1_0.xsd](files/schema/GetListing_1_0.xsd) | Tjänstespecifikt schema |

#### 7.1 FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getlisting](StructureDefinition-getlisting.html)
* **Logisk modell (request):** [StructureDefinition/getlisting-request](StructureDefinition-getlisting-request.html)

---

### GetAvailableFacilities

**Visa möjliga tjänsteutövare — Hämtar lista med tillgängliga vårdenheter**

**Version:** 1.0
**Namespace:** `urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1`

#### Beskrivning

Konsumenten frågar om vilka HSA-ID:n som finns tillgängliga för listning i en region. Listningssystemet returnerar en sammanställning över de HSA-ID:n (och namn) som är valbara. I anropet till tjänsten anges regionkod. Man kan även välja att lista enheter utifrån en viss listningstyp eller lista specifika enheter utifrån en lista av HSA-ID:n.

#### Request — GetAvailableFacilities

| Fält | Typ | Kard. | Beskrivning |
|------|-----|-------|-------------|
| countyCode | string (CountyCode) | 1..1 | Länskod (SCB-kod) för regionen vars tillgängliga vårdenheter söks. |
| healthcare_facilities | string (HsaIdType) | 0..* | Lista med HSA-ID:n för specifika vårdenheter att hämta information om. Tom lista = hämta alla. |
| listingType | string (ListingType) | 0..* | Anger vilka typer av vårdenheter som skall sökas fram. Om inget anges hämtas alla. |

#### Response — GetAvailableFacilities

| Fält | Typ | Kard. | Beskrivning |
|------|-----|-------|-------------|
| healthcare_facilities | Facility | 1..* | Lista med tillgängliga vårdenheter. |
| healthcare_facilities.facilityId | string (HsaIdType) | 1..1 | HSA-ID för vårdenheten. |
| healthcare_facilities.facilityName | string | 1..1 | Namn på vårdenheten. |
| healthcare_facilities.hasQueue | boolean | 0..1 | Indikerar om vårdenheten har kö vid listningar. |
| healthcare_facilities.supportedListingTypes | string (ListingType) | 0..* | Lista med listningstyper som vårdenheten stödjer. |

#### Felkoder

| Undantag | Beskrivning |
|----------|-------------|
| TechnicalException | Tekniskt fel i tjänsten. |

#### 7.2 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetAvailableFacilitiesInteraction_1.0_rivtabp20.wsdl](files/wsdl/GetAvailableFacilitiesInteraction_1.0_rivtabp20.wsdl) | WSDL-kontrakt |
| [crm_carelisting_1_0.xsd](files/schema/crm_carelisting_1_0.xsd) | Domänschema (delat) |
| [GetAvailableFacilities_1_0.xsd](files/schema/GetAvailableFacilities_1_0.xsd) | Tjänstespecifikt schema |

#### 7.2 FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/getavailablefacilities](StructureDefinition-getavailablefacilities.html)
* **Logisk modell (request):** [StructureDefinition/getavailablefacilities-request](StructureDefinition-getavailablefacilities-request.html)

---

### CreateListing

**Göra tjänsteval — Skapar en ny listning**

**Version:** 1.0
**Namespace:** `urn:riv:crm:carelisting:CreateListingResponder:1`

#### Beskrivning

En producent (i dagsläget MVK) skickar in ett meddelande som innehåller ett person-id samt ett HSA-id på den valda tjänsteutövaren gällande en viss listningstyp. Det lokala listningssystemet använder informationen för att lagra listningsinformation för en vård- och omsorgstagare.

#### Request — CreateListing

| Fält | Typ | Kard. | Beskrivning |
|------|-----|-------|-------------|
| personId | string (SubjectOfCareIdType) | 1..1 | Personnummer för den person som önskar göra ett tjänsteval. |
| listingType | string (ListingType) | 1..1 | Typ av listning som önskas, t.ex. BVC. |
| healthcare_facility | string (HsaIdType) | 1..1 | HSA-ID för den vårdenhet som personen önskar lista sig på. |
| healthcare_professional | string (HsaIdType) | 0..1 | HSA-ID för specifik resurs (läkare/husläkarteam) att lista sig på. |
| addToQueue | boolean | 1..1 | Anger om personen vill ställa sig i kö om det är kö på vårdenheten/resursen. |

#### Response — CreateListing

| Fält | Typ | Kard. | Beskrivning |
|------|-----|-------|-------------|
| success | boolean | 1..1 | True om listningen genomfördes framgångsrikt, annars false. False indikerar att användaren behöver prova ett annat alternativ. |
| comment | string | 0..1 | Information som kompletterar angiven status. |
| systemCode | string | 0..1 | Kod från underliggande listningssystem för felsökningsändamål. Konsumenten får inte binda logik till dessa koder. |

#### Felkoder

| Undantag | Beskrivning |
|----------|-------------|
| InvalidFacilityException | Angiven vårdenhet är ogiltig. |
| PersonNotFoundException | Personen kunde inte hittas. |
| TechnicalException | Tekniskt fel i tjänsten. |

#### 7.3 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [CreateListingInteraction_1.0_rivtabp20.wsdl](files/wsdl/CreateListingInteraction_1.0_rivtabp20.wsdl) | WSDL-kontrakt |
| [crm_carelisting_1_0.xsd](files/schema/crm_carelisting_1_0.xsd) | Domänschema (delat) |
| [CreateListing_1_0.xsd](files/schema/CreateListing_1_0.xsd) | Tjänstespecifikt schema |

#### 7.3 FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/createlisting](StructureDefinition-createlisting.html)
* **Logisk modell (request):** [StructureDefinition/createlisting-request](StructureDefinition-createlisting-request.html)

---

### GetListingTypes

**Visa listningstyp — Hämtar möjliga listningstyper för en person**

**Version:** 1.0
**Namespace:** `urn:riv:crm:carelisting:GetListingTypesResponder:1`

#### Beskrivning

Konsumenten ställer en fråga till listningssystemet med ett person-id som inparameter. Tjänsten returnerar möjliga typer av listningar som personen kan bruka vid listning.

#### Request — GetListingTypes

| Fält | Typ | Kard. | Beskrivning |
|------|-----|-------|-------------|
| personId | string (SubjectOfCareIdType) | 1..1 | PersonID för den person vars möjliga listningstyper önskas. |

#### Response — GetListingTypes

| Fält | Typ | Kard. | Beskrivning |
|------|-----|-------|-------------|
| listingType | string (ListingType) | 0..* | Lista med koder som avser listningstyper, t.ex. BVC. |

#### Felkoder

| Undantag | Beskrivning |
|----------|-------------|
| PersonNotFoundException | Personen kunde inte hittas. |
| TechnicalException | Tekniskt fel i tjänsten. |

#### 7.4 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetListingTypesInteraction_1.0_rivtabp20.wsdl](files/wsdl/GetListingTypesInteraction_1.0_rivtabp20.wsdl) | WSDL-kontrakt |
| [crm_carelisting_1_0.xsd](files/schema/crm_carelisting_1_0.xsd) | Domänschema (delat) |
| [GetListingTypes_1_0.xsd](files/schema/GetListingTypes_1_0.xsd) | Tjänstespecifikt schema |

#### 7.4 FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/getlistingtypes](StructureDefinition-getlistingtypes.html)
* **Logisk modell (request):** [StructureDefinition/getlistingtypes-request](StructureDefinition-getlistingtypes-request.html)

---

### GetPersonQueueStatus

**Visa köstatus — Hämtar köstatus för en person**

**Version:** 1.0
**Namespace:** `urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1`

#### Beskrivning

Konsumenten ställer en fråga till listningssystemet med ett person-id som inparameter. Tjänsten returnerar köstatus (i kö, ej i kö) gällande personen och den enhet där eventuell köstatus föreligger.

#### Request — GetPersonQueueStatus

| Fält | Typ | Kard. | Beskrivning |
|------|-----|-------|-------------|
| personId | string (SubjectOfCareIdType) | 1..1 | PersonID för den person vars köstatus önskas. |

#### Response — GetPersonQueueStatus

| Fält | Typ | Kard. | Beskrivning |
|------|-----|-------|-------------|
| queueStatus | code (PersonQueueStatus) | 1..1 | Köstatus: `inQueue` (i kö) eller `notInQueue` (inte i kö). |
| healthcare_facility | Facility | 0..1 | Vårdenhet vars köstatus gäller. |
| healthcare_facility.facilityId | string (HsaIdType) | 1..1 | HSA-ID för vårdenheten. |
| healthcare_facility.facilityName | string | 1..1 | Namn på vårdenheten. |
| healthcare_facility.hasQueue | boolean | 0..1 | Indikerar om vårdenheten har kö. |
| healthcare_facility.supportedListingTypes | string (ListingType) | 0..* | Lista med listningstyper som vårdenheten stödjer. |

#### Felkoder

| Undantag | Beskrivning |
|----------|-------------|
| PersonNotFoundException | Personen kunde inte hittas. |
| TechnicalException | Tekniskt fel i tjänsten. |

#### 7.5 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetPersonQueueStatusInteraction_1.0_rivtabp20.wsdl](files/wsdl/GetPersonQueueStatusInteraction_1.0_rivtabp20.wsdl) | WSDL-kontrakt |
| [crm_carelisting_1_0.xsd](files/schema/crm_carelisting_1_0.xsd) | Domänschema (delat) |
| [GetPersonQueueStatus_1_0.xsd](files/schema/GetPersonQueueStatus_1_0.xsd) | Tjänstespecifikt schema |

#### 7.5 FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/getpersonqueuestatus](StructureDefinition-getpersonqueuestatus.html)
* **Logisk modell (request):** [StructureDefinition/getpersonqueuestatus-request](StructureDefinition-getpersonqueuestatus-request.html)
* **Kodsystem:** [CodeSystem/personqueuestatus-cs](CodeSystem-personqueuestatus-cs.html)
* **ValueSet:** [ValueSet/personqueuestatus-vs](ValueSet-personqueuestatus-vs.html)
