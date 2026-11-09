# 1 Inledning - se.apotekensservice: axs — Hämta patientinformation v7.0.0

* [**Table of Contents**](toc.md)
* **1 Inledning**

## 1 Inledning

## Inledning

**SAKNAS I KÄLLDOKUMENT.** Domänen har ingen tjänstekontraktsbeskrivning. Uppgifterna nedan är hämtade ur WSDL-filens annotering och domänens arkitekturella beslut.

Tjänstedomänen `se.apotekensservice:axs` innehåller tjänstekontrakt från eHälsomyndigheten (eHM) som tjänsteväxlas i den nationella tjänsteplattformen (NTjP). Enligt WSDL-annoteringen:

| | |
| :--- | :--- |
| Tjänstedomän | se.apotekensservice:axs |
| Tjänsteinteraktionstyp | Fråga-Svar |
| RIV Teknisk Anvisning | Basic Profile 2.1 anpassad enligt eHälsomyndighetens tekniska riktlinjer |
| Förvaltning | Kontakta support hos eHälsomyndigheten |

Enligt commit-historiken togs tjänstekontrakt som inte längre används av 1177 Vårdguiden bort i version 7.0. Kvar finns HamtaPatientInfo.

### Referenser

| | | |
| :--- | :--- | :--- |
| AB | [AB_se_apotekenservice_axs.docx](AB_se_apotekenservice_axs.docx) | Arkitekturella beslut för domänen, se[avsnitt 3](3-tjanstedomanens-arkitektur.md) |
| RIV TA Domänschema 2.1 | ARK_0006 | Refereras i AB-2.2 |
| RIV TA Tjänsteschema 2.1 | ARK_0005 | Refereras i AB-2.2 |

### Förkortningar

Förkortningarna förekommer i schemaannoteringarna. Förklaringarna finns inte i källan; de är tolkade (se ASSUME-AXS-003 i QUESTIONS.md).

| | |
| :--- | :--- |
| eHM | eHälsomyndigheten |
| NTjP | Nationella tjänsteplattformen |
| EXPO | eHälsomyndighetens register över expeditionsställen (apotek) |
| FOLK | eHälsomyndighetens folkbokföringsregister (kopia av SPAR) |
| RDH | Receptdepå human |
| RR | Receptregistret |
| RRD | Receptregistret för djur |
| HKDB | Högkostnadsdatabasen |
| EES | Elektroniskt expertstöd |
| GLN | Global Location Number |

