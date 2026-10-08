# informationsecurity:auditing:log - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **informationsecurity:auditing:log**

## informationsecurity:auditing:log

Logghantering lagrar information om åtkomstrelaterade händelser från olika system på ett strukturerat sätt, och används av system och tjänster som till exempel NPÖ och Pascal. Syftet är att man i efterhand ska kunna se vem som tagit del av vilken patientinformation. Tjänstekontrakten för Logghantering säkerställer att uppföljning av åtkomst till journaluppgifter sker på ett enhetligt sätt, och enligt de lagar och förordningar som gäller. Tjänstekontrakten gör det också möjligt för patienten/medborgaren att själv kunna få se vilka vårdgivare som har haft åtkomst till patientens journaler via till exempel Journalen på 1177 Vårdguidens e-tjänster.

* Svenskt kortnamn: Svenskt namn
  * loggtjänst: informationssäkerhet:uppföljning:åtkomstlogg
* Svenskt kortnamn: Typ
  * loggtjänst: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * loggtjänst: [TKB_informationsecurity_auditing_log](https://oskthu2.github.io/tkb-converter/TKB_informationsecurity_auditing_log/index.html)
* Svenskt kortnamn: Källkod
  * loggtjänst: [Bitbucket](https://bitbucket.org/rivta-domains/riv.informationsecurity.auditing.log/src)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| GetAccessLogsForPatient | 2.0 | rivtabp21 | `urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatient:2:rivtabp21` |
| GetInfoLogs | 2.0 | rivtabp21 | `urn:riv:informationsecurity:auditing:log:GetInfoLogs:2:rivtabp21` |
| GetLogs | 2.0 | rivtabp21 | `urn:riv:informationsecurity:auditing:log:GetLogs:2:rivtabp21` |
| StoreLog | 2.0 | rivtabp21 | `urn:riv:informationsecurity:auditing:log:StoreLog:2:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 2.0.4 | IS, TKB, AB | [Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//informationsecurity_auditing_log/2.0.4/VIS_granskning - informationsecurity_auditing_log_2.0.4.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//informationsecurity_auditing_log/2.0.4/T-granskning_informationsecurity_auditing_log_2.0.4.docx)[Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//informationsecurity_auditing_log/2.0.4/VIS_granskning - informationsecurity_auditing_log_2.0.4.docx) | [zip](http://rivta.se/downloads//informationsecurity_auditing_log/2.0.4/ServiceContracts_informationsecurity_auditing_log_2.0.4.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.informationsecurity.auditing.log/src/2.0.4) |
| trunk |  |  |  |

[← Alla tjänstedomäner](tjanstedomaner.md)

