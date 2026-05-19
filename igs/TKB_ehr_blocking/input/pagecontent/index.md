# ehr: blocking — Spärrhantering

## Översikt

FHIR Implementation Guide för tjänstedomänen **ehr: blocking** (Spärrhantering) version 3.2.2.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen hanterar spärrhantering för vårdgivare som behöver registrera spärr av uppgifter på patientens begäran enligt Patientdatalagens regleringar samt att utföra kontroll mot spärr i vårdsystemen.

RIV-TA namnrymd: `urn:riv:ehr:blocking`

## Tjänstekontrakt

Domänen innehåller följande tjänstekontrakt, organiserade i fyra underdomäner:

### Querying — Frågetjänster

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetAllBlocks](7-tjanstekontrakt.html#getallblocks) | 2.0 | Läs alla spärrar (nationell nivå) |
| [GetAllBlocksForPatient](7-tjanstekontrakt.html#getallblocksforpatient) | 2.0 | Läs alla spärrar för en patient |
| [GetBlocks](7-tjanstekontrakt.html#getblocks) | 2.0 | Läs spärrar för en vårdgivare |
| [GetBlocksForPatient](7-tjanstekontrakt.html#getblocksforpatient) | 2.0 | Läs spärrar för patient och vårdgivare |

### Accesscontrol — Spärrkontroll

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [CheckBlocks](7-tjanstekontrakt.html#checkblocks) | 3.0 | Kontrollera om spärr finns för given personal/vårdenhet |

### Synchronization — Replikering till nationell tjänst

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [RegisterBlock](7-tjanstekontrakt.html#registerblock) | 2.0 | Registrera spärr i nationell spärrtjänst |
| [UnregisterBlock](7-tjanstekontrakt.html#unregisterblock) | 2.0 | Avregistrera spärr från nationell spärrtjänst |
| [RegisterTemporaryRevoke](7-tjanstekontrakt.html#registertemporaryrevoke) | 2.0 | Registrera tillfällig hävning |
| [UnregisterTemporaryRevoke](7-tjanstekontrakt.html#unregistertemporaryrevoke) | 2.0 | Avregistrera tillfällig hävning |

### Administration — Lokal spärradministration

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetPatientIds](7-tjanstekontrakt.html#getpatientids) | 2.0 | Läs patient-ID för spärrade patienter |
| [GetExtendedBlocksForPatient](7-tjanstekontrakt.html#getextendedblockforpatient) | 2.0 | Läs utökade spärrar för patient |
| [RegisterExtendedBlock](7-tjanstekontrakt.html#registerextendedblock) | 2.0 | Registrera utökad spärr |
| [RevokeExtendedBlock](7-tjanstekontrakt.html#revokeextendedblock) | 2.0 | Häv spärr permanent |
| [DeleteExtendedBlock](7-tjanstekontrakt.html#deleteextendedblock) | 2.0 | Makulera spärr |
| [RegisterTemporaryExtendedRevoke](7-tjanstekontrakt.html#registertemporaryextendedrevoke) | 2.0 | Registrera tillfällig hävning (utökad) |
| [CancelTemporaryExtendedRevoke](7-tjanstekontrakt.html#canceltemporaryextendedrevoke) | 2.0 | Återkalla tillfällig hävning |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Generella regler](2-generella-regler.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
