## 7 Tjänstekontrakt

Domänen ehr:patientrelationship innehåller sju tjänstekontrakt fördelade på tre underdomäner:

| Kontrakt | Underdomän | Beskrivning |
| :--- | :--- | :--- |
| [GetPatientRelationsForPatient](#getpatientrelationsforpatient) | querying | Läs patientrelationer för patient inom vårdgivare |
| [GetPatientRelationsForCareProvider](#getpatientrelationsforcareprovider) | querying | Läs patientrelationer inom vårdgivare |
| [GetExtendedPatientRelationsForPatient](#getextendedpatientrelationsforpatient) | administration | Läs patientrelationer med utökad information |
| [CheckPatientRelation](#checkpatientrelation) | accesscontrol | Kontrollera om patientrelation finns |
| [RegisterExtendedPatientRelation](#registerextendedpatientrelation) | administration | Registrera patientrelation med utökad information |
| [CancelExtendedPatientRelation](#cancelextendedpatientrelation) | administration | Återkalla patientrelation med utökad information |
| [DeleteExtendedPatientRelation](#deleteextendedpatientrelation) | administration | Makulera patientrelation med utökad information |

---

### GetPatientRelationsForPatient

Tjänst som läser giltiga patientrelationer för en viss patient och en viss vårdgivare med grundinformation.
Med giltiga patientrelationer avses de patientrelationer som används som underlag vid en kontroll gällande åtkomst (CheckPatientRelation).
Ogiltiga patientrelationer (giltigt t o m har passerats, makulerade eller återkallade) returneras ej.
Tjänsten kan användas i ett integrationsmönster där vårdsystemet med visst intervall inhämtar alla patientrelationer det behöver utifrån de vårdgivare som systemet hanterar information från, för att sedan vid behov utföra intern kontroll mot underlaget för patientrelationer.

#### Frivillighet
Obligatorisk för tjänsteproducent.
Om tjänsten förväntas ingå i den nationella arkitekturen för hantering av patientrelationer och därmed vara nåbar för e-tjänster på nationell nivå, såsom t ex Nationell patientöversikt, krävs det att tjänsten registreras i den nationella tjänsteplattformen (NTP).

#### Version
1.0

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade patientrelationsuppgifterna i patientrelationstjänsten returneras. |  |

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | patientrelationship:HsaId | HSA-id på den vårdgivare vars patientrelationer skall hämtas. | 1..1 |
| patientId | patientrelationship:PersonIdValue | Patientens personnummer alternativt samordningsnummer vars patientrelationer skall hämtas. | 1..1 |
| Svar |  |  |  |
| getPatientRelationsForPatient | patientrelationship:GetPatientRelationsResult | Lista med giltiga patientrelationer för patient. | 1..1 |

#### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som patientrelationsinformationen gäller för.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

#### Tjänsteinteraktion
GetPatientRelationsForPatient
Namespace: `urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForPatientResponder:1`

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetPatientRelationsForPatientInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetPatientRelationsForPatientInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientrelationship_1.0.xsd](files/schema/ehr_patientrelationship_1.0.xsd) | Domänschema (delat) |
| [GetPatientRelationsForPatientResponder_1.0.xsd](files/schema/GetPatientRelationsForPatientResponder_1.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getpatientrelationsforpatient](StructureDefinition-getpatientrelationsforpatient.html)
* **Logisk modell (request):** [StructureDefinition/getpatientrelationsforpatient-request](StructureDefinition-getpatientrelationsforpatient-request.html)

---

### GetPatientRelationsForCareProvider

Tjänst som läser alla giltiga patientrelationer för en viss vårdgivare med grundinformation.
Det är valbart om makulerade och återkallade patientrelationer som ej är utgångna (giltigt t o m har passerats) skall returneras.
Utgångna patientrelationer (giltigt t o m har passerats) returneras ej oavsett makulering eller återkallning.
Det går även att ange en tidpunkt (CreatedOnOrAfter) från när man önskar inhämta uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Här avses tidpunkten då patientrealtioner lagrades i tjänsten.
Tjänsten tillåts att dela upp listan av patientrelationer i mindre delar för att minska på belastningen på systemet. Om detta sker kommer flaggan HasMore att vara satt om det finns fler patientrelationer att hämta. De resterande patientrelationerna skall i så fall hämtas med ytterligare anrop till tjänsten ända tills flaggan HasMore ej längre är satt (false).
Tjänsten returnerar en ny tidpunkt (CreatedOnOrAfter) som anger från och med nästa tidpunkt som patientrelationer ej har hämtats. Detta värde kan användas som inparameter i ytterligare anrop till tjänsten för att hämta nästa sekvens av patientrelationer.
Tjänsten kan användas i ett integrationsmönster där vårdsystemet med visst intervall inhämtar allt patientrelationsunderlag den behöver utifrån de vårdgivare som systemet hanterar information från, för att sedan vid behov utföra intern kontroll mot underlaget för patientrelationer.
Viktigt att kontrollera att alla patientrelationer är hämtade genom att kontrollera värdet på HasMore.

#### Frivillighet
Obligatorisk för tjänsteproducent.

#### Version
1.0

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade patientrelationsuppgifterna i patientrelationstjänsten returneras. |  |

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | patientrelationship:HsaId | HSA-id på den vårdgivare vars patientrelationer skall hämtas. | 1..1 |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla patientrelationer som skall hämtas. Om angivet så returneras endast patientrelationer skapade/förändrade  på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| getCancelledFlag | xs:boolean | Flagga som avgör om makulerade och återkallade patientrelationer som ej är utgångna (giltigt t o m har passerats) skall returneras. | 1..1 |
| Svar |  |  |  |
| getPatientRelationsForCareProvider | patientrelationship:GetAllPatientRelationsResult | Alla funna patientrelationer som är aktiva eller som är avregistrerade. | 1..1 |

#### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som patientrelationsinformationen gäller för.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

#### Tjänsteinteraktion
GetPatientRelationsForCareProvider
Namespace: `urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForCareProviderResponder:1`

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetPatientRelationsForCareProviderInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetPatientRelationsForCareProviderInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientrelationship_1.0.xsd](files/schema/ehr_patientrelationship_1.0.xsd) | Domänschema (delat) |
| [GetPatientRelationsForCareProviderResponder_1.0.xsd](files/schema/GetPatientRelationsForCareProviderResponder_1.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getpatientrelationsforcareprovider](StructureDefinition-getpatientrelationsforcareprovider.html)
* **Logisk modell (request):** [StructureDefinition/getpatientrelationsforcareprovider-request](StructureDefinition-getpatientrelationsforcareprovider-request.html)

---

### GetExtendedPatientRelationsForPatient

Tjänst som läser registrerade patientrelationer med all information för en viss patient och viss vårdgivare.
Det är valbart om ogiltiga (makulerade, återkallade och utgångna) patientrelationer skall returneras.
Tjänsten används för att söka fram och administrera patientens patientrelationer för en viss vårdgivare.

#### Frivillighet
Obligatorisk för tjänsteproducent.

#### Version
1.0

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade patientrelationsuppgifterna i patientrelationstjänsten returneras. |  |

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | patientrelationship:HsaId | HSA-id på den vårdgivare vars patientrelationer skall hämtas. | 1..1 |
| patientId | patientrelationship:PersonIdValue | Patientens personnummer alternativt samordningsnummer. | 1..1 |
| getCancelledFlag | xs:boolean | Flagga som avgör om ogiltiga patientrelationer skall returneras. | 1..1 |
| Svar |  |  |  |
| getExtendedPatientRelationsForPatient | patientrelationship:GetExtendedPatientRelationResult | Utökad information för patientrelation. | 1..1 |

#### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till patientrelationsinformationen genom att kontrollera att det efterfrågade informationsurvalet matchar den angivna logiska adressen.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

#### Tjänsteinteraktion
GetExtendedPatientRelationsForPatient
Namespace: `urn:riv:ehr:patientrelationship:administration:GetExtendedPatientRelationsForPatientResponder:1`

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetExtendedPatientRelationsForPatientInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetExtendedPatientRelationsForPatientInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientrelationship_1.0.xsd](files/schema/ehr_patientrelationship_1.0.xsd) | Domänschema (delat) |
| [GetExtendedPatientRelationsForPatientResponder_1.0.xsd](files/schema/GetExtendedPatientRelationsForPatientResponder_1.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getextendedpatientrelationsforpatient](StructureDefinition-getextendedpatientrelationsforpatient.html)
* **Logisk modell (request):** [StructureDefinition/getextendedpatientrelationsforpatient-request](StructureDefinition-getextendedpatientrelationsforpatient-request.html)

---

### CheckPatientRelation

Tjänst som kontrollerar om patientrelation mellan patienten och aktör föreligger.
Tjänsten utvärderar om patientrelation finns mellan patient och aktör (medarbetare).
Om en giltig patientrelation gällande åtkomst för angiven aktör hittas, kommer tjänsten att svara OK.
Med giltig patientrelation avses en patientrelation som fortfarande är giltigt (giltigt t o m har ej passerats), ej makulerat eller återkallat.

#### Frivillighet
Obligatorisk för tjänsteproducent.
Om tjänsten förväntas ingå i den nationella arkitekturen för hantering av patientrelationer och därmed vara nåbar för e-tjänster på nationell nivå, såsom t ex Nationell patientöversikt, krävs det att tjänsten registreras i den nationella tjänsteplattformen (NTP).

#### Version
1.0

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att utföra en kontroll om patientrelation föreligger på de senaste registrerade patientrelationsuppgifterna i patientrelationstjänsten. |  |

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| accessingActor | patientrelationship:AccessingActor | Representerar den aktör/person som önskar åtkomst till informationen. | 1..1 |
| patientId | patientrelationship:PersonIdValue | Patientens personnummer alternativt samordningsnummer vars information aktören önskar åtkomst till. | 1..1 |
| Svar |  |  |  |
| checkPatientRelation | patientrelationship:CheckResult | Status för om patientrelation gällande åtkomst för angiven aktör hittades. | 1..1 |

#### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till tjänsten. Om behörighet saknas, nekas anropet (med tillhörande felkod ACCESSDENIED).

#### Tjänsteinteraktion
CheckPatientRelation
Namespace: `urn:riv:ehr:patientrelationship:accesscontrol:CheckPatientRelationResponder:1`

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [CheckPatientRelationInteraction_1.0_RIVTABP21.wsdl](files/wsdl/CheckPatientRelationInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientrelationship_1.0.xsd](files/schema/ehr_patientrelationship_1.0.xsd) | Domänschema (delat) |
| [CheckPatientRelationResponder_1.0.xsd](files/schema/CheckPatientRelationResponder_1.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/checkpatientrelation](StructureDefinition-checkpatientrelation.html)
* **Logisk modell (request):** [StructureDefinition/checkpatientrelation-request](StructureDefinition-checkpatientrelation-request.html)

---

### RegisterExtendedPatientRelation

Tjänst som registrerar en patientrelation mellan en patient och en medarbetare.
Tjänsten kräver utökad information (metainformation) kring skapande av intyget.

#### Frivillighet
Obligatorisk för tjänsteproducent.
Om tjänsten förväntas ingå i den nationella arkitekturen för hantering av patientrelationer och därmed vara nåbar för e-tjänster på nationell nivå, såsom t ex Nationell patientöversikt, krävs det att tjänsten registreras i den nationella tjänsteplattformen (NTP).

#### Version
1.0

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av patientrelation skett då anropet genomförts utan fel. / Registreringen speglas omedelbart i svar från frågor till patientrelationstjänsten. |  |

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientRelationId | patientrelationship:Id | Unik, global identifierare för intyget. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| patientId | patientrelationship:PersonIdValue | Patientens personnummer alternativt samordningsnummer. | 1..1 |
| careProviderId | patientrelationship:HsaId | Id på den vårdgivare som intyget gäller för/kopplas till. | 1..1 |
| careUnitId | patientrelationship:HsaId | Id på den vårdenhet som intyget gäller för/kopplas till. | 1..1 |
| employeeId | patientrelationship:HsaId | Medarbetar id för den medarbetare som patientrelationen gäller för. | 1..1 |
| startDate | xs:dateTime | Ej obligatoriskt startdatum för intygets giltighetstid. Om ett startdatum är angivet gäller intyget fr.o.m denna tidpunkt, annars gäller patientrelationen fr.o.m aktuell tidpunkt (registreringstidpunkt). | 0..1 |
| endDate | xs:dateTime | Tidpunkts då giltigheten går ut för patientrelationen. | 1..1 |
| registrationAction | patientrelationship:Action | Identifierar de personer som begärt och registrerat patientrelationen samt tidpunkter för dessa. | 1..1 |
| Svar |  |  |  |
| registerExtendedPatientRelation | patientrelationship:Result | Status för om tjänsten utfördes. | 1..1 |

#### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till den vårdgivare som patientrelationen avser genom att kontrollera att vårdgivaren matchar den angivna logiska adressen.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

#### Tjänsteinteraktion
RegisterExtendedPatientRelation
Namespace: `urn:riv:ehr:patientrelationship:administration:RegisterExtendedPatientRelationResponder:1`

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [RegisterExtendedPatientRelationInteraction_1.0_RIVTABP21.wsdl](files/wsdl/RegisterExtendedPatientRelationInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientrelationship_1.0.xsd](files/schema/ehr_patientrelationship_1.0.xsd) | Domänschema (delat) |
| [RegisterExtendedPatientRelationResponder_1.0.xsd](files/schema/RegisterExtendedPatientRelationResponder_1.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/registerextendedpatientrelation](StructureDefinition-registerextendedpatientrelation.html)
* **Logisk modell (request):** [StructureDefinition/registerextendedpatientrelation-request](StructureDefinition-registerextendedpatientrelation-request.html)

---

### CancelExtendedPatientRelation

Denna tjänst återkallar en patientrelation i patientrelationstjänsten. patientrelationen raderas inte från patientrelationstjänsten utan markeras som återkallad (ej längre giltig) för historikens skull. En återkallan kan ej återtas.

#### Frivillighet
Obligatorisk för tjänsteproducent.

#### Version
1.0

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att återkallan av patientrelation skett då anropet genomförts utan fel. / Återkallan speglas omedelbart i svar från frågor genom tjänsterna. |  |

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientRelationId | patientrelationship:Id | Identifierare för den patientrelation som skall återkallas. | 1..1 |
| cancellationAction | patientrelationship:Action | Identifierar de personer som begärt och registrerat återkallan samt tidpunkter för dessa. En anledning till återkallan i fritext kan även ges. | 1..1 |
| Svar |  |  |  |
| cancelExtendedPatientRelation | patientrelationship:Result | Status för om tjänsten utfördes. | 1..1 |

#### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till den vårdgivare som patientrelationen gäller genom att kontrollera att vårdgivaren matchar den angivna logiska adressen.
Om behörighet nekas till vårdgivaren som äger patientrelationsinformationen skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

#### Tjänsteinteraktion
CancelExtendedPatientRelation
Namespace: `urn:riv:ehr:patientrelationship:administration:CancelExtendedPatientRelationResponder:1`

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [CancelExtendedPatientRelationInteraction_1.0_RIVTABP21.wsdl](files/wsdl/CancelExtendedPatientRelationInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientrelationship_1.0.xsd](files/schema/ehr_patientrelationship_1.0.xsd) | Domänschema (delat) |
| [CancelExtendedPatientRelationResponder_1.0.xsd](files/schema/CancelExtendedPatientRelationResponder_1.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/cancelextendedpatientrelation](StructureDefinition-cancelextendedpatientrelation.html)
* **Logisk modell (request):** [StructureDefinition/cancelextendedpatientrelation-request](StructureDefinition-cancelextendedpatientrelation-request.html)

---

### DeleteExtendedPatientRelation

Tjänst som makulerar en patientrelation i patientrelationstjänsten. Makulering av patientrelation används enbart för borttagning av felregistrerade patientrelationer.
Patientrelationen raderas inte från patientrelationstjänsten utan markeras som makulerad (ej längre giltig) för historikens skull. En makulering kan ej återtas.

#### Frivillighet
Obligatorisk för tjänsteproducent.

#### Version
1.0

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att makulering av patientrelation skett då anropet genomförts utan fel. / Makuleringen speglas omedelbart i svar från frågor genom tjänsterna. |  |

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientRelationId | patientrelationship:Id | Identifierare för den patientrelation som skall makuleras. | 1..1 |
| deletionAction | patientrelationship:Action | Identifierar de personer som begärt och utfört makulering samt tidpunkter för dessa. En anledning till makuleringen i fritext kan även ges. | 1..1 |
| Svar |  |  |  |
| deleteExtendedPatientRelation | patientrelationship:Result | Status för om tjänsten utfördes. | 1..1 |

#### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till den vårdgivare som patientrelationen gäller genom att kontrollera att vårdgivaren matchar den angivna logiska adressen.
Om behörighet nekas till vårdgivaren som äger patientrelationsinformationen skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

#### Tjänsteinteraktion
DeleteExtendedPatientRelation
Namespace: `urn:riv:ehr:patientrelationship:administration:DeleteExtendedPatientRelationResponder:1`

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeleteExtendedPatientRelationInteraction_1.0_RIVTABP21.wsdl](files/wsdl/DeleteExtendedPatientRelationInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientrelationship_1.0.xsd](files/schema/ehr_patientrelationship_1.0.xsd) | Domänschema (delat) |
| [DeleteExtendedPatientRelationResponder_1.0.xsd](files/schema/DeleteExtendedPatientRelationResponder_1.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/deleteextendedpatientrelation](StructureDefinition-deleteextendedpatientrelation.html)
* **Logisk modell (request):** [StructureDefinition/deleteextendedpatientrelation-request](StructureDefinition-deleteextendedpatientrelation-request.html)
