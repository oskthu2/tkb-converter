# 7 Tjänstekontrakt - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

# 7 Tjänstekontrakt

Denna sida dokumenterar alla tjänstekontrakt i tjänstedomänen **ehr: blocking** (Spärrhantering) version 3.2.2.

Domänen innehåller 16 tjänstekontrakt fördelade på fyra underdomäner:

* **querying** — frågetjänster (GetAllBlocks, GetAllBlocksForPatient, GetBlocks, GetBlocksForPatient)
* **accesscontrol** — spärrkontroll (CheckBlocks)
* **synchronization** — replikering till nationell spärrtjänst (RegisterBlock, UnregisterBlock, RegisterTemporaryRevoke, UnregisterTemporaryRevoke)
* **administration** — lokal spärradministration (GetPatientIds, GetExtendedBlocksForPatient, RegisterExtendedBlock, RevokeExtendedBlock, DeleteExtendedBlock, RegisterTemporaryExtendedRevoke, CancelTemporaryExtendedRevoke)

-------

### GetAllBlocks

**Avsnitt 7.1 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som läser alla nationellt kända/lagrade spärrar. Endast aktiva spärrar returneras (ej makulerade eller permanent hävda). Varje spärr kompletteras också med aktiva tillfälliga hävningar om sådana finns. Tjänsten kan användas i ett integrationsmönster där vårdsystemet med visst intervall inhämtar allt spärrunderlag den behöver, för att sedan vid behov utföra intern kontroll mot spärrunderlaget. Det går även att ange ett datum (CreatedOnOrAfter) från när man önskar inhämta nyare uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Detta inkluderar även tillfälliga hävningar som skett efter angivet datum. Här avses datum då spärruppgiften lagrades i tjänsten. Tjänsten realiseras på lokal och nationell nivå.

### Frivillighet

Obligatorisk för tjänsteproducent.

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. / Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag kan returneras. |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderIds | blocking:HsaId | Ej obligatorisk lista med HSA-id på de vårdgivare vars spärrar skall hämtas. Om detta utelämnas hämtas alla spärrar oavsett organisationstillhörighet. | 0..* |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |   |   |   |
| getAllBlocks | blocking:BlockHeader | Lista över funna spärrar som är aktiva. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till tjänsten. Om behörighet saknas, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion

GetAllBlocks

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?

?
?
?
?
?
?
?

?
?

?
?
?
?
?
?
?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetAllBlocksInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetAllBlocksInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [GetAllBlocksResponder_2.0.xsd](files/schema/GetAllBlocksResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getallblocks](StructureDefinition-getallblocks.md)
* **Logisk modell (request):** [StructureDefinition/getallblocks-request](StructureDefinition-getallblocks-request.md)

-------

### GetAllBlocksForPatient

**Avsnitt 7.2 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som läser alla nationellt kända/lagrade spärrar för en viss patient, samt för viss organisation eller oavsett organisation. Endast aktiva och giltiga spärrar returneras. Varje spärr innehåller också eventuella tillfälliga hävningar, om aktiva sådana finns. Övrig funktionalitet är densamma som för GetAllBlocks. Tjänsten realiseras på lokal och nationell nivå.

### Frivillighet

Obligatorisk för tjänsteproducent.

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. / Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag kan returneras. |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| patientId | blocking:PersonIdValue | Patientens personnummer eller samordningsnummer vars spärrar skall hämtas. | 1..1 |
| careProviderIds | blocking:HsaId | Ej obligatorisk lista med HSA-id på de vårdgivare vars spärrar skall hämtas. Om detta utelämnas hämtas alla spärrar oavsett organisationstillhörighet. | 0..* |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |   |   |   |
| getAllBlocksForPatient | blocking:BlockHeader | Lista över funna spärrar som är aktiva för angiven patient. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till tjänsten. Om behörighet saknas, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion

GetAllBlocksForPatient

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?

?
?
?
?
?
?
?

?
?

