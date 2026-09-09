# Artifacts Summary - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [CheckBlocks](StructureDefinition-checkblocks.md) | Logisk modell för tjänstekontraktet CheckBlocks (RIV-TA urn:riv:ehr:blocking:accesscontrol:CheckBlocksResponder:3). Kontrollerar om spärr finns relativ viss personal/vårdenhet och information. Version 3 validerar informationsresurserna separat och kan ge individuella felkoder per resurs. Representerar responsens informationsstruktur. |
| [CheckBlocks — Request](StructureDefinition-checkblocks-request.md) | Logisk modell för requestparametrar i CheckBlocks v3.0. |
| [DeleteExtendedBlock](StructureDefinition-deleteextendedblock.md) | Logisk modell för tjänstekontraktet DeleteExtendedBlock (RIV-TA urn:riv:ehr:blocking:administration:DeleteExtendedBlockResponder:2). Makulerar (tar bort) en spärr i lokal spärrtjänst. Representerar responsens informationsstruktur. |
| [DeleteExtendedBlock — Request](StructureDefinition-deleteextendedblock-request.md) | Logisk modell för requestparametrar i DeleteExtendedBlock. |
| [GetAllBlocks](StructureDefinition-getallblocks.md) | Logisk modell för tjänstekontraktet GetAllBlocks (RIV-TA urn:riv:ehr:blocking:querying:GetAllBlocksResponder:2). Läser alla nationellt kända/lagrade spärrar. Representerar responsens informationsstruktur. |
| [GetAllBlocks — Request](StructureDefinition-getallblocks-request.md) | Logisk modell för requestparametrar i GetAllBlocks. |
| [GetAllBlocksForPatient](StructureDefinition-getallblocksforpatient.md) | Logisk modell för tjänstekontraktet GetAllBlocksForPatient (RIV-TA urn:riv:ehr:blocking:querying:GetAllBlocksForPatientResponder:2). Läser alla nationellt kända/lagrade spärrar för en viss patient. Representerar responsens informationsstruktur. |
| [GetAllBlocksForPatient — Request](StructureDefinition-getallblocksforpatient-request.md) | Logisk modell för requestparametrar i GetAllBlocksForPatient. |
| [GetBlocks](StructureDefinition-getblocks.md) | Logisk modell för tjänstekontraktet GetBlocks (RIV-TA urn:riv:ehr:blocking:querying:GetBlocksResponder:2). Läser alla registrerade spärrar för en viss organisation (lokal nivå). Representerar responsens informationsstruktur. |
| [GetBlocks — Request](StructureDefinition-getblocks-request.md) | Logisk modell för requestparametrar i GetBlocks. |
| [GetBlocksForPatient](StructureDefinition-getblocksforpatient.md) | Logisk modell för tjänstekontraktet GetBlocksForPatient (RIV-TA urn:riv:ehr:blocking:querying:GetBlocksForPatientResponder:2). Läser alla spärrar för en viss patient och organisation (lokal nivå). Representerar responsens informationsstruktur. |
| [GetBlocksForPatient — Request](StructureDefinition-getblocksforpatient-request.md) | Logisk modell för requestparametrar i GetBlocksForPatient. |
| [GetExtendedBlocksForPatient](StructureDefinition-getextendedblockforpatient.md) | Logisk modell för tjänstekontraktet GetExtendedBlocksForPatient (RIV-TA urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatientResponder:2). Läser spärrar för en viss patient med utökad information inklusive aktörsinformation, historik och makulerade spärrar. Representerar responsens informationsstruktur. |
| [GetExtendedBlocksForPatient — Request](StructureDefinition-getextendedblockforpatient-request.md) | Logisk modell för requestparametrar i GetExtendedBlocksForPatient. |
| [GetPatientIds](StructureDefinition-getpatientids.md) | Logisk modell för tjänstekontraktet GetPatientIds (RIV-TA urn:riv:ehr:blocking:administration:GetPatientIdsResponder:2). Läser alla patienter med minst en aktiv spärr för en viss organisation. Representerar responsens informationsstruktur. |
| [GetPatientIds — Request](StructureDefinition-getpatientids-request.md) | Logisk modell för requestparametrar i GetPatientIds. |
| [RegisterBlock](StructureDefinition-registerblock.md) | Logisk modell för tjänstekontraktet RegisterBlock (RIV-TA urn:riv:ehr:blocking:synchronization:RegisterBlockResponder:2). Registrerar en grundläggande spärr i nationell spärrtjänst. Representerar responsens informationsstruktur. |
| [RegisterBlock — Request](StructureDefinition-registerblock-request.md) | Logisk modell för requestparametrar i RegisterBlock. |
| [RegisterExtendedBlock](StructureDefinition-registerextendedblock.md) | Logisk modell för tjänstekontraktet RegisterExtendedBlock (RIV-TA urn:riv:ehr:blocking:administration:RegisterExtendedBlockResponder:2). Registrerar en spärr med utökad information (aktörsdata, tidsstämplar m.m.) i lokal spärrtjänst. Representerar responsens informationsstruktur. |
| [RegisterExtendedBlock — Request](StructureDefinition-registerextendedblock-request.md) | Logisk modell för requestparametrar i RegisterExtendedBlock. |
| [RegisterTemporaryExtendedRevoke](StructureDefinition-registertemporaryextendedrevoke.md) | Logisk modell för tjänstekontraktet RegisterTemporaryExtendedRevoke (RIV-TA urn:riv:ehr:blocking:administration:RegisterTemporaryExtendedRevokeResponder:2). Registrerar en tillfällig hävning med utökad information i lokal spärrtjänst. Representerar responsens informationsstruktur. |
| [RegisterTemporaryRevoke](StructureDefinition-registertemporaryrevoke.md) | Logisk modell för tjänstekontraktet RegisterTemporaryRevoke (RIV-TA urn:riv:ehr:blocking:synchronization:RegisterTemporaryRevokeResponder:2). Registrerar en tillfällig hävning av en spärr i nationell spärrtjänst. Representerar responsens informationsstruktur. |
| [RegisterTemporaryRevoke — Request](StructureDefinition-registertemporaryrevoke-request.md) | Logisk modell för requestparametrar i RegisterTemporaryRevoke. |
| [RevokeExtendedBlock](StructureDefinition-revokeextendedblock.md) | Logisk modell för tjänstekontraktet RevokeExtendedBlock (RIV-TA urn:riv:ehr:blocking:administration:RevokeExtendedBlockResponder:2). Häver en spärr permanent i lokal spärrtjänst. Representerar responsens informationsstruktur. |
| [RevokeExtendedBlock — Request](StructureDefinition-revokeextendedblock-request.md) | Logisk modell för requestparametrar i RevokeExtendedBlock. |
| [UnregisterBlock](StructureDefinition-unregisterblock.md) | Logisk modell för tjänstekontraktet UnregisterBlock (RIV-TA urn:riv:ehr:blocking:synchronization:UnregisterBlockResponder:2). Avregistrerar en spärr från nationell spärrtjänst. Representerar responsens informationsstruktur. |
| [UnregisterBlock — Request](StructureDefinition-unregisterblock-request.md) | Logisk modell för requestparametrar i UnregisterBlock. |
| [UnregisterTemporaryRevoke](StructureDefinition-unregistertemporaryrevoke.md) | Logisk modell för tjänstekontraktet UnregisterTemporaryRevoke (RIV-TA urn:riv:ehr:blocking:synchronization:UnregisterTemporaryRevokeResponder:2). Avregistrerar en tillfällig hävning från nationell spärrtjänst. Representerar responsens informationsstruktur. |
| [UnregisterTemporaryRevoke — Request](StructureDefinition-unregistertemporaryrevoke-request.md) | Logisk modell för requestparametrar i UnregisterTemporaryRevoke. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BlockType — ValueSet](ValueSet-blocktype-vs.md) | Tillåtna värden för typ av spärr. |
| [ResultCode — ValueSet](ValueSet-resultcode-vs.md) | Tillåtna svarskoder för spärrtjänsternas operationer. |
| [TemporaryRevokeReason — ValueSet](ValueSet-temporaryrevokereason-vs.md) | Tillåtna orsaker för tillfällig hävning av spärr. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BlockType](CodeSystem-blocktype-cs.md) | Typ av spärr enligt urn:riv:ehr:blocking:2. Anger om spärren gäller inom en vårdenhet (inre) eller inom hela vårdgivaren (yttre). |
| [ResultCode](CodeSystem-resultcode-cs.md) | Svarskoder för spärrtjänsternas operationer enligt urn:riv:ehr:blocking:2. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. |
| [TemporaryRevokeReason](CodeSystem-temporaryrevokereason-cs.md) | Orsak till tillfällig hävning av spärr enligt urn:riv:ehr:blocking:2. |

