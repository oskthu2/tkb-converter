## Tjänstedomänens meddelandemodeller

*SAKNAS I KÄLLDOKUMENT.* Det finns ingen informationsmodell (V-MIM) för domänen. Meddelandemodellen framgår av scheman och de logiska modellerna:

* [HamtaPatientInfoRequest](StructureDefinition-hamtapatientinfo-request.html): begäran (personnummer och SOAP-huvuden)
* [HamtaPatientInfo](StructureDefinition-hamtapatientinfo.html): svaret

Svaret är uppbyggt av tre informationskomponenter från domänschemana, beskrivna i [avsnitt 6](6-gemensamma-informationskomponenter.html):

| Komponent | Domänschema | Används i |
| :--- | :--- | :--- |
| ApoteksinformationResponse | `se.apotekensservice_axs_4.0.xsd` | `apotek` |
| PatientInformationResponse | `se.apotekensservice_axs_5.0.xsd` | `patientInformation` |
| SamtyckeResponse | `se.apotekensservice_axs_5.0.xsd` | `patientInformation.samtycke` |