?
?
?
?
?
?
?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetAllBlocksForPatientInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetAllBlocksForPatientInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [GetAllBlocksForPatientResponder_2.0.xsd](files/schema/GetAllBlocksForPatientResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getallblocksforpatient](StructureDefinition-getallblocksforpatient.md)
* **Logisk modell (request):** [StructureDefinition/getallblocksforpatient-request](StructureDefinition-getallblocksforpatient-request.md)

-------

### GetPatientIds

**Avsnitt 7.3 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som läser alla patienter med minst en aktivt spärr för en viss organisation. Endast en distinkt lista med unika patienter returneras. Konsumerande system anger vilken vårdgivare som ska omfattas av sökningen. Tjänsten realiseras på lokal nivå.

### Frivillighet

Frivillig för tjänsteproducent.

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras, på den lokala respektive nationella nivån. |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderId | blocking:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| Svar |   |   |   |
| getPatientIds | administration:GetPatientIdResult | Lista över unika patienter som har aktiva spärrar. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som hämtningen avser. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion

GetPatientIds

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetPatientIdsInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetPatientIdsInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [GetPatientIdsResponder_2.0.xsd](files/schema/GetPatientIdsResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getpatientids](StructureDefinition-getpatientids.md)
* **Logisk modell (request):** [StructureDefinition/getpatientids-request](StructureDefinition-getpatientids-request.md)

-------

### GetBlocks

**Avsnitt 7.4 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som läser alla registrerade spärrar för en viss organisation. Endast aktiva spärrar returneras (ej makulerade eller permanent hävda). Varje spärr kompletteras också med aktiva tillfälliga hävningar om sådana finns. Konsumerande system anger vilken vårdgivare som skall omfattas av sökningen. Det går även att ange ett datum (CreatedOnOrAfter) från när man önskar inhämta nyare uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Detta inkluderar även tillfälliga hävningar som skett efter angivet datum. Här avses datum då spärruppgiften lagrades i tjänsten. Tjänsten realiseras på lokal nivå.

### Frivillighet

Obligatorisk för tjänsteproducent.

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag kan returneras. |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderId | blocking:HsaId | HSA-id på de vårdgivare vars spärrar skall hämtas. | 1..1 |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |   |   |   |
| getBlocks | blocking:BlockHeader | Lista över funna spärrar som är aktiva. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som hämtningen avser. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion

GetBlocks

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?

?
?
?
?
?
?
?

?
?

?
?
?
?
?
?
?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetBlocksInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetBlocksInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [GetBlocksResponder_2.0.xsd](files/schema/GetBlocksResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getblocks](StructureDefinition-getblocks.md)
* **Logisk modell (request):** [StructureDefinition/getblocks-request](StructureDefinition-getblocks-request.md)

-------

### GetBlocksForPatient

**Avsnitt 7.5 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som läser alla spärrar för en viss patient, samt för viss organisation. Endast aktiva och giltiga spärrar returneras. Varje spärr innehåller också eventuella tillfälliga hävningar, om aktiva sådana finns. Övrig funktionalitet är densamma som för GetAllBlocks. Tjänsten realiseras på lokal nivå.

### Frivillighet

Obligatorisk för tjänsteproducent.

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. / Det skall i så fall kunna konfigureras i tjänsten hur länge underlag får sparas, vilket då anges i SLA. Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag kan returneras. |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| patientId | blocking:PersonIdValue | Patientens personnummer eller samordningsnummer vars spärrar skall hämtas. | 1..1 |
| careProviderId | blocking:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |   |   |   |
| getBlocksForPatient | blocking:BlockHeader | Lista över funna spärrar som är aktiva för angiven patient. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som hämtningen avser. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion

GetBlocksForPatient

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?

?
?
?
?
?
?
?

?
?

?
?
?
?
?
?
?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetBlocksForPatientInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetBlocksForPatientInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [GetBlocksForPatientResponder_2.0.xsd](files/schema/GetBlocksForPatientResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getblocksforpatient](StructureDefinition-getblocksforpatient.md)
* **Logisk modell (request):** [StructureDefinition/getblocksforpatient-request](StructureDefinition-getblocksforpatient-request.md)

-------

