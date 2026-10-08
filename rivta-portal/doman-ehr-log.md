# ehr:log - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **ehr:log**

## ehr:log

OBSERVERA: Denna domän utvecklas inte längre, för nyutveckling, support och buggrättningar hänvisas till den nya domänen: loggtjänst - informationsecurity:auditing:log Logghantering lagrar information om åtkomstrelaterade händelser från olika system på ett strukturerat sätt, och används av system och tjänster som till exempel NPÖ och Pascal. Syftet är att man i efterhand ska kunna se vem som tagit del av vilken patientinformation. Tjänstekontrakten för Logghantering säkerställer att uppföljning av åtkomst till journaluppgifter sker på ett enhetligt sätt, och enligt de lagar och förordningar som gäller. Tjänstekontrakten gör det också möjligt för patienten/medborgaren att själv ta del av åtkomstloggar via till exempel Mina vårdkontakter. Detta är dock ännu inte realiserat i Mina vårdkontakter (MVK).

* Svenskt kortnamn: Svenskt namn
  * logghantering: infrastruktur:säkerhetstjänster:logghantering
* Svenskt kortnamn: Typ
  * logghantering: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * logghantering: [TKB_ehr_log](https://oskthu2.github.io/tkb-converter/TKB_ehr_log/index.html)
* Svenskt kortnamn: Källkod
  * logghantering: [Bitbucket](https://bitbucket.org/rivta-domains/riv.ehr.log/src)
* Svenskt kortnamn: Ärenden
  * logghantering: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.ehr.log/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| GetAccessLogsForPatient | 1.1 | rivtabp21 | `urn:riv:ehr:log:querying:GetAccessLogsForPatient:1:rivtabp21` |
| GetInfoLogsForCareProvider | 1.0 | rivtabp21 | `urn:riv:ehr:log:querying:GetInfoLogsForCareProvider:1:rivtabp21` |
| GetInfoLogsForPatient | 1.0 | rivtabp21 | `urn:riv:ehr:log:querying:GetInfoLogsForPatient:1:rivtabp21` |
| GetLogsForCareProvider | 1.1 | rivtabp21 | `urn:riv:ehr:log:querying:GetLogsForCareProvider:1:rivtabp21` |
| GetLogsForPatient | 1.0 | rivtabp21 | `urn:riv:ehr:log:querying:GetLogsForPatient:1:rivtabp21` |
| GetLogsForUser | 1.1 | rivtabp21 | `urn:riv:ehr:log:querying:GetLogsForUser:1:rivtabp21` |
| StoreLog | 1.0 | rivtabp21 | `urn:riv:ehr:log:store:StoreLog:1:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 1.2.3 | TKB, AB | Äldre granskningsprocess: Teknik: Godkänd | [zip](http://rivta.se/downloads//ehr_log/1.2.3/ServiceContracts_ehr_log_1.2.3.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.ehr.log/src/1.2.3) |
| trunk | TKB, AB |  | [källkod](https://bitbucket.org/rivta-domains/riv.ehr.log/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

