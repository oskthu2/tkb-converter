# Artifacts Summary - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [CertificateStatusUpdateForCare](StructureDefinition-certificatestatusupdateforcare.md) | Logisk modell för tjänstekontraktet CertificateStatusUpdateForCare (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:CertificateStatusUpdateForCare:3). Representerar responsens informationsstruktur. |
| [CertificateStatusUpdateForCare — Request](StructureDefinition-certificatestatusupdateforcare-request.md) | Logisk modell för requestparametrar i CertificateStatusUpdateForCare. |
| [CreateDraftCertificate](StructureDefinition-createdraftcertificate.md) | Logisk modell för tjänstekontraktet CreateDraftCertificate (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:CreateDraftCertificate:3). Representerar responsens informationsstruktur — intygs-id på skapade intygsutkastet. |
| [CreateDraftCertificate — Request](StructureDefinition-createdraftcertificate-request.md) | Logisk modell för requestparametrar i CreateDraftCertificate. |
| [GetCertificate](StructureDefinition-getcertificate.md) | Logisk modell för tjänstekontraktet GetCertificate (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:GetCertificate:2). Representerar responsens informationsstruktur — ett intyg med tillhörande metadata. |
| [GetCertificate — Request](StructureDefinition-getcertificate-request.md) | Logisk modell för requestparametrar i GetCertificate. |
| [ListCertificatesForCare](StructureDefinition-listcertificatesforcare.md) | Logisk modell för tjänstekontraktet ListCertificatesForCare (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:3). Representerar responsens lista med intyg för en patient på en enhet eller hos en vårdgivare. |
| [ListCertificatesForCare — Request](StructureDefinition-listcertificatesforcare-request.md) | Logisk modell för requestparametrar i ListCertificatesForCare. |
| [ListCertificatesForCareWithQA](StructureDefinition-listcertificatesforcarewithqa.md) | Logisk modell för tjänstekontraktet ListCertificatesForCareWithQA (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCareWithQA:3). Representerar responsens lista med intyg inkl. händelser och ärendekommunikation. Inkluderar både signerade, makulerade och intygsutkast. |
| [ListCertificatesForCareWithQA — Request](StructureDefinition-listcertificatesforcarewithqa-request.md) | Logisk modell för requestparametrar i ListCertificatesForCareWithQA. |
| [ListCertificatesForCitizen](StructureDefinition-listcertificatesforcitizan.md) | Logisk modell för tjänstekontraktet ListCertificatesForCitizen (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCitizen:4). Representerar responsens lista med intyg för en invånare med alla statusar. |
| [ListCertificatesForCitizen — Request](StructureDefinition-listcertificatesforcitizan-request.md) | Logisk modell för requestparametrar i ListCertificatesForCitizen. |
| [ListSickLeavesForCare](StructureDefinition-listsickleavesforcare.md) | Logisk modell för tjänstekontraktet ListSickLeavesForCare (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListSickLeavesForCare:1). Representerar responsens lista med pågående sjukfall på en enhet. |
| [ListSickLeavesForCare — Request](StructureDefinition-listsickleavesforcare-request.md) | Logisk modell för requestparametrar i ListSickLeavesForCare. |
| [RegisterCertificate](StructureDefinition-registercertificate.md) | Logisk modell för tjänstekontraktet RegisterCertificate (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:RegisterCertificate:3). Representerar responsens informationsstruktur. |
| [RegisterCertificate — Request](StructureDefinition-registercertificate-request.md) | Logisk modell för requestparametrar i RegisterCertificate. |
| [RevokeCertificate](StructureDefinition-revokecertificate.md) | Logisk modell för tjänstekontraktet RevokeCertificate (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:RevokeCertificate:2). Representerar responsens informationsstruktur. |
| [RevokeCertificate — Request](StructureDefinition-revokecertificate-request.md) | Logisk modell för requestparametrar i RevokeCertificate. |
| [SendCertificateToRecipient](StructureDefinition-sendcertificatetorecipient.md) | Logisk modell för tjänstekontraktet SendCertificateToRecipient (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SendCertificateToRecipient:2). Representerar responsens informationsstruktur. |
| [SendCertificateToRecipient — Request](StructureDefinition-sendcertificatetorecipient-request.md) | Logisk modell för requestparametrar i SendCertificateToRecipient. |
| [SendMessageToCare](StructureDefinition-sendmessagetocare.md) | Logisk modell för tjänstekontraktet SendMessageToCare (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SendMessageToCare:2). Representerar responsens informationsstruktur. |
| [SendMessageToCare — Request](StructureDefinition-sendmessagetocare-request.md) | Logisk modell för requestparametrar i SendMessageToCare (meddelande från intygsmottagare till vården). |
| [SendMessageToRecipient](StructureDefinition-sendmessagetorecipient.md) | Logisk modell för tjänstekontraktet SendMessageToRecipient (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SendMessageToRecipient:2). Representerar responsens informationsstruktur. |
| [SendMessageToRecipient — Request](StructureDefinition-sendmessagetorecipient-request.md) | Logisk modell för requestparametrar i SendMessageToRecipient (meddelande från vården till intygsmottagare). |
| [SetCertificateStatus](StructureDefinition-setcertificatestatus.md) | Logisk modell för tjänstekontraktet SetCertificateStatus (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SetCertificateStatus:2). Representerar responsens informationsstruktur. |
| [SetCertificateStatus — Request](StructureDefinition-setcertificatestatus-request.md) | Logisk modell för requestparametrar i SetCertificateStatus. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Fel-ID — ValueSet](ValueSet-errorid-vs.md) | Tillåtna felkoder i ResultType.errorId. |
| [Händelsekod — ValueSet](ValueSet-handelskod-vs.md) | Tillåtna händelsetyper i CertificateStatusUpdateForCare. |
| [Part — ValueSet](ValueSet-part-vs.md) | Tillåtna parter i intygshanteringsprocessen. |
| [Resultatkod — ValueSet](ValueSet-resultkod-vs.md) | Tillåtna resultatkoder för tjänsteanrop. |
| [Statuskod — ValueSet](ValueSet-statuskod-vs.md) | Tillåtna statuskoder för intyg i SetCertificateStatus. |
| [Ämneskod — ValueSet](ValueSet-amneskod-vs.md) | Tillåtna ämnen för ärendekommunikation i clinicalprocess:healthcond:certificate. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Fel-ID](CodeSystem-errorid-cs.md) | Kodsystem för felkoder i ResultType.errorId enligt clinicalprocess:healthcond:certificate. |
| [Händelsekod](CodeSystem-handelskod-cs.md) | Kodsystem för händelsetyper i CertificateStatusUpdateForCare enligt clinicalprocess:healthcond:certificate. |
| [Part](CodeSystem-part-cs.md) | Kodsystem för parter i intygshanteringsprocessen enligt clinicalprocess:healthcond:certificate. |
| [Resultatkod](CodeSystem-resultkod-cs.md) | Kodsystem för resultat av tjänsteanrop (ResultType) enligt clinicalprocess:healthcond:certificate. |
| [Statuskod](CodeSystem-statuskod-cs.md) | Kodsystem för intygsstatus i SetCertificateStatus och GetCertificate enligt clinicalprocess:healthcond:certificate. |
| [Ämneskod](CodeSystem-amneskod-cs.md) | Kodsystem för ämnen i ärendekommunikation enligt clinicalprocess:healthcond:certificate. |