### GetExtendedBlocksForPatient

**Avsnitt 7.6 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som läser alla spärrar för en viss patient och organisation. Varje spärr innehåller också tillfälliga hävningar om sådana finns. Tjänsten returnerar även makulerade och permanent hävda spärrar, samt tidigare gjorda tillfälliga hävningar, för att ge ett historikunderlag (vad som har hänt med patientens spärrar tidigare). Tjänsten används för att på lokal nivå kunna söka fram och administrera patientens spärrar och dess eventuella tillfälliga hävningar för en viss vårdgivare. Tjänsten realiseras på lokal nivå.

### Frivillighet

Frivillig.

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderId | blocking:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| patientId | blocking:PersonIdValue | Personnummer på patienten vars spärrar skall hämtas. | 1..1 |
| Svar |   |   |   |
| getExtendedBlocksForPatient | administration:GetExtendedBlocksResult | Svaret består av en spärrlista enligt det utökade, lokala spärrformatet. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion

GetExtendedBlocksForPatient

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?

?
?
?
?
?
?
?

?
?

?

?
?
?
?

?
?
?
?

?

?
?
?
?

?
?
?
?

?

?
?
?
?

?
?
?
?

?
?
?
?
?
?

?

?
?
?
?

?
?
?
?

?

?
?
?
?

?
?
?
?
?
?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetExtendedBlocksForPatientInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetExtendedBlocksForPatientInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [GetExtendedBlocksForPatientResponder_2.0.xsd](files/schema/GetExtendedBlocksForPatientResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getextendedblocksforpatient](StructureDefinition-getextendedblocksforpatient.md)
* **Logisk modell (request):** [StructureDefinition/getextendedblocksforpatient-request](StructureDefinition-getextendedblocksforpatient-request.md)

-------

### CheckBlocks

**Avsnitt 7.7 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som kontrollerar om given information är spärrad eller inte. Den utvärderar alla spärrar som finns i tjänsten och om någon spärr är helt applicerbar för given information och tillfälle kommer tjänsten att markera den informationen som spärrad. Om det finns minst en tillfällig hävning för spärren som applicerar på den angivna aktören blir informationen ospärrad. Denna tjänst kan användas då tjänstekonsumenten inte själv kan avgöra/kontrollera om information är spärrad eller inte. Tjänsten stödjer kontroll av flertal informationsmängder i ett och samma anrop. Evalueringen av huruvida informationen är spärrad eller ej görs enligt följande:

* Om spärr föreligger (inre eller yttre) blir informationen spärrad.
* Om undantag av spärr för 'lak' och/eller 'upp' har angivets blir denna informationen EJ spärrad.
* Om spärren inte innehåller någon giltighetstid blir informationen spärrad.
* Om tidsspannet för informationen ligger inom spärrens giltighetstid blir informationen spärrad.
* Om spärrens giltighetstid delvis överlappar tidsspannet (start- eller sluttid) för informationen blir informationen spärrad.
* Om tidsspannet för informationen ligger helt utanför spärrens giltighetstid blir informationen EJ spärrad. Tjänsten realiseras både på lokal och nationell nivå. Tjänster på nationell nivå kräver ett komplett spärrunderlag.

### Frivillighet

Obligatorisk för tjänsteproducent.

### Version

