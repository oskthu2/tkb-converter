# Artifacts Summary - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [DeleteAnswers](StructureDefinition-deleteanswers.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet DeleteAnswers (RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1). |
| [DeleteAnswers — Request](StructureDefinition-deleteanswers-request.md) | Logisk modell för requestparametrar i tjänstekontraktet DeleteAnswers (RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1). Tar bort svar som mellanlagrats av vården och tidigare hämtats via FindAllAnswers. |
| [DeleteQuestions](StructureDefinition-deletequestions.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet DeleteQuestions (RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteQuestions:1). |
| [DeleteQuestions — Request](StructureDefinition-deletequestions-request.md) | Logisk modell för requestparametrar i tjänstekontraktet DeleteQuestions (RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteQuestions:1). Tar bort frågor som mellanlagrats av vården och tidigare hämtats via FindAllQuestions. |
| [FindAllAnswers](StructureDefinition-findallanswers.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllAnswers (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1). |
| [FindAllAnswers — Request](StructureDefinition-findallanswers-request.md) | Logisk modell för requestparametrar i tjänstekontraktet FindAllAnswers (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1). Returnerar svar från FK på tidigare skickade frågor från vården. |
| [FindAllQuestions](StructureDefinition-findallquestions.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllQuestions (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1). |
| [FindAllQuestions — Request](StructureDefinition-findallquestions-request.md) | Logisk modell för requestparametrar i tjänstekontraktet FindAllQuestions (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1). Returnerar frågor från FK som mellanlagrats av vården. |
| [GetCertificate](StructureDefinition-getcertificate.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet GetCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:GetCertificate:1). |
| [GetCertificate — Request](StructureDefinition-getcertificate-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:GetCertificate:1). Hämtar ett specifikt läkarintyg från intygstjänsten. |
| [ListCertificates](StructureDefinition-listcertificates.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet ListCertificates (RIV-TA urn:riv:insuranceprocess:healthreporting:ListCertificates:1). |
| [ListCertificates — Request](StructureDefinition-listcertificates-request.md) | Logisk modell för requestparametrar i tjänstekontraktet ListCertificates (RIV-TA urn:riv:insuranceprocess:healthreporting:ListCertificates:1). Begär en lista av registrerade läkarintyg från intygstjänsten. |
| [ReceiveMedicalCertificateAnswer](StructureDefinition-receivemedicalcertificateanswer.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateAnswer (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateAnswer:1). |
| [ReceiveMedicalCertificateAnswer — Request](StructureDefinition-receivemedicalcertificateanswer-request.md) | Logisk modell för requestparametrar i tjänstekontraktet ReceiveMedicalCertificateAnswer (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateAnswer:1). Tar emot svar från Försäkringskassan på en tidigare skickad fråga från vården. |
| [ReceiveMedicalCertificateQuestion](StructureDefinition-receivemedicalcertificatequestion.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateQuestion (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateQuestion:1). |
| [ReceiveMedicalCertificateQuestion — Request](StructureDefinition-receivemedicalcertificatequestion-request.md) | Logisk modell för requestparametrar i tjänstekontraktet ReceiveMedicalCertificateQuestion (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateQuestion:1). Tar emot frågor från Försäkringskassan för ett läkarintyg. |
| [RegisterMedicalCertificate](StructureDefinition-registermedicalcertificate.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet RegisterMedicalCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3). |
| [RegisterMedicalCertificate — Request](StructureDefinition-registermedicalcertificate-request.md) | Logisk modell för requestparametrar i tjänstekontraktet RegisterMedicalCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3). Skickar ett komplett läkarintyg FK7263. |
| [RevokeMedicalCertificate](StructureDefinition-revokemedicalcertificate.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet RevokeMedicalCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1). |
| [RevokeMedicalCertificate — Request](StructureDefinition-revokemedicalcertificate-request.md) | Logisk modell för requestparametrar i tjänstekontraktet RevokeMedicalCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1). Skickar ett meddelande om rättelse av ett tidigare inskickat läkarintyg. |
| [SendMedicalCertificate](StructureDefinition-sendmedicalcertificate.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1). |
| [SendMedicalCertificate — Request](StructureDefinition-sendmedicalcertificate-request.md) | Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificate (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1). Skickar ett meddelande om att ett läkarintyg skall skickas vidare till FK. Läkarintyget är tidigare insänt via RegisterMedicalCertificate. |
| [SendMedicalCertificateAnswer](StructureDefinition-sendmedicalcertificateanswer.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificateAnswer (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateAnswer:1). |
| [SendMedicalCertificateAnswer — Request](StructureDefinition-sendmedicalcertificateanswer-request.md) | Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificateAnswer (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateAnswer:1). Skickar ett svar till Försäkringskassan på en tidigare mottagen fråga. |
| [SendMedicalCertificateQuestion](StructureDefinition-sendmedicalcertificatequestion.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificateQuestion (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1). |
| [SendMedicalCertificateQuestion — Request](StructureDefinition-sendmedicalcertificatequestion-request.md) | Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificateQuestion (RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1). Skickar en fråga till Försäkringskassan för ett läkarintyg. |
| [SetCertificateStatus](StructureDefinition-setcertificatestatus.md) | Logisk modell för responsens informationsstruktur i tjänstekontraktet SetCertificateStatus (RIV-TA urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1). |
| [SetCertificateStatus — Request](StructureDefinition-setcertificatestatus-request.md) | Logisk modell för requestparametrar i tjänstekontraktet SetCertificateStatus (RIV-TA urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1). Sätter status för ett registrerat läkarintyg i intygstjänsten. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Aktivitetskod — ValueSet](ValueSet-aktivitetskod-vs.md) | Tillåtna värden för aktivitetskod i RegisterMedicalCertificate. |
| [Amne — ValueSet](ValueSet-amne-vs.md) | Tillåtna värden för ämne i fråge/svar-interaktionerna. |
| [Nedsattningsgrad — ValueSet](ValueSet-nedsattningsgrad-vs.md) | Tillåtna värden för grad av arbetsförmågenedsättning i RegisterMedicalCertificate. |
| [Referenstyp — ValueSet](ValueSet-referenstyp-vs.md) | Tillåtna värden för typ av referens i RegisterMedicalCertificate. |
| [Status — ValueSet](ValueSet-status-vs.md) | Tillåtna värden för statustyp för läkarintyg. |
| [Vardkontakttyp — ValueSet](ValueSet-vardkontakttyp-vs.md) | Tillåtna värden för typ av vårdkontakt i RegisterMedicalCertificate. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Aktivitetskod](CodeSystem-aktivitetskod-cs.md) | Kodverk för aktivitetskoder i tjänstekontraktet RegisterMedicalCertificate (blankett FK7263). |
| [Amne](CodeSystem-amne-cs.md) | Kodverk för ämne i fråge/svar-interaktionerna i tjänstedomänen insuranceprocess:healthreporting. |
| [Nedsattningsgrad](CodeSystem-nedsattningsgrad-cs.md) | Kodverk för grad av arbetsförmågenedsättning i tjänstekontraktet RegisterMedicalCertificate (blankett FK7263 Fält 8b). |
| [Referenstyp](CodeSystem-referenstyp-cs.md) | Kodverk för typ av referens i tjänstekontraktet RegisterMedicalCertificate. |
| [Status](CodeSystem-status-cs.md) | Kodverk för statustyp för läkarintyg i tjänstekontrakten ListCertificates och SetCertificateStatus. |
| [Vardkontakttyp](CodeSystem-vardkontakttyp-cs.md) | Kodverk för typ av vårdkontakt i tjänstekontraktet RegisterMedicalCertificate. |

