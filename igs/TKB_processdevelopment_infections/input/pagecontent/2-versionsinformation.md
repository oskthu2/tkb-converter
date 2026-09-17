## Versionsinformation

Källdokumentet saknar en separat, fast strukturerad "Versionsinformation"-sektion i det format som senare TKB:er använder. I stället finns en fullständig revisionshistorik i dokumentets inledande del:

| Version | Datum | Författare | Kommentar |
| :--- | :--- | :--- | :--- |
| 0.1 | 2010-11-05 | Göran Oettinger, Mawell | Första version |
| 0.1 | 2010-11-05 | Torbjörn Dahlin, Maxwell | Granskad, reviderad |
| 0.2 | 2011-02-11 | Kristin Schoug Bertilsson, Mawell | Dokumentation av variabler |
| 0.3 | 2011-02-25 | Kristin Schoug Bertilsson, Mawell | Beskrivande termer för koder borttagna från meddelandeinnehållet samt felrättningar. Namnet Riksskatteverket som anges som issuer för personnummer och samordningsnummer är ändrat till Skatteverket. |
| 0.4 | 2011-03-02 | Kristin Schoug Bertilsson, Mawell | Beskrivning av $$logical_address tillagd i samtliga tjänsteinteraktioner. Text tillagd som anger att för samtliga lokala id:n ska HSA-id för den enhet inom vilken id:t är unikt anges före det lokala id:t. Felrättning i löptext. Beskrivning av svarstjänster tillagd. |
| 0.5 | 2011-04-04 | Kristin Schoug Bertilsson, Mawell | Ny variabel $$id_terminologi har lagts till. Förtydligande beskrivning av vilken tidpunkt som ska anges i elementet start_time. |
| 0.6 | 2011-05-02 | Kristin Schoug Bertilsson, Mawell | Text som beskriver hanteringen av felaktiga koder har lagts till. |
| PA1 | 2011-06-15 | Kristin Schoug Bertilsson, Mawell | Variabel $$aktivitetsid2 i ProcessActivity har tagits bort då denna numera är samma som $$aktivitetsid |
| PA1.1 | 2011-09-21 | Kristin Schoug Bertilsson, Mawell | Förtydligande i beskrivning av variablerna $$svars-id, $$tillstånds-id (i ProcessCondition) och $$vårdkontakt-id. Mindre layoutjusteringar |
| PA1.2 | 2011-10-03 | Kristin Schoug Bertilsson, Mawell | Förändring i variabeln $$enhet_aktivitetsid samt tillägg av variablerna $$id_typ och $$id_utgivare i tjänsten ProcessPrescriptionReason. |
| P1.3 | 2011-12-16 | Kristin Schoug Bertilsson, Mawell | Förtydligande av text i avsnitt 2.6. |
| P1.4 | 2012-04-26 | Kristin Schoug Bertilsson, Mawell | Förtydligande av text kring att det är patientens faktiska placering som avses. Variabeln $$kön_text i ConditionMessage borttagen då denna var felaktig. |
| P1.5 | 2012-09-12 | Torbjörn Dahlin, Mawell / Eva Biberg, Mawell | Korrigering av beskrivande texter för attributet "$$enhet_aktivitetsid". Lagt till förtydligande av "$$aktivitetsid". Förtydligande av ProcessPrescriptionReasonResponse. Korrigering: tagit bort att fler ordinationsorsaker kan skickas i ett meddelande. Ändrat beskrivning av Annan vårdgivare i ProcessPrescriptionReason. |
| P1.6 | 2012-11-01 | Eva Biberg, Mawell | Lagt till max antal tecken för unik identifierare |
| P1.7 | 2013-03-27 | Eva Biberg, Mawell | Korrigering inledning för respektive avsnitt. Korrigerat $$oid_personid samt lagt till $$födelsetidpunkt i tjänsten ProcessCondition |
| P1.8 | 2013-09-12 | Eva Biberg, Mawell | Lagt till $$id_terminologi i ProcessActivity samt ProcessCondition |
| 1.8.1 | 2022-01-04 | Amina Minhas Rafique | Slagit ihop dokumenten Tjänstekontraktbeskrivning Infektionsverktyget Registreringstjänster & Deletetjänster samt bytt till Inera mall. Lagt till felkoder vid logiskt fel. |
| 1.0.2 | 2023-10-23 | Patrik Jakobsson | Justerat version, se arkitekturella beslut. Ny mall. Kap 2.4 Format för person-id: tillagt. Kap 2.5 Format för koder och kodverk: omformulerat. Kap 2.8 Lokala identiteter: förtydligat "uppgifter i patientjournaler". Kap 2.9 Mallar för transaktionsfiler: tillagt. Begäran-avsnitten omformulerade och kardinalitetskolumn tillagd. Informationsspecifikation utbytt mot RIV-specifikation. Felkoder vid logiskt fel förtydligade. Tjänsteinteraktion-avsnitt borttagna. |

Domänversion (enligt senaste taggen i Bitbucket-repot): 1.0.2.