3.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Grundprincipen är att utföra en kontroll om spärr föreligger på de senast registrerade spärruppgifterna i spärrtjänsten på lokal respektive nationell nivå. / Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag finns tillgängligt. |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| accessingActor | blocking.accesscontrol:AccessingActor | Representerar den aktör/person som önskar åtkomst till informationen. | 1..1 |
| patientId | blocking.accesscontrol:PersonIdValue | Personnummer på patienten vars information aktören önskar åtkomst till. | 1..1 |
| informationEntities | blocking.accesscontrol:InformationEntity | Lista över de informationsentiteter som aktören önskar åtkomst till. | 1..* |
| Svar |   |   |   |
| checkBlocks | blocking.accesscontrol:CheckBlocksResult | Lista med resultat motsvarande den informationslista som angavs som inparameter. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera att tjänstekonsumenten har behörighet till tjänsten. Om behörighet saknas, nekas anropet (med tillhörande felkod ACCESSDENIED). Parametrar till tjänsten skall valideras och resultera i resultkoden VALIDATIONERROR om dessa är felaktiga. Informationsresurser och dess fält skall valideras och hanteras separat. Ogiltiga eller felaktiga fält i informationsresursen skall resultera i VALIDATIONERROR på resursnivå, dvs felkoden ges per informationsresurs i CheckBlocksResult med CheckStatus. Om någon informationsresurs får valideringsfel skall tjänsten returnera koden INFO med meddelandet "Informationsresurs(er) innehåller valideringsfel". Tjänsten skall hantera valfria informationstyper samt tomma/icke existerande värden. Alla andra värden än de definierade i kontraktet hanteras som en uppgift av ospecificerad typ i den kontroll som tjänsten utför.

### Tjänsteinteraktion

CheckBlocks

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
?
?

?
?
?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?

?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [CheckBlocksInteraction_3.0_RIVTABP21.wsdl](files/wsdl/CheckBlocksInteraction_3.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [CheckBlocksResponder_3.0.xsd](files/schema/CheckBlocksResponder_3.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/checkblocks](StructureDefinition-checkblocks.md)
* **Logisk modell (request):** [StructureDefinition/checkblocks-request](StructureDefinition-checkblocks-request.md)

-------

### RegisterBlock

**Avsnitt 7.8 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som registrerar en ny spärr i den nationella spärrtjänsten. En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen. Informationstyperna lak och upp kan undantas från spärren. Om detta sker blir dessa informationstyper ej spärrade. Tjänsten används för att synkronisera en lokal spärr till den nationella spärrtjänsten. Tjänsten realiseras på nationell nivå.

### Frivillighet

Obligatorisk för både tjänsteproducent och tjänstekonsument (lokal spärrtjänst).

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Tjänsten garanterar att registrering av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex getallblocks). |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| blockId | blocking:Id | Unik, global identifierare för spärren. Anropande system ansvarar för att generera id:et. | 1..1 |
| blockType | blocking:BlockType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1..1 |
| patientId | blocking:PersonIdValue | Patientens personnummer, 12 tecken. | 1..1 |
| informationStartDate | xs:dateTime | Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:dateTime | Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | blocking:HsaId | Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för. | 0..1 |
| informationCareProviderId | blocking:HsaId | Obligatoriskt HSA-id för den vårdgivare spärren gäller för. | 1..1 |
| excludedInformationTypes | blocking:InformationTypeIdValue | Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'. | 0..* |
| temporaryRevokeRegistration | blocking:TemporaryRevokeRegistration | Ej obligatorisk lista med tillfälliga hävningar. Detta möjliggör registrering/överföring av en spärr och tillhörande hävningar på en och samma gång. Denna lista lämnas tom i normalfallet. | 0..* |
| Svar |   |   |   |
| registerBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om åtkomst saknas till angiven vårdgivare skall ett fel returneras och flödet avbryts.

### Tjänsteinteraktion

RegisterBlock

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
?
?
?
?
?
?

?
?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [RegisterBlockInteraction_2.0_RIVTABP21.wsdl](files/wsdl/RegisterBlockInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [RegisterBlockResponder_2.0.xsd](files/schema/RegisterBlockResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/registerblock](StructureDefinition-registerblock.md)
* **Logisk modell (request):** [StructureDefinition/registerblock-request](StructureDefinition-registerblock-request.md)

-------

### UnregisterBlock

**Avsnitt 7.9 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som avregistrerar/raderar en befintlig spärr i den nationella spärrtjänsten, om spärren finns. Tjänsten används för att synkronisera borttag av en lokal spärr till den nationella spärrtjänsten. Tjänsten realiseras på nationell nivå.

### Frivillighet

Obligatorisk för både tjänsteproducent och tjänstekonsument (lokal spärrtjänst).

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Tjänsten garanterar att borttag av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex getallblocks). |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| blockId | blocking:Id | Unik, global identifierare för spärren. | 1..1 |
| Svar |   |   |   |
| unregisterBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om åtkomst saknas till angiven spärrs vårdgivare skall ett fel returneras och flödet avbryts.

