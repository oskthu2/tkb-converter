# 7 Tjänstekontrakt

Denna sida dokumenterar alla tjänstekontrakt i tjänstedomänen **ehr: blocking** (Spärrhantering) version 3.2.2.

Domänen innehåller 16 tjänstekontrakt fördelade på fyra underdomäner:
- **querying** — frågetjänster (GetAllBlocks, GetAllBlocksForPatient, GetBlocks, GetBlocksForPatient)
- **accesscontrol** — spärrkontroll (CheckBlocks)
- **synchronization** — replikering till nationell spärrtjänst (RegisterBlock, UnregisterBlock, RegisterTemporaryRevoke, UnregisterTemporaryRevoke)
- **administration** — lokal spärradministration (GetPatientIds, GetExtendedBlocksForPatient, RegisterExtendedBlock, RevokeExtendedBlock, DeleteExtendedBlock, RegisterTemporaryExtendedRevoke, CancelTemporaryExtendedRevoke)

---

### GetAllBlocks

_Avsnitt 7.1 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som läser alla nationellt kända/lagrade spärrar. Endast aktiva spärrar returneras (ej makulerade eller permanent hävda). Varje spärr kompletteras också med aktiva tillfälliga hävningar om sådana finns.
Tjänsten kan användas i ett integrationsmönster där vårdsystemet med visst intervall inhämtar allt spärrunderlag den behöver, för att sedan vid behov utföra intern kontroll mot spärrunderlaget.
Det går även att ange ett datum (CreatedOnOrAfter) från när man önskar inhämta nyare uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Detta inkluderar även tillfälliga hävningar som skett efter angivet datum. Här avses datum då spärruppgiften lagrades i tjänsten.
Tjänsten realiseras på lokal och nationell nivå.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. / Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag kan returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderIds | blocking:HsaId | Ej obligatorisk lista med HSA-id på de vårdgivare vars spärrar skall hämtas. Om detta utelämnas hämtas alla spärrar oavsett organisationstillhörighet. | 0..* |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |  |  |  |
| getAllBlocks | blocking:BlockHeader | Lista över funna spärrar som är aktiva. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till tjänsten. Om behörighet saknas, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
GetAllBlocks

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetAllBlocksRequest xmlns:ns0="urn:riv:ehr:blocking:querying:GetAllBlocksResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2">
<!-- Optional -->
<!-- Array -->
<ns0:CareProviderIds>?</ns0:CareProviderIds>
<!-- Optional -->
<ns0:CreatedOnOrAfter>?</ns0:CreatedOnOrAfter>
</ns0:GetAllBlocksRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetAllBlocksResponse xmlns:ns0="urn:riv:ehr:blocking:querying:GetAllBlocksResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:GetAllBlocks>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<!-- Optional -->
<!-- Array -->
<ns2:Blocks>
<ns2:BlockId>?</ns2:BlockId>
<ns2:BlockType>?</ns2:BlockType>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:InformationStartDate>?</ns2:InformationStartDate>
<!-- Optional -->
<ns2:InformationEndDate>?</ns2:InformationEndDate>
<!-- Optional -->
<ns2:InformationCareUnitId>?</ns2:InformationCareUnitId>
<ns2:InformationCareProviderId>?</ns2:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns2:ExcludedInformationTypes>
<ns2:InfoTypeId>?</ns2:InfoTypeId>
<ns2:InfoTypeDescription>?</ns2:InfoTypeDescription>
</ns2:ExcludedInformationTypes>
<!-- Optional -->
<!-- Array -->
<ns2:TemporaryRevokes>
<ns2:TemporaryRevokeId>?</ns2:TemporaryRevokeId>
<ns2:EndDate>?</ns2:EndDate>
<ns2:RevokedForCareUnitId>?</ns2:RevokedForCareUnitId>
<!-- Optional -->
<ns2:RevokedForEmployeeId>?</ns2:RevokedForEmployeeId>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:TemporaryRevokes>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:Blocks>
<ns2:NextCreatedOnOrAfter>?</ns2:NextCreatedOnOrAfter>
<ns2:LatestCancellation>?</ns2:LatestCancellation>
</ns0:GetAllBlocks>
</ns0:GetAllBlocksResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetAllBlocksInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetAllBlocksInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [GetAllBlocksResponder_2.0.xsd](files/schema/GetAllBlocksResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getallblocks](StructureDefinition-getallblocks.html)
* **Logisk modell (request):** [StructureDefinition/getallblocks-request](StructureDefinition-getallblocks-request.html)

---

### GetAllBlocksForPatient

