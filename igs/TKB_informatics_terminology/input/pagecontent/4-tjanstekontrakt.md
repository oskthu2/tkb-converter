## Tjänstekontrakt

### GetTerminologySubset

GetTerminologySubset hämtar ut en delmängd (subset) av en terminologi (exempelvis SNOMED CT, ICD-10, ATC-kodverket) som är användbar i ett visst sammanhang.
Denna tjänst stöttar bland annat det dynamiska urvalet av orsaker till antibiotikainsättning som skall rapporteras till Infektionsregistret. Tjänsten levererar även urvalet av ATC-koder som skall trigga frågan om ordinationsorsak. Tjänsten skall förutom en kod och en visningsterm kunna returnera ytterligare metadata som krävs för att veta vilka delar av OpenEHR templaten som skall fyllas i vid sändande av ordinationsorsaken till Infektionsverktyget.

#### Begäran (Request)

| Soapenv:Header | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| LogicalAddress | wsa:To | HSASERVICES-10BK | 1..1 |

| GetTerminologySubsetRequest | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| SubsetIdentity | String | Identifierare för urvalet | 1..1 |
| LocalOrganizationExtension | String | HSAId för organisationspost motsvarande vårdgivare i HSA-trädet. Om denna anges kommer det nationella urvalet returneras tillsammans med de koder i urvalet som är specifika för den aktuella vårdgivaren. | 0..1 |
| TermType | String | Typ av term som ska användas. / Fixt värde: DisplayName | 1..1 |

#### Svar (Response)

Tjänsten retunerar förutom en kod och en visningsterm ytterligare metadata som krävs för att veta vilka delar som skall fyllas i vid sändande av ordinationsorsaken till Infektionsverktyget.

| GetTerminologySubsetResponseType | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| Concept | ConceptType | Svaret består av en lista med begrepp | 0..* |

| ConceptType | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| CodeSystem | String | Identifierare av kodsystem | 1..1 |
| Code | String | Begreppskod | 1..1 |
| Term | String | Term som beskriver begreppet | 1..1 |
| Metadata | MetadataType | Lista med metadata | 0..* |

| MetadataType | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| Name | String | Identifierar typ av metadata. | 1..1 |
| Value | String | Metadatavärde. | 1..1 |

#### Tjänsteinteraktion

GetTerminologySubset

### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

> **OBS:** Källfilerna kunde ej kopieras till denna IG — Bitbucket API rate-limitade nedladdningarna vid insamlingstillfället. Se [riv.informatics.terminology på Bitbucket](https://bitbucket.org/rivta-domains/riv.informatics.terminology/src/master/schemas/) för aktuella filer.

| Fil | Typ |
|-----|-----|
| GetTerminologySubsetInteraction_1.0_RIVTABP20.wsdl | WSDL-kontrakt |
| TerminologyServiceBaseTypes_1.0.xsd | Domänschema (bastyper) |
| GetTerminologySubsetResponder_1.0.xsd | Tjänstespecifikt schema |
| itintegration_registry_1.0.xsd | Registerschema (delat) |
| ws-addressing-1.0.xsd | WS-Addressing schema (delat) |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getterminologysubset](StructureDefinition-getterminologysubset.html)
* **Logisk modell (request):** [StructureDefinition/getterminologysubset-request](StructureDefinition-getterminologysubset-request.html)