### Tjänsteinteraktion

UnregisterBlock

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [UnregisterBlockInteraction_2.0_RIVTABP21.wsdl](files/wsdl/UnregisterBlockInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [UnregisterBlockResponder_2.0.xsd](files/schema/UnregisterBlockResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/unregisterblock](StructureDefinition-unregisterblock.md)
* **Logisk modell (request):** [StructureDefinition/unregisterblock-request](StructureDefinition-unregisterblock-request.md)

-------

### RegisterTemporaryRevoke

**Avsnitt 7.10 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som registrerar en tillfällig hävning för en given spärr i den nationella spärrtjänsten, om spärren finns. Tjänsten används för att synkronisera en lokal tillfällig hävning till den nationella spärrtjänsten. Tjänsten realiseras på nationell nivå.

### Frivillighet

Obligatorisk för tjänsteproducent.

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Tjänsten garanterar att registrering av hävningen skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex getallblocks). |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| temporaryRevokeRegistration | blocking:TemporaryRevokeRegistration | Registreringsuppgifter för tillfällig hävning. | 1..1 |
| Svar |   |   |   |
| registerTemporaryRevoke | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om åtkomst saknas till angiven spärrs vårdgivare skall ett fel returneras och flödet avbryts.

### Tjänsteinteraktion

RegisterTemporaryRevoke

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [RegisterTemporaryRevokeInteraction_2.0_RIVTABP21.wsdl](files/wsdl/RegisterTemporaryRevokeInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [RegisterTemporaryRevokeResponder_2.0.xsd](files/schema/RegisterTemporaryRevokeResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/registertemporaryrevoke](StructureDefinition-registertemporaryrevoke.md)
* **Logisk modell (request):** [StructureDefinition/registertemporaryrevoke-request](StructureDefinition-registertemporaryrevoke-request.md)

-------

### UnregisterTemporaryRevoke

**Avsnitt 7.11 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som avregistrerar/raderar en tillfällig hävning i den nationella spärrtjänsten, om hävningen finns. Tjänsten används för att synkronisera borttag av en lokal tillfällig hävning till den nationella spärrtjänsten. Tjänsten realiseras på nationell nivå.

### Frivillighet

Obligatorisk för tjänsteproducent.

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Tjänsten garanterar att borttag av hävningen skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex getallblocks). |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| temporaryRevokeId | blocking:Id | Identifierare för den tillfälliga hävning som skall raderas. | 1..1 |
| Svar |   |   |   |
| unregisterTemporaryRevoke | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om åtkomst saknas till angiven spärrs vårdgivare skall ett fel returneras och flödet avbryts.

### Tjänsteinteraktion