_Avsnitt 7.2 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som läser alla nationellt kända/lagrade spärrar för en viss patient, samt för viss organisation eller oavsett organisation. Endast aktiva och giltiga spärrar returneras. Varje spärr innehåller också eventuella tillfälliga hävningar, om aktiva sådana finns. Övrig funktionalitet är densamma som för GetAllBlocks.
Tjänsten realiseras på lokal och nationell nivå.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. / Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag kan returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | blocking:PersonIdValue | Patientens personnummer eller samordningsnummer vars spärrar skall hämtas. | 1..1 |
| careProviderIds | blocking:HsaId | Ej obligatorisk lista med HSA-id på de vårdgivare vars spärrar skall hämtas. Om detta utelämnas hämtas alla spärrar oavsett organisationstillhörighet. | 0..* |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |  |  |  |
| getAllBlocksForPatient | blocking:BlockHeader | Lista över funna spärrar som är aktiva för angiven patient. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till tjänsten. Om behörighet saknas, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
GetAllBlocksForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetAllBlocksForPatientRequest xmlns:ns0="urn:riv:ehr:blocking:querying:GetAllBlocksForPatientResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2">
<ns0:PatientId>?</ns0:PatientId>
<!-- Optional -->
<!-- Array -->
<ns0:CareProviderIds>?</ns0:CareProviderIds>
<!-- Optional -->
<ns0:CreatedOnOrAfter>?</ns0:CreatedOnOrAfter>
</ns0:GetAllBlocksForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetAllBlocksForPatientResponse xmlns:ns0="urn:riv:ehr:blocking:querying:GetAllBlocksForPatientResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:GetAllBlocksForPatient>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<!-- Optional -->
<!-- Array -->
<ns2:Blocks>
<ns2:BlockId>?</ns2:BlockId>
<ns2:BlockType>?</ns2:BlockType>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:InformationStartDate>?</ns2:InformationStartDate>
<!-- Optional -->
<ns2:InformationEndDate>?</ns2:InformationEndDate>
<!-- Optional -->
<ns2:InformationCareUnitId>?</ns2:InformationCareUnitId>
<ns2:InformationCareProviderId>?</ns2:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns2:ExcludedInformationTypes>
<ns2:InfoTypeId>?</ns2:InfoTypeId>
<ns2:InfoTypeDescription>?</ns2:InfoTypeDescription>
</ns2:ExcludedInformationTypes>
<!-- Optional -->
<!-- Array -->
<ns2:TemporaryRevokes>
<ns2:TemporaryRevokeId>?</ns2:TemporaryRevokeId>
<ns2:EndDate>?</ns2:EndDate>
<ns2:RevokedForCareUnitId>?</ns2:RevokedForCareUnitId>
<!-- Optional -->
<ns2:RevokedForEmployeeId>?</ns2:RevokedForEmployeeId>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:TemporaryRevokes>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:Blocks>
<ns2:NextCreatedOnOrAfter>?</ns2:NextCreatedOnOrAfter>
<ns2:LatestCancellation>?</ns2:LatestCancellation>
</ns0:GetAllBlocksForPatient>
</ns0:GetAllBlocksForPatientResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetAllBlocksForPatientInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetAllBlocksForPatientInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [GetAllBlocksForPatientResponder_2.0.xsd](files/schema/GetAllBlocksForPatientResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getallblocksforpatient](StructureDefinition-getallblocksforpatient.html)
* **Logisk modell (request):** [StructureDefinition/getallblocksforpatient-request](StructureDefinition-getallblocksforpatient-request.html)

---

### GetPatientIds

_Avsnitt 7.3 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som läser alla patienter med minst en aktivt spärr för en viss organisation. Endast en distinkt lista med unika patienter returneras.
Konsumerande system anger vilken vårdgivare som ska omfattas av sökningen.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras, på den lokala respektive nationella nivån. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | blocking:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| Svar |  |  |  |
| getPatientIds | administration:GetPatientIdResult | Lista över unika patienter som har aktiva spärrar. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som hämtningen avser. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
GetPatientIds

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetPatientIdsRequest xmlns:ns0="urn:riv:ehr:blocking:administration:GetPatientIdsResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2">
<ns0:CareProviderId>?</ns0:CareProviderId>
</ns0:GetPatientIdsRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetPatientIdsResponse xmlns:ns0="urn:riv:ehr:blocking:administration:GetPatientIdsResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:GetPatientIds>
<ns1:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns1:Result>
<!-- Optional -->
<!-- Array -->
<ns1:PatientIds>?</ns1:PatientIds>
</ns0:GetPatientIds>
</ns0:GetPatientIdsResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetPatientIdsInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetPatientIdsInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [GetPatientIdsResponder_2.0.xsd](files/schema/GetPatientIdsResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getpatientids](StructureDefinition-getpatientids.html)
* **Logisk modell (request):** [StructureDefinition/getpatientids-request](StructureDefinition-getpatientids-request.html)

---

### GetBlocks

_Avsnitt 7.4 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som läser alla registrerade spärrar för en viss organisation. Endast aktiva spärrar returneras (ej makulerade eller permanent hävda). Varje spärr kompletteras också med aktiva tillfälliga hävningar om sådana finns.
Konsumerande system anger vilken vårdgivare som skall omfattas av sökningen.
Det går även att ange ett datum (CreatedOnOrAfter) från när man önskar inhämta nyare uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Detta inkluderar även tillfälliga hävningar som skett efter angivet datum. Här avses datum då spärruppgiften lagrades i tjänsten.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag kan returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | blocking:HsaId | HSA-id på de vårdgivare vars spärrar skall hämtas. | 1..1 |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |  |  |  |
| getBlocks | blocking:BlockHeader | Lista över funna spärrar som är aktiva. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som hämtningen avser. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
GetBlocks

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetBlocksRequest xmlns:ns0="urn:riv:ehr:blocking:querying:GetBlocksResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2">
<ns0:CareProviderId>?</ns0:CareProviderId>
<!-- Optional -->
<ns0:CreatedOnOrAfter>?</ns0:CreatedOnOrAfter>
</ns0:GetBlocksRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetBlocksResponse xmlns:ns0="urn:riv:ehr:blocking:querying:GetBlocksResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:GetBlocks>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<!-- Optional -->
<!-- Array -->
<ns2:Blocks>
<ns2:BlockId>?</ns2:BlockId>
<ns2:BlockType>?</ns2:BlockType>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:InformationStartDate>?</ns2:InformationStartDate>
<!-- Optional -->
<ns2:InformationEndDate>?</ns2:InformationEndDate>
<!-- Optional -->
<ns2:InformationCareUnitId>?</ns2:InformationCareUnitId>
<ns2:InformationCareProviderId>?</ns2:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns2:ExcludedInformationTypes>
<ns2:InfoTypeId>?</ns2:InfoTypeId>
<ns2:InfoTypeDescription>?</ns2:InfoTypeDescription>
</ns2:ExcludedInformationTypes>
<!-- Optional -->
<!-- Array -->
<ns2:TemporaryRevokes>
<ns2:TemporaryRevokeId>?</ns2:TemporaryRevokeId>
<ns2:EndDate>?</ns2:EndDate>
<ns2:RevokedForCareUnitId>?</ns2:RevokedForCareUnitId>
<!-- Optional -->
<ns2:RevokedForEmployeeId>?</ns2:RevokedForEmployeeId>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:TemporaryRevokes>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:Blocks>
<ns2:NextCreatedOnOrAfter>?</ns2:NextCreatedOnOrAfter>
<ns2:LatestCancellation>?</ns2:LatestCancellation>
</ns0:GetBlocks>
</ns0:GetBlocksResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetBlocksInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetBlocksInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [GetBlocksResponder_2.0.xsd](files/schema/GetBlocksResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getblocks](StructureDefinition-getblocks.html)
* **Logisk modell (request):** [StructureDefinition/getblocks-request](StructureDefinition-getblocks-request.html)

