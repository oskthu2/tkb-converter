# 7 Tjänstekontrakt - se.apotekensservice: axs — Hämta patientinformation v7.0.0

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

## Tjänstekontrakt

### HamtaPatientInfo

**SAKNAS I KÄLLDOKUMENT.** Det finns ingen kontraktsbeskrivning. Beskrivningen nedan är hämtad ur WSDL och XSD.

HamtaPatientInfo hämtar information om en patient: eventuellt dosapotek som patienten är kopplad till, eventuell dosproducent, dosunderlagets status, om det finns aktuella recept för patienten i RDH, samt patientinformation och samtycken från FOLK.

#### Version

6.0 (WSDL-revisioner: 2016-12-16 version 6.0, 2015-11-24 version 5.0)

| | |
| :--- | :--- |
| Tjänsteinteraktion | HamtaPatientInfoInteraction |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:axs:HamtaPatientInfoResponder:6` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:axs:HamtaPatientInfo:6` |
| SOAP-action | `urn:riv:se.apotekensservice:axs:HamtaPatientInfoResponder:6:HamtaPatientInfo` |
| Interaktionstyp | Fråga-Svar |

#### SOAP-huvuden

| | | |
| :--- | :--- | :--- |
| LogicalAddress | `itintegration_registry_1.0.xsd` | Organisationsnummer för Apotekens Service AB |
| ArgosHeader | `ArgosHeader_1.0.xsd` | Argos-huvud för Apotekens Service AB. Enligt WSDL: se dokumentationen för vilka fält som är obligatoriska för just denna tjänsteinteraktion. |

ArgosHeaderType har följande fält, alla string och 0..1: forskrivarkod, legitimationskod, fornamn, efternamn, yrkesgrupp, befattningskod, arbetsplatskod, arbetsplatsnamn, postort, postadress, postnummer, telefonnummer, requestId, rollnamn, hsaID, katalog, organisationsnummer, systemnamn, systemversion, systemIp.

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| personnummer | string | Giltigt personnummer för patient. | 1..1 |
| extension | ExtensionType | Utökningspunkt | 0..1 |
| **Svar** |   |   |   |
| apotek | ApoteksinformationResponse | Ev. DOS-apotek som kunden är kopplad till. Om anrop mot underliggande system (FOLK, OR eller EXPO) misslyckas så lämnas fältet tomt. Se[avsnitt 6](6-gemensamma-informationskomponenter.md#apoteksinformationresponse). | 0..1 |
| dosproducent | string | GLN-kod för eventuell dosproducent. | 0..1 |
| dosunderlagStatus | int | Status om underlaget är godkänt, registrerat eller avregistrerat. 500 = Ej godkänt. 510 = Godkänt. 520 = Avregistrerat. | 0..1 |
| finnsOrdination | boolean | Markering som anger om det finns aktuella recept för patienten i RDH. | 0..1 |
| patientInformation | PatientInformationResponse | Patientinformation från FOLK. Se[avsnitt 6](6-gemensamma-informationskomponenter.md#patientinformationresponse). | 0..1 |
| extension | ExtensionType | Utökningspunkt | 0..1 |

#### Felhantering

Vid fel returneras SOAP-felet `ApplicationException` eller `SystemException`, se [avsnitt 4](4-tjanstedomanens-krav-och-regler.md#felhantering).

#### FHIR-artefakter

* [HamtaPatientInfoRequest](StructureDefinition-hamtapatientinfo-request.md): logisk modell för begäran, inklusive SOAP-huvudena
* [HamtaPatientInfo](StructureDefinition-hamtapatientinfo.md): logisk modell för svaret
* [DosunderlagStatusCS](CodeSystem-axs-dosunderlagstatus-cs.md) / [DosunderlagStatusVS](ValueSet-axs-dosunderlagstatus-vs.md): dosunderlagets status
* [FolkStatusKodCS](CodeSystem-axs-folkstatuskod-cs.md) / [FolkStatusKodVS](ValueSet-axs-folkstatuskod-vs.md): statuskod för person i FOLK

#### Källfiler

| | |
| :--- | :--- |
| [HamtaPatientInfoInteraction_6.0_rivtabp21.wsdl](HamtaPatientInfoInteraction_6.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [HamtaPatientInfoResponder_6.0.xsd](HamtaPatientInfoResponder_6.0.xsd) | Tjänsteschema |
| [se.apotekensservice_axs_5.0.xsd](se.apotekensservice_axs_5.0.xsd) | Domänschema version 5 (PatientInformationResponse, SamtyckeResponse) |
| [se.apotekensservice_axs_4.0.xsd](se.apotekensservice_axs_4.0.xsd) | Domänschema version 4 (ApoteksinformationResponse, ApplicationException, SystemException) |
| [se.apotekensservice_axs_1.0.xsd](se.apotekensservice_axs_1.0.xsd) | Domänschema version 1 (importeras av version 5) |
| [ArgosHeader_1.0.xsd](ArgosHeader_1.0.xsd) | Schema för SOAP-huvudet ArgosHeader |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Schema för SOAP-huvudet LogicalAddress |
| [AB_se_apotekenservice_axs.docx](AB_se_apotekenservice_axs.docx) | Arkitekturella beslut |

