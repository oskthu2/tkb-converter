# 5 Tjänstedomänens meddelandemodeller - se.apotekensservice: axs — Hämta patientinformation v7.0.0

* [**Table of Contents**](toc.md)
* **5 Tjänstedomänens meddelandemodeller**

## 5 Tjänstedomänens meddelandemodeller

## Tjänstedomänens meddelandemodeller

**SAKNAS I KÄLLDOKUMENT.** Det finns ingen informationsmodell (V-MIM) för domänen. Meddelandemodellen framgår av scheman och de logiska modellerna:

* [HamtaPatientInfoRequest](StructureDefinition-hamtapatientinfo-request.md): begäran (personnummer och SOAP-huvuden)
* [HamtaPatientInfo](StructureDefinition-hamtapatientinfo.md): svaret

Svaret är uppbyggt av tre informationskomponenter från domänschemana, beskrivna i [avsnitt 6](6-gemensamma-informationskomponenter.md):

| | | |
| :--- | :--- | :--- |
| ApoteksinformationResponse | `se.apotekensservice_axs_4.0.xsd` | `apotek` |
| PatientInformationResponse | `se.apotekensservice_axs_5.0.xsd` | `patientInformation` |
| SamtyckeResponse | `se.apotekensservice_axs_5.0.xsd` | `patientInformation.samtycke` |