---

### GetBlocksForPatient

_Avsnitt 7.5 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som läser alla spärrar för en viss patient, samt för viss organisation. Endast aktiva och giltiga spärrar returneras. Varje spärr innehåller också eventuella tillfälliga hävningar, om aktiva sådana finns. Övrig funktionalitet är densamma som för GetAllBlocks.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. / Det skall i så fall kunna konfigureras i tjänsten hur länge underlag får sparas, vilket då anges i SLA. Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag kan returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | blocking:PersonIdValue | Patientens personnummer eller samordningsnummer vars spärrar skall hämtas. | 1..1 |
| careProviderId | blocking:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |  |  |  |
| getBlocksForPatient | blocking:BlockHeader | Lista över funna spärrar som är aktiva för angiven patient. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som hämtningen avser. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
GetBlocksForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetBlocksForPatientRequest xmlns:ns0="urn:riv:ehr:blocking:querying:GetBlocksForPatientResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2">
<ns0:PatientId>?</ns0:PatientId>
<ns0:CareProviderId>?</ns0:CareProviderId>
<!-- Optional -->
<ns0:CreatedOnOrAfter>?</ns0:CreatedOnOrAfter>
</ns0:GetBlocksForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetBlocksForPatientResponse xmlns:ns0="urn:riv:ehr:blocking:querying:GetBlocksForPatientResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:GetBlocksForPatient>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<!-- Optional -->
<!-- Array -->
<ns2:Blocks>
<ns2:BlockId>?</ns2:BlockId>
<ns2:BlockType>?</ns2:BlockType>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:InformationStartDate>?</ns2:InformationStartDate>
<!-- Optional -->
<ns2:InformationEndDate>?</ns2:InformationEndDate>
<!-- Optional -->
<ns2:InformationCareUnitId>?</ns2:InformationCareUnitId>
<ns2:InformationCareProviderId>?</ns2:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns2:ExcludedInformationTypes>
<ns2:InfoTypeId>?</ns2:InfoTypeId>
<ns2:InfoTypeDescription>?</ns2:InfoTypeDescription>
</ns2:ExcludedInformationTypes>
<!-- Optional -->
<!-- Array -->
<ns2:TemporaryRevokes>
<ns2:TemporaryRevokeId>?</ns2:TemporaryRevokeId>
<ns2:EndDate>?</ns2:EndDate>
<ns2:RevokedForCareUnitId>?</ns2:RevokedForCareUnitId>
<!-- Optional -->
<ns2:RevokedForEmployeeId>?</ns2:RevokedForEmployeeId>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:TemporaryRevokes>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:Blocks>
<ns2:NextCreatedOnOrAfter>?</ns2:NextCreatedOnOrAfter>
<ns2:LatestCancellation>?</ns2:LatestCancellation>
</ns0:GetBlocksForPatient>
</ns0:GetBlocksForPatientResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetBlocksForPatientInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetBlocksForPatientInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [GetBlocksForPatientResponder_2.0.xsd](files/schema/GetBlocksForPatientResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getblocksforpatient](StructureDefinition-getblocksforpatient.html)
* **Logisk modell (request):** [StructureDefinition/getblocksforpatient-request](StructureDefinition-getblocksforpatient-request.html)

---

### GetExtendedBlocksForPatient

