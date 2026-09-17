## Gemensamma informationskomponenter

// SAKNAS I KÄLLDOKUMENT (som separat namngiven sektion) — kontrollera manuellt

Källdokumentet innehåller ingen fristående sektion om gemensamma informationskomponenter. Ett antal fältgrupper återkommer dock identiskt i flera av domänens tjänstekontrakt (se avsnitt 7):

- **Patientidentitet** (`$$issuer_personid`, `$$assigner_personid`, `$$personid`, `$$oid_personid`, `$$födelsetidpunkt`, `$$kön`) — förekommer i samtliga fem Process*-kontrakt.
- **Resultatkod och kommentar** (`ResultCode`, `comment`) — svarsstrukturen är identisk för samtliga elva tjänstekontrakt i domänen (OK / ERROR / INFO).
- **Lokala identiteter** (HSA-id + lokalt id, se [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html#lokala-identiteter)) — används genomgående för aktivitets-id, tillstånds-id, svars-id, ordinations-id och vårdkontakt-id.

Dessa gemensamma mönster är representerade i FSH som en delad `ResultCodeCS`/`ResultCodeVS` (kodverk) samt som identiskt upprepade fältgrupper i respektive kontrakts logiska modell (se avsnitt 7 och FSH-källkoden i `input/fsh/`).