UnregisterTemporaryRevoke

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [UnregisterTemporaryRevokeInteraction_2.0_RIVTABP21.wsdl](files/wsdl/UnregisterTemporaryRevokeInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [UnregisterTemporaryRevokeResponder_2.0.xsd](files/schema/UnregisterTemporaryRevokeResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/unregistertemporaryrevoke](StructureDefinition-unregistertemporaryrevoke.md)
* **Logisk modell (request):** [StructureDefinition/unregistertemporaryrevoke-request](StructureDefinition-unregistertemporaryrevoke-request.md)

-------

### RegisterExtendedBlock

**Avsnitt 7.12 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som registrerar en ny spärr för en viss patient och inom en viss vårdgivare i den lokala spärrtjänsten. En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen. Informationstyperna lak och upp kan undantas från spärren. Om detta sker blir dessa informationstyper ej spärrade. Kräver utökad spärrinformation med metainformation kring skapande av spärren. Tjänsten registrerar även grunddata om spärren på nationell nivå. Tjänsten realiseras på lokal nivå.

### Frivillighet

Frivillig.

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Tjänsten garanterar att registrering av spärren skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av spärren skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| blockId | blocking:Id | Unik, global identifierare för spärren. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| blockType | blocking:BlockType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1..1 |
| patientId | blocking:PersonIdValue | Patientens personnummer, 12 tecken. | 1..1 |
| informationStartDate | xs:dateTime | Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:dateTime | Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | blocking:HsaId | Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för. | 0..1 |
| informationCareProviderId | blocking:HsaId | Obligatoriskt HSA-id för den vårdgivare spärren gäller för. | 1..1 |
| excludedInformationTypes | blocking:InformationTypeIdValue | Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'. | 0..* |
| registerAction | blocking:Action | Identifierar de personer som begärt och registrerat spärren samt tidpunkter för dessa. | 1..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / - Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / - Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / - Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |   |   |   |
| registerExtendedBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion

RegisterExtendedBlock

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
?
?
?
?
?
?

?

?
?
?
?

?
?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [RegisterExtendedBlockInteraction_2.0_RIVTABP21.wsdl](files/wsdl/RegisterExtendedBlockInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [RegisterExtendedBlockResponder_2.0.xsd](files/schema/RegisterExtendedBlockResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/registerextendedblock](StructureDefinition-registerextendedblock.md)
* **Logisk modell (request):** [StructureDefinition/registerextendedblock-request](StructureDefinition-registerextendedblock-request.md)

-------

### RevokeExtendedBlock

**Avsnitt 7.13 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som häver en spärr permanent i den lokala spärrtjänsten, om spärren finns. Denna hävning kan inte återtas. Tjänsten avregistrerar även spärren på nationell nivå. Tjänsten realiseras på lokal nivå.

### Frivillighet

Frivillig.

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Tjänsten garanterar att registrering av hävningen skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av hävningen skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| blockId | blocking:Id | Unik, global identifierare för spärren. | 1..1 |
| revokeAction | blocking:Action | Identifierar de personer som begärt och permanent hävt spärren samt tidpunkter för dessa. | 1..1 |
| revokeReasonText | blocking:ReasonText | Orsaken till den permanenta hävningen. | 0..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / - Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / - Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / - Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |   |   |   |
| revokeExtendedBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion

RevokeExtendedBlock

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?

?

?
?
?
?

?
?
?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [RevokeExtendedBlockInteraction_2.0_RIVTABP21.wsdl](files/wsdl/RevokeExtendedBlockInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [RevokeExtendedBlockResponder_2.0.xsd](files/schema/RevokeExtendedBlockResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/revokeextendedblock](StructureDefinition-revokeextendedblock.md)
* **Logisk modell (request):** [StructureDefinition/revokeextendedblock-request](StructureDefinition-revokeextendedblock-request.md)

-------

### DeleteExtendedBlock

**Avsnitt 7.14 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som makulerar en befintlig spärr i den lokala spärrtjänsten, om spärren finns. Spärren raderas inte från lokal spärrtjänst utan markeras som makulerad (ej längre giltig) för historikens skull. Denna makulering kan inte återtas. Tjänsten avregistrerar även spärren på nationell nivå. Tjänsten realiseras på lokal nivå.

### Frivillighet

Frivillig.

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Tjänsten garanterar att makulering skett då anropet genomförts utan fel. / Tjänsten garanterar även att makulering skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| blockId | blocking:Id | Identifierare för den spärr som skall makuleras. | 1..1 |
| deleteAction | blocking:Action | Identifierar de personer som begärt och makulerat spärren samt tidpunkter för dessa. | 1..1 |
| deleteReasonText | blocking:ReasonText | Ej obligatorisk, kompletterande text för orsak till makuleringen. | 0..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / - Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / - Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / - Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |   |   |   |
| deleteExtendedBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion

DeleteExtendedBlock

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?

?

?
?
?
?

?
?
?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [DeleteExtendedBlockInteraction_2.0_RIVTABP21.wsdl](files/wsdl/DeleteExtendedBlockInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [DeleteExtendedBlockResponder_2.0.xsd](files/schema/DeleteExtendedBlockResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/deleteextendedblock](StructureDefinition-deleteextendedblock.md)
* **Logisk modell (request):** [StructureDefinition/deleteextendedblock-request](StructureDefinition-deleteextendedblock-request.md)

-------

### RegisterTemporaryExtendedRevoke

**Avsnitt 7.15 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som häver en spärr tillfälligt i den lokala spärrtjänsten, om spärren finns. En spärr kan ha flera tillfälliga hävningar (gällande olika personal). Tjänsten registrerar även den tillfälliga hävningen på nationell nivå. Tjänsten realiseras på lokal nivå.

### Frivillighet

Frivillig.

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Tjänsten garanterar att registrering av den tillfälliga hävningen skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av den tillfälliga hävningen skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| temporaryRevokeId | blocking:Id | Unik, global identifierare för den tillfälliga hävningen. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| blockId | blocking:Id | Identifierare för den spärr som skall tillfälligt hävas. | 1..1 |
| endDate | xs:dateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1..1 |
| revokedForCareUnitId | blocking:HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1..1 |
| revokedForEmployeeId | blocking:HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en medarbetare/person, annars gäller hävningen för all behörig personal på vårdenheten. | 0..1 |
| registerAction | blocking:Action | Identifierar de personer som begärt och registrerat den tillfälliga hävningen samt tidpunkter för dessa. | 1..1 |
| revokeReason | blocking:TemporaryRevokeReason | Enumerationsvärde för orsak till tillfällig hävning. | 1..1 |
| revokeReasonText | blocking:ReasonText | Obligatorisk, kompletterande text för orsak till tillfällig hävning. | 0..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / - Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / - Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / - Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |   |   |   |
| registerTemporaryExtendedRevoke | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion

RegisterTemporaryExtendedRevoke

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
?
?
?

?

?
?
?
?

?
?
?
?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [RegisterTemporaryExtendedRevokeInteraction_2.0_RIVTABP21.wsdl](files/wsdl/RegisterTemporaryExtendedRevokeInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [RegisterTemporaryExtendedRevokeResponder_2.0.xsd](files/schema/RegisterTemporaryExtendedRevokeResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/registertemporaryextendedrevoke](StructureDefinition-registertemporaryextendedrevoke.md)
* **Logisk modell (request):** [StructureDefinition/registertemporaryextendedrevoke-request](StructureDefinition-registertemporaryextendedrevoke-request.md)

-------

### CancelTemporaryExtendedRevoke

**Avsnitt 7.16 — Namnrymd: `urn:riv:ehr:blocking`**

Tjänst som återkallar en tillfällig hävning i den lokala spärrtjänsten, om den tillfälliga hävningen finns. Denna återkallning kan inte återtas. Tjänsten avregistrerar även den tillfälliga hävningen på nationell nivå. Tjänsten realiseras på lokal nivå.

### Frivillighet

Frivillig.

### Version

2.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet |   |   |
| Last |   |   |
| Aktualitet | Tjänsten garanterar att registrering av återkallan skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av återkallan skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| temporaryRevokeId | blocking:Id | Identifierare för den tillfälliga hävning som skall återkallas. | 1..1 |
| cancellationInfo | blocking:Action | Identifierar de personer som begärt och hävt den tillfälliga hävningen samt tidpunkter för dessa. | 1..1 |
| cancelReasonText | blocking:ReasonText | Ej obligatorisk, kompletterande text för orsak till makuleringen. | 0..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / - Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / - Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / - Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |   |   |   |
| cancelTemporaryExtendedRevoke | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion

CancelTemporaryExtendedRevoke

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?

?

?
?
?
?

?
?
?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [CancelTemporaryExtendedRevokeInteraction_2.0_RIVTABP21.wsdl](files/wsdl/CancelTemporaryExtendedRevokeInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [CancelTemporaryExtendedRevokeResponder_2.0.xsd](files/schema/CancelTemporaryExtendedRevokeResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/canceltemporaryextendedrevoke](StructureDefinition-canceltemporaryextendedrevoke.md)
* **Logisk modell (request):** [StructureDefinition/canceltemporaryextendedrevoke-request](StructureDefinition-canceltemporaryextendedrevoke-request.md)

-------