_Avsnitt 7.6 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som läser alla spärrar för en viss patient och organisation. Varje spärr innehåller också tillfälliga hävningar om sådana finns.
Tjänsten returnerar även makulerade och permanent hävda spärrar, samt tidigare gjorda tillfälliga hävningar, för att ge ett historikunderlag (vad som har hänt med patientens spärrar tidigare).
Tjänsten används för att på lokal nivå kunna söka fram och administrera patientens spärrar och dess eventuella tillfälliga hävningar för en viss vårdgivare.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | blocking:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| patientId | blocking:PersonIdValue | Personnummer på patienten vars spärrar skall hämtas. | 1..1 |
| Svar |  |  |  |
| getExtendedBlocksForPatient | administration:GetExtendedBlocksResult | Svaret består av en spärrlista enligt det utökade, lokala spärrformatet. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
GetExtendedBlocksForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetExtendedBlocksForPatientRequest xmlns:ns0="urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatientResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:PatientId>?</ns0:PatientId>
</ns0:GetExtendedBlocksForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetExtendedBlocksForPatientResponse xmlns:ns0="urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatientResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:GetExtendedBlocksForPatient>
<ns1:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns1:Result>
<!-- Optional -->
<!-- Array -->
<ns1:Blocks>
<ns1:BlockId>?</ns1:BlockId>
<ns1:BlockType>?</ns1:BlockType>
<ns1:PatientId>?</ns1:PatientId>
<!-- Optional -->
<ns1:InformationStartDate>?</ns1:InformationStartDate>
<!-- Optional -->
<ns1:InformationEndDate>?</ns1:InformationEndDate>
<!-- Optional -->
<ns1:InformationCareUnitId>?</ns1:InformationCareUnitId>
<ns1:InformationCareProviderId>?</ns1:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns1:ExcludedInformationTypes>
<ns2:InfoTypeId>?</ns2:InfoTypeId>
<ns2:InfoTypeDescription>?</ns2:InfoTypeDescription>
</ns1:ExcludedInformationTypes>
<ns1:RegistrationInfo>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns1:RegistrationInfo>
<!-- Optional -->
<ns1:PermanentRevokedInfo>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns1:PermanentRevokedInfo>
<!-- Optional -->
<ns1:DeletionInfo>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns1:DeletionInfo>
<!-- Optional -->
<!-- Array -->
<ns1:TemporaryRevokes>
<ns1:TemporaryRevokeId>?</ns1:TemporaryRevokeId>
<ns1:EndDate>?</ns1:EndDate>
<ns1:RevokedForCareUnitId>?</ns1:RevokedForCareUnitId>
<!-- Optional -->
<ns1:RevokedForEmployeeId>?</ns1:RevokedForEmployeeId>
<!-- Optional -->
<ns1:RevocationReason>?</ns1:RevocationReason>
<!-- Optional -->
<ns1:RevocationReasonText>?</ns1:RevocationReasonText>
<ns1:RegistrationInfo>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns1:RegistrationInfo>
<!-- Optional -->
<ns1:CancellationInfo>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns1:CancellationInfo>
<!-- Optional -->
<ns1:OwnerId>?</ns1:OwnerId>
</ns1:TemporaryRevokes>
<!-- Optional -->
<ns1:OwnerId>?</ns1:OwnerId>
<ns1:LocallyCreated>?</ns1:LocallyCreated>
</ns1:Blocks>
</ns0:GetExtendedBlocksForPatient>
</ns0:GetExtendedBlocksForPatientResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetExtendedBlocksForPatientInteraction_2.0_RIVTABP21.wsdl](files/wsdl/GetExtendedBlocksForPatientInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [GetExtendedBlocksForPatientResponder_2.0.xsd](files/schema/GetExtendedBlocksForPatientResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getextendedblocksforpatient](StructureDefinition-getextendedblocksforpatient.html)
* **Logisk modell (request):** [StructureDefinition/getextendedblocksforpatient-request](StructureDefinition-getextendedblocksforpatient-request.html)

---

### CheckBlocks

_Avsnitt 7.7 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som kontrollerar om given information är spärrad eller inte. Den utvärderar alla spärrar som finns i tjänsten och om någon spärr är helt applicerbar för given information och tillfälle kommer tjänsten att markera den informationen som spärrad.
Om det finns minst en tillfällig hävning för spärren som applicerar på den angivna aktören blir informationen ospärrad.
Denna tjänst kan användas då tjänstekonsumenten inte själv kan avgöra/kontrollera om information är spärrad eller inte. Tjänsten stödjer kontroll av flertal informationsmängder i ett och samma anrop.
Evalueringen av huruvida informationen är spärrad eller ej görs enligt följande:
- Om spärr föreligger (inre eller yttre) blir informationen spärrad.
- Om undantag av spärr för 'lak' och/eller 'upp' har angivets blir denna informationen EJ spärrad.
- Om spärren inte innehåller någon giltighetstid blir informationen spärrad.
- Om tidsspannet för informationen ligger inom spärrens giltighetstid blir informationen spärrad.
- Om spärrens giltighetstid delvis överlappar tidsspannet (start- eller sluttid) för informationen blir informationen spärrad.
- Om tidsspannet för informationen ligger helt utanför spärrens giltighetstid blir informationen EJ spärrad.
Tjänsten realiseras både på lokal och nationell nivå.
Tjänster på nationell nivå kräver ett komplett spärrunderlag.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
3.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att utföra en kontroll om spärr föreligger på de senast registrerade spärruppgifterna i spärrtjänsten på lokal respektive nationell nivå. / Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag finns tillgängligt. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| accessingActor | blocking.accesscontrol:AccessingActor | Representerar den aktör/person som önskar åtkomst till informationen. | 1..1 |
| patientId | blocking.accesscontrol:PersonIdValue | Personnummer på patienten vars information aktören önskar åtkomst till. | 1..1 |
| informationEntities | blocking.accesscontrol:InformationEntity | Lista över de informationsentiteter som aktören önskar åtkomst till. | 1..* |
| Svar |  |  |  |
| checkBlocks | blocking.accesscontrol:CheckBlocksResult | Lista med resultat motsvarande den informationslista som angavs som inparameter. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera att tjänstekonsumenten har behörighet till tjänsten. Om behörighet saknas, nekas anropet (med tillhörande felkod ACCESSDENIED).
Parametrar till tjänsten skall valideras och resultera i resultkoden VALIDATIONERROR om dessa är felaktiga. Informationsresurser och dess fält skall valideras och hanteras separat. Ogiltiga eller felaktiga fält i informationsresursen skall resultera i VALIDATIONERROR på resursnivå, dvs felkoden ges per informationsresurs i CheckBlocksResult med CheckStatus.
Om någon informationsresurs får valideringsfel skall tjänsten returnera koden INFO med meddelandet "Informationsresurs(er) innehåller valideringsfel".
Tjänsten skall hantera valfria informationstyper samt tomma/icke existerande värden.
Alla andra värden än de definierade i kontraktet hanteras som en uppgift av ospecificerad typ i den kontroll som tjänsten utför.

### Tjänsteinteraktion
CheckBlocks

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:CheckBlocksRequest xmlns:ns0="urn:riv:ehr:blocking:accesscontrol:CheckBlocksResponder:3" xmlns:ns1="urn:riv:ehr:blocking:accesscontrol:3">
<ns0:AccessingActor>
<ns1:EmployeeId>?</ns1:EmployeeId>
<ns1:CareProviderId>?</ns1:CareProviderId>
<ns1:CareUnitId>?</ns1:CareUnitId>
</ns0:AccessingActor>
<ns0:PatientId>?</ns0:PatientId>
<!-- Array -->
<ns0:InformationEntities>
<ns1:InformationStartDate>?</ns1:InformationStartDate>
<ns1:InformationEndDate>?</ns1:InformationEndDate>
<ns1:InformationCareUnitId>?</ns1:InformationCareUnitId>
<ns1:InformationCareProviderId>?</ns1:InformationCareProviderId>
<!-- Optional -->
<ns1:InformationType>?</ns1:InformationType>
<ns1:RowNumber>?</ns1:RowNumber>
</ns0:InformationEntities>
</ns0:CheckBlocksRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:CheckBlocksResponse xmlns:ns0="urn:riv:ehr:blocking:accesscontrol:CheckBlocksResponder:3" xmlns:ns1="urn:riv:ehr:blocking:accesscontrol:3">
<ns0:CheckBlocks>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
</ns1:Result>
<!-- Optional -->
<!-- Array -->
<ns1:CheckResults>
<ns1:Status>?</ns1:Status>
<ns1:RowNumber>?</ns1:RowNumber>
</ns1:CheckResults>
</ns0:CheckBlocks>
</ns0:CheckBlocksResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [CheckBlocksInteraction_3.0_RIVTABP21.wsdl](files/wsdl/CheckBlocksInteraction_3.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [CheckBlocksResponder_3.0.xsd](files/schema/CheckBlocksResponder_3.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/checkblocks](StructureDefinition-checkblocks.html)
* **Logisk modell (request):** [StructureDefinition/checkblocks-request](StructureDefinition-checkblocks-request.html)

---

### RegisterBlock

_Avsnitt 7.8 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som registrerar en ny spärr i den nationella spärrtjänsten.
En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen.
Informationstyperna lak och upp kan undantas från spärren. Om detta sker blir dessa informationstyper ej spärrade.
Tjänsten används för att synkronisera en lokal spärr till den nationella spärrtjänsten.
Tjänsten realiseras på nationell nivå.

### Frivillighet
Obligatorisk för både tjänsteproducent och tjänstekonsument (lokal spärrtjänst).

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex getallblocks). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | blocking:Id | Unik, global identifierare för spärren. Anropande system ansvarar för att generera id:et. | 1..1 |
| blockType | blocking:BlockType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1..1 |
| patientId | blocking:PersonIdValue | Patientens personnummer, 12 tecken. | 1..1 |
| informationStartDate | xs:dateTime | Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:dateTime | Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | blocking:HsaId | Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för. | 0..1 |
| informationCareProviderId | blocking:HsaId | Obligatoriskt HSA-id för den vårdgivare spärren gäller för. | 1..1 |
| excludedInformationTypes | blocking:InformationTypeIdValue | Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'. | 0..* |
| temporaryRevokeRegistration | blocking:TemporaryRevokeRegistration | Ej obligatorisk lista med tillfälliga hävningar. Detta möjliggör registrering/överföring av en spärr och tillhörande hävningar på en och samma gång. Denna lista lämnas tom i normalfallet. | 0..* |
| Svar |  |  |  |
| registerBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om åtkomst saknas till angiven vårdgivare skall ett fel returneras och flödet avbryts.

### Tjänsteinteraktion
RegisterBlock

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:RegisterBlockRequest xmlns:ns0="urn:riv:ehr:blocking:synchronization:RegisterBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:BlockId>?</ns0:BlockId>
<ns0:BlockType>?</ns0:BlockType>
<ns0:PatientId>?</ns0:PatientId>
<!-- Optional -->
<ns0:InformationStartDate>?</ns0:InformationStartDate>
<!-- Optional -->
<ns0:InformationEndDate>?</ns0:InformationEndDate>
<!-- Optional -->
<ns0:InformationCareUnitId>?</ns0:InformationCareUnitId>
<ns0:InformationCareProviderId>?</ns0:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns0:ExcludedInformationTypes>?</ns0:ExcludedInformationTypes>
<!-- Optional -->
<!-- Array -->
<ns0:TemporaryRevokeRegistration>
<ns2:TemporaryRevokeId>?</ns2:TemporaryRevokeId>
<ns2:BlockId>?</ns2:BlockId>
<ns2:EndDate>?</ns2:EndDate>
<ns2:RevokedForCareUnitId>?</ns2:RevokedForCareUnitId>
<!-- Optional -->
<ns2:RevokedForEmployeeId>?</ns2:RevokedForEmployeeId>
</ns0:TemporaryRevokeRegistration>
</ns0:RegisterBlockRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:RegisterBlockResponse xmlns:ns0="urn:riv:ehr:blocking:synchronization:RegisterBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:RegisterBlock>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:RegisterBlock>
</ns0:RegisterBlockResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [RegisterBlockInteraction_2.0_RIVTABP21.wsdl](files/wsdl/RegisterBlockInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [RegisterBlockResponder_2.0.xsd](files/schema/RegisterBlockResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/registerblock](StructureDefinition-registerblock.html)
* **Logisk modell (request):** [StructureDefinition/registerblock-request](StructureDefinition-registerblock-request.html)

---

### UnregisterBlock

_Avsnitt 7.9 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som avregistrerar/raderar en befintlig spärr i den nationella spärrtjänsten, om spärren finns.
Tjänsten används för att synkronisera borttag av en lokal spärr till den nationella spärrtjänsten.
Tjänsten realiseras på nationell nivå.

### Frivillighet
Obligatorisk för både tjänsteproducent och tjänstekonsument (lokal spärrtjänst).

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att borttag av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex getallblocks). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | blocking:Id | Unik, global identifierare för spärren. | 1..1 |
| Svar |  |  |  |
| unregisterBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om åtkomst saknas till angiven spärrs vårdgivare skall ett fel returneras och flödet avbryts.

### Tjänsteinteraktion
UnregisterBlock

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:UnregisterBlockRequest xmlns:ns0="urn:riv:ehr:blocking:synchronization:UnregisterBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2">
<ns0:BlockId>?</ns0:BlockId>
</ns0:UnregisterBlockRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:UnregisterBlockResponse xmlns:ns0="urn:riv:ehr:blocking:synchronization:UnregisterBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:UnregisterBlock>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:UnregisterBlock>
</ns0:UnregisterBlockResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [UnregisterBlockInteraction_2.0_RIVTABP21.wsdl](files/wsdl/UnregisterBlockInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [UnregisterBlockResponder_2.0.xsd](files/schema/UnregisterBlockResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/unregisterblock](StructureDefinition-unregisterblock.html)
* **Logisk modell (request):** [StructureDefinition/unregisterblock-request](StructureDefinition-unregisterblock-request.html)

---

### RegisterTemporaryRevoke

_Avsnitt 7.10 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som registrerar en tillfällig hävning för en given spärr i den nationella spärrtjänsten, om spärren finns.
Tjänsten används för att synkronisera en lokal tillfällig hävning till den nationella spärrtjänsten.
Tjänsten realiseras på nationell nivå.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av hävningen skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex getallblocks). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeRegistration | blocking:TemporaryRevokeRegistration | Registreringsuppgifter för tillfällig hävning. | 1..1 |
| Svar |  |  |  |
| registerTemporaryRevoke | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om åtkomst saknas till angiven spärrs vårdgivare skall ett fel returneras och flödet avbryts.

### Tjänsteinteraktion
RegisterTemporaryRevoke

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:RegisterTemporaryRevokeRequest xmlns:ns0="urn:riv:ehr:blocking:synchronization:RegisterTemporaryRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:TemporaryRevokeRegistration>
<ns2:TemporaryRevokeId>?</ns2:TemporaryRevokeId>
<ns2:BlockId>?</ns2:BlockId>
<ns2:EndDate>?</ns2:EndDate>
<ns2:RevokedForCareUnitId>?</ns2:RevokedForCareUnitId>
<!-- Optional -->
<ns2:RevokedForEmployeeId>?</ns2:RevokedForEmployeeId>
</ns0:TemporaryRevokeRegistration>
</ns0:RegisterTemporaryRevokeRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:RegisterTemporaryRevokeResponse xmlns:ns0="urn:riv:ehr:blocking:synchronization:RegisterTemporaryRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:RegisterTemporaryRevoke>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:RegisterTemporaryRevoke>
</ns0:RegisterTemporaryRevokeResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [RegisterTemporaryRevokeInteraction_2.0_RIVTABP21.wsdl](files/wsdl/RegisterTemporaryRevokeInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [RegisterTemporaryRevokeResponder_2.0.xsd](files/schema/RegisterTemporaryRevokeResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/registertemporaryrevoke](StructureDefinition-registertemporaryrevoke.html)
* **Logisk modell (request):** [StructureDefinition/registertemporaryrevoke-request](StructureDefinition-registertemporaryrevoke-request.html)

---

### UnregisterTemporaryRevoke

_Avsnitt 7.11 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som avregistrerar/raderar en tillfällig hävning i den nationella spärrtjänsten, om hävningen finns.
Tjänsten används för att synkronisera borttag av en lokal tillfällig hävning till den nationella spärrtjänsten.
Tjänsten realiseras på nationell nivå.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att borttag av hävningen skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex getallblocks). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeId | blocking:Id | Identifierare för den tillfälliga hävning som skall raderas. | 1..1 |
| Svar |  |  |  |
| unregisterTemporaryRevoke | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om åtkomst saknas till angiven spärrs vårdgivare skall ett fel returneras och flödet avbryts.

### Tjänsteinteraktion
UnregisterTemporaryRevoke

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:UnregisterTemporaryRevokeRequest xmlns:ns0="urn:riv:ehr:blocking:synchronization:UnregisterTemporaryRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2">
<ns0:TemporaryRevokeId>?</ns0:TemporaryRevokeId>
</ns0:UnregisterTemporaryRevokeRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:UnregisterTemporaryRevokeResponse xmlns:ns0="urn:riv:ehr:blocking:synchronization:UnregisterTemporaryRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:UnregisterTemporaryRevoke>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:UnregisterTemporaryRevoke>
</ns0:UnregisterTemporaryRevokeResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [UnregisterTemporaryRevokeInteraction_2.0_RIVTABP21.wsdl](files/wsdl/UnregisterTemporaryRevokeInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [UnregisterTemporaryRevokeResponder_2.0.xsd](files/schema/UnregisterTemporaryRevokeResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/unregistertemporaryrevoke](StructureDefinition-unregistertemporaryrevoke.html)
* **Logisk modell (request):** [StructureDefinition/unregistertemporaryrevoke-request](StructureDefinition-unregistertemporaryrevoke-request.html)

---

### RegisterExtendedBlock

_Avsnitt 7.12 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som registrerar en ny spärr för en viss patient och inom en viss vårdgivare i den lokala spärrtjänsten.
En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen.
Informationstyperna lak och upp kan undantas från spärren. Om detta sker blir dessa informationstyper ej spärrade.
Kräver utökad spärrinformation med metainformation kring skapande av spärren.
Tjänsten registrerar även grunddata om spärren på nationell nivå.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av spärren skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av spärren skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | blocking:Id | Unik, global identifierare för spärren. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| blockType | blocking:BlockType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1..1 |
| patientId | blocking:PersonIdValue | Patientens personnummer, 12 tecken. | 1..1 |
| informationStartDate | xs:dateTime | Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:dateTime | Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | blocking:HsaId | Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för. | 0..1 |
| informationCareProviderId | blocking:HsaId | Obligatoriskt HSA-id för den vårdgivare spärren gäller för. | 1..1 |
| excludedInformationTypes | blocking:InformationTypeIdValue | Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'. | 0..* |
| registerAction | blocking:Action | Identifierar de personer som begärt och registrerat spärren samt tidpunkter för dessa. | 1..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| registerExtendedBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
RegisterExtendedBlock

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:RegisterExtendedBlockRequest xmlns:ns0="urn:riv:ehr:blocking:administration:RegisterExtendedBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:BlockId>?</ns0:BlockId>
<ns0:BlockType>?</ns0:BlockType>
<ns0:PatientId>?</ns0:PatientId>
<!-- Optional -->
<ns0:InformationStartDate>?</ns0:InformationStartDate>
<!-- Optional -->
<ns0:InformationEndDate>?</ns0:InformationEndDate>
<!-- Optional -->
<ns0:InformationCareUnitId>?</ns0:InformationCareUnitId>
<ns0:InformationCareProviderId>?</ns0:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns0:ExcludedInformationTypes>?</ns0:ExcludedInformationTypes>
<ns0:RegisterAction>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns0:RegisterAction>
<ns0:ReplicationTimeout>?</ns0:ReplicationTimeout>
</ns0:RegisterExtendedBlockRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:RegisterExtendedBlockResponse xmlns:ns0="urn:riv:ehr:blocking:administration:RegisterExtendedBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:RegisterExtendedBlock>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:RegisterExtendedBlock>
</ns0:RegisterExtendedBlockResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [RegisterExtendedBlockInteraction_2.0_RIVTABP21.wsdl](files/wsdl/RegisterExtendedBlockInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [RegisterExtendedBlockResponder_2.0.xsd](files/schema/RegisterExtendedBlockResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/registerextendedblock](StructureDefinition-registerextendedblock.html)
* **Logisk modell (request):** [StructureDefinition/registerextendedblock-request](StructureDefinition-registerextendedblock-request.html)

---

### RevokeExtendedBlock

_Avsnitt 7.13 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som häver en spärr permanent i den lokala spärrtjänsten, om spärren finns. Denna hävning kan inte återtas.
Tjänsten avregistrerar även spärren på nationell nivå.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av hävningen skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av hävningen skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | blocking:Id | Unik, global identifierare för spärren. | 1..1 |
| revokeAction | blocking:Action | Identifierar de personer som begärt och permanent hävt spärren samt tidpunkter för dessa. | 1..1 |
| revokeReasonText | blocking:ReasonText | Orsaken till den permanenta hävningen. | 0..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| revokeExtendedBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
RevokeExtendedBlock

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:RevokeExtendedBlockRequest xmlns:ns0="urn:riv:ehr:blocking:administration:RevokeExtendedBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:BlockId>?</ns0:BlockId>
<ns0:RevokeAction>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns0:RevokeAction>
<!-- Optional -->
<ns0:RevokeReasonText>?</ns0:RevokeReasonText>
<ns0:ReplicationTimeout>?</ns0:ReplicationTimeout>
</ns0:RevokeExtendedBlockRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:RevokeExtendedBlockResponse xmlns:ns0="urn:riv:ehr:blocking:administration:RevokeExtendedBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:RevokeExtendedBlock>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:RevokeExtendedBlock>
</ns0:RevokeExtendedBlockResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [RevokeExtendedBlockInteraction_2.0_RIVTABP21.wsdl](files/wsdl/RevokeExtendedBlockInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [RevokeExtendedBlockResponder_2.0.xsd](files/schema/RevokeExtendedBlockResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/revokeextendedblock](StructureDefinition-revokeextendedblock.html)
* **Logisk modell (request):** [StructureDefinition/revokeextendedblock-request](StructureDefinition-revokeextendedblock-request.html)

---

### DeleteExtendedBlock

_Avsnitt 7.14 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som makulerar en befintlig spärr i den lokala spärrtjänsten, om spärren finns. Spärren raderas inte från lokal spärrtjänst utan markeras som makulerad (ej längre giltig) för historikens skull. Denna makulering kan inte återtas.
Tjänsten avregistrerar även spärren på nationell nivå.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att makulering skett då anropet genomförts utan fel. / Tjänsten garanterar även att makulering skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | blocking:Id | Identifierare för den spärr som skall makuleras. | 1..1 |
| deleteAction | blocking:Action | Identifierar de personer som begärt och makulerat spärren samt tidpunkter för dessa. | 1..1 |
| deleteReasonText | blocking:ReasonText | Ej obligatorisk, kompletterande text för orsak till makuleringen. | 0..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| deleteExtendedBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
DeleteExtendedBlock

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:DeleteExtendedBlockRequest xmlns:ns0="urn:riv:ehr:blocking:administration:DeleteExtendedBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:BlockId>?</ns0:BlockId>
<ns0:DeleteAction>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns0:DeleteAction>
<!-- Optional -->
<ns0:DeleteReasonText>?</ns0:DeleteReasonText>
<ns0:ReplicationTimeout>?</ns0:ReplicationTimeout>
</ns0:DeleteExtendedBlockRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:DeleteExtendedBlockResponse xmlns:ns0="urn:riv:ehr:blocking:administration:DeleteExtendedBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:DeleteExtendedBlock>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:DeleteExtendedBlock>
</ns0:DeleteExtendedBlockResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [DeleteExtendedBlockInteraction_2.0_RIVTABP21.wsdl](files/wsdl/DeleteExtendedBlockInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [DeleteExtendedBlockResponder_2.0.xsd](files/schema/DeleteExtendedBlockResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/deleteextendedblock](StructureDefinition-deleteextendedblock.html)
* **Logisk modell (request):** [StructureDefinition/deleteextendedblock-request](StructureDefinition-deleteextendedblock-request.html)

---

### RegisterTemporaryExtendedRevoke

_Avsnitt 7.15 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som häver en spärr tillfälligt i den lokala spärrtjänsten, om spärren finns. En spärr kan ha flera tillfälliga hävningar (gällande olika personal).
Tjänsten registrerar även den tillfälliga hävningen på nationell nivå.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av den tillfälliga hävningen skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av den tillfälliga hävningen skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeId | blocking:Id | Unik, global identifierare för den tillfälliga hävningen. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| blockId | blocking:Id | Identifierare för den spärr som skall tillfälligt hävas. | 1..1 |
| endDate | xs:dateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1..1 |
| revokedForCareUnitId | blocking:HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1..1 |
| revokedForEmployeeId | blocking:HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en medarbetare/person, annars gäller hävningen för all behörig personal på vårdenheten. | 0..1 |
| registerAction | blocking:Action | Identifierar de personer som begärt och registrerat den tillfälliga hävningen samt tidpunkter för dessa. | 1..1 |
| revokeReason | blocking:TemporaryRevokeReason | Enumerationsvärde för orsak till tillfällig hävning. | 1..1 |
| revokeReasonText | blocking:ReasonText | Obligatorisk, kompletterande text för orsak till tillfällig hävning. | 0..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| registerTemporaryExtendedRevoke | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
RegisterTemporaryExtendedRevoke

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:RegisterTemporaryExtendedRevokeRequest xmlns:ns0="urn:riv:ehr:blocking:administration:RegisterTemporaryExtendedRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:TemporaryRevokeId>?</ns0:TemporaryRevokeId>
<ns0:BlockId>?</ns0:BlockId>
<ns0:EndDate>?</ns0:EndDate>
<ns0:RevokedForCareUnitId>?</ns0:RevokedForCareUnitId>
<!-- Optional -->
<ns0:RevokedForEmployeeId>?</ns0:RevokedForEmployeeId>
<ns0:RegisterAction>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns0:RegisterAction>
<ns0:RevokeReason>?</ns0:RevokeReason>
<!-- Optional -->
<ns0:RevokeReasonText>?</ns0:RevokeReasonText>
<ns0:ReplicationTimeout>?</ns0:ReplicationTimeout>
</ns0:RegisterTemporaryExtendedRevokeRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:RegisterTemporaryExtendedRevokeResponse xmlns:ns0="urn:riv:ehr:blocking:administration:RegisterTemporaryExtendedRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:RegisterTemporaryExtendedRevoke>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:RegisterTemporaryExtendedRevoke>
</ns0:RegisterTemporaryExtendedRevokeResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [RegisterTemporaryExtendedRevokeInteraction_2.0_RIVTABP21.wsdl](files/wsdl/RegisterTemporaryExtendedRevokeInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [RegisterTemporaryExtendedRevokeResponder_2.0.xsd](files/schema/RegisterTemporaryExtendedRevokeResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/registertemporaryextendedrevoke](StructureDefinition-registertemporaryextendedrevoke.html)
* **Logisk modell (request):** [StructureDefinition/registertemporaryextendedrevoke-request](StructureDefinition-registertemporaryextendedrevoke-request.html)

---

### CancelTemporaryExtendedRevoke

_Avsnitt 7.16 — Namnrymd: `urn:riv:ehr:blocking`_

Tjänst som återkallar en tillfällig hävning i den lokala spärrtjänsten, om den tillfälliga hävningen finns. Denna återkallning kan inte återtas.
Tjänsten avregistrerar även den tillfälliga hävningen på nationell nivå.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av återkallan skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av återkallan skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeId | blocking:Id | Identifierare för den tillfälliga hävning som skall återkallas. | 1..1 |
| cancellationInfo | blocking:Action | Identifierar de personer som begärt och hävt den tillfälliga hävningen samt tidpunkter för dessa. | 1..1 |
| cancelReasonText | blocking:ReasonText | Ej obligatorisk, kompletterande text för orsak till makuleringen. | 0..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| cancelTemporaryExtendedRevoke | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
CancelTemporaryExtendedRevoke

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:CancelTemporaryExtendedRevokeRequest xmlns:ns0="urn:riv:ehr:blocking:administration:CancelTemporaryExtendedRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:TemporaryRevokeId>?</ns0:TemporaryRevokeId>
<ns0:CancellationInfo>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns0:CancellationInfo>
<!-- Optional -->
<ns0:CancelReasonText>?</ns0:CancelReasonText>
<ns0:ReplicationTimeout>?</ns0:ReplicationTimeout>
</ns0:CancelTemporaryExtendedRevokeRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:CancelTemporaryExtendedRevokeResponse xmlns:ns0="urn:riv:ehr:blocking:administration:CancelTemporaryExtendedRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:CancelTemporaryExtendedRevoke>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:CancelTemporaryExtendedRevoke>
</ns0:CancelTemporaryExtendedRevokeResponse>

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [CancelTemporaryExtendedRevokeInteraction_2.0_RIVTABP21.wsdl](files/wsdl/CancelTemporaryExtendedRevokeInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_blocking_2.0.xsd](files/schema/ehr_blocking_2.0.xsd) | Domänschema (delat) |
| [ehr_administration_2.0.xsd](files/schema/ehr_administration_2.0.xsd) | Administrations-schema (delat) |
| [CancelTemporaryExtendedRevokeResponder_2.0.xsd](files/schema/CancelTemporaryExtendedRevokeResponder_2.0.xsd) | Tjänstespecifikt schema |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/canceltemporaryextendedrevoke](StructureDefinition-canceltemporaryextendedrevoke.html)
* **Logisk modell (request):** [StructureDefinition/canceltemporaryextendedrevoke-request](StructureDefinition-canceltemporaryextendedrevoke-request.html)

---

