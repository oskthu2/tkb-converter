# Externa Issues (Jira-kandidater)

Dessa issues kräver beslut utanför detta konverteringsarbete och bör hanteras
som ärenden i rätt forum (Inera Arkitektur / Nationell förvaltning).

---

## [EXT-001] Kardinalitetsdiskrepans: clinicalProcessInterestId i FindContent Request

**Domän:** itintegration.engagementindex v1.0.9
**FHIR IG:** TKB_itintegration_engagementindex
**Kopplad post:** BLOCK-EI-001 i QUESTIONS.md

### Beskrivning

Fältet `clinicalProcessInterestId` i `FindContent`-kontraktets Request-meddelande
har inkonsekvent kardinalitet i TKB-dokumentationen:

- **TKB-fälttabell (avsnitt 7.1):** `0..1` (valfri)
- **Informationsmodell och XSD-schema:** `1..1` (obligatorisk)

Diskrepansen innebär att FHIR IG:ns logiska modell antingen kan felmodellera
kontraktet som mer permissivt (0..1) eller mer restriktivt (1..1) än verkligheten.

### Nuvarande hantering i FHIR IG

FSH-modellen använder `0..1` (säkrare/mer permissivt alternativ) med kommentar
om diskrepansen. Modellen är korrekt genererad men kan behöva uppdateras.

### Föreslaget åtgärd

1. Verifiera mot auktoritativ XSD-fil vilken kardinalitet som faktiskt gäller.
2. Uppdatera TKB-dokumentationen för att konsistenta regler i tabell och XSD.
3. Uppdatera FSH-modellen i enlighet med beslutet.

### Påverkan

- Alla konsumenter av `FindContent` som filtrerar på `clinicalProcessInterestId`
- FHIR IG-dokumentationen behöver uppdateras efter beslut

### Prioritet

Medium — påverkar inte att IG:n kan byggas, men kan ge missvisande dokumentation.

---

*Tillagd: 2026-03-19 | Konverteringsarbete: TKB → FHIR IG*
