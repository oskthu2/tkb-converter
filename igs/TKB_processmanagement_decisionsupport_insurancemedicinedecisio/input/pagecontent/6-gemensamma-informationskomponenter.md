# 6 Gemensamma informationskomponenter

De gemensamma informationskomponenterna för denna tjänstedomän beskrivs i Informationsspecifikationen (R3) och i det delade domänschemat `processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0.xsd`.

## Domänschema

Det delade domänschemat definierar gemensamma typer som används av alla tjänstekontrakt i domänen:

- `BeslutsunderlagType` — Beslutsunderlag med villkor, sjukskrivningstid, sjukskrivningsgrad m.m.
- `VillkorType` — Villkor med urval av arbetsbelastning, komplicerande faktorer, åtgärder m.m.
- `diagnosInformationType` — Diagnosinformation med aktivitetsbegränsningar och funktionsnedsättningar
- `versionType` — Versionsinformation för FMB och diagnosinformation
- `HuvudDiagnosType` / `HuvuddiagnosType` — Huvuddiagnos angiven med ICD-10-SE-kod
- `RehabiliteringsInformationType` — Rehabiliteringsinformation med beskrivning

Källfiler för gemensamma komponenter:

| Fil | Beskrivning |
|-----|-------------|
| [processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0.xsd](files/schema/processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0.xsd) | Domängemensamt schema |
| [itintegration_registry_1.0.xsd](files/schema/itintegration_registry_1.0.xsd) | IT-integrationsregister schema |
