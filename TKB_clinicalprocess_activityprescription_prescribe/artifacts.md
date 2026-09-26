# Artifacts Summary - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [AttachMedicationDispenseAuthorization](StructureDefinition-attachmedicationdispenseauthorization.md) | Logisk modell för tjänstekontraktet AttachMedicationDispenseAuthorization (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:AttachMedicationDispenseAuthorization:2). Representerar responsens informationsstruktur — kopplar ett expedieringsunderlag till en ordination. |
| [CheckMedicationListVersion](StructureDefinition-checkmedicationlistversion.md) | Logisk modell för tjänstekontraktet CheckMedicationListVersion (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:CheckMedicationListVersion:1). Representerar responsens informationsstruktur. Används för att kontrollera om en given läkemedelslisteversion är aktuell. |
| [DiscontinueMedication](StructureDefinition-discontinuemedication.md) | Logisk modell för tjänstekontraktet DiscontinueMedication (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:DiscontinueMedication:2). Representerar responsens informationsstruktur. |
| [GetDispensedDrugs](StructureDefinition-getdispenseddrugs.md) | Logisk modell för tjänstekontraktet GetDispensedDrugs (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugs:2). Representerar responsens informationsstruktur — uthämtade läkemedel för patient. |
| [GetDispensedDrugsConsent](StructureDefinition-getdispenseddrugsConsent.md) | Logisk modell för tjänstekontraktet GetDispensedDrugsConsent (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugsConsent:2). Representerar responsens informationsstruktur — hämtar samtycke för åtkomst till uthämtade läkemedel. |
| [GetMedicationDispenseAuthorizations](StructureDefinition-getmedicationdispenseauthorizations.md) | Logisk modell för tjänstekontraktet GetMedicationDispenseAuthorizations (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationDispenseAuthorizations:2). Representerar responsens informationsstruktur — expedieringsunderlag per patient. |
| [GetMedicationPrescriptions](StructureDefinition-getmedicationprescriptions.md) | Logisk modell för tjänstekontraktet GetMedicationPrescriptions (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationPrescriptions:2). Representerar responsens informationsstruktur — patientens samlade läkemedelslista. |
| [GetMedicationPrescriptions — Request](StructureDefinition-getmedicationprescriptions-request.md) | Logisk modell för requestparametrar i GetMedicationPrescriptions. |
| [RegisterDispensedDrugsConsent](StructureDefinition-registerdispenseddrugsConsent.md) | Logisk modell för tjänstekontraktet RegisterDispensedDrugsConsent (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterDispensedDrugsConsent:2). Representerar responsens informationsstruktur. |
| [RegisterMedicationDispenseAuthorization](StructureDefinition-registermedicationdispenseauthorization.md) | Logisk modell för tjänstekontraktet RegisterMedicationDispenseAuthorization (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationDispenseAuthorization:1). Representerar responsens informationsstruktur. |
| [RegisterMedicationPrescription](StructureDefinition-registermedicationprescription.md) | Logisk modell för tjänstekontraktet RegisterMedicationPrescription (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationPrescription:2). Representerar responsens informationsstruktur. |
| [RegisterMedicationPrescription — Request](StructureDefinition-registermedicationprescription-request.md) | Logisk modell för requestparametrar i RegisterMedicationPrescription. |
| [RegisterMedicationStatement](StructureDefinition-registermedicationstatement.md) | Logisk modell för tjänstekontraktet RegisterMedicationStatement (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationStatement:1). Representerar responsens informationsstruktur. RegisterMedicationStatement används för att registrera egenmedicinering. |
| [RevokeDispensedDrugsConsent](StructureDefinition-revokedispenseddrugsConsent.md) | Logisk modell för tjänstekontraktet RevokeDispensedDrugsConsent (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RevokeDispensedDrugsConsent:2). Representerar responsens informationsstruktur. |
| [RevokeMedicationDispenseAuthorization](StructureDefinition-revokemedicationdispenseauthorization.md) | Logisk modell för tjänstekontraktet RevokeMedicationDispenseAuthorization (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RevokeMedicationDispenseAuthorization:2). Representerar responsens informationsstruktur. |
| [SetMedicationListReviewNeeded](StructureDefinition-setmedicationlistreviewneeded.md) | Logisk modell för tjänstekontraktet SetMedicationListReviewNeeded (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewNeeded:1). Representerar responsens informationsstruktur. Används för att markera att en läkemedelslista behöver granskas. |
| [SetMedicationListReviewed](StructureDefinition-setmedicationlistreviewed.md) | Logisk modell för tjänstekontraktet SetMedicationListReviewed (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:SetMedicationListReviewed:1). Representerar responsens informationsstruktur. Används för att markera att en läkemedelslista är genomgången (läkemedelsavstämning). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DispenseAuthorizationStatus — ValueSet](ValueSet-dispenseauthorizationstatus-vs.md) | Tillåtna statusvärden för expedieringsunderlag i GetMedicationDispenseAuthorizations. |
| [DispensedDrugsConsentOrder — ValueSet](ValueSet-dispenseddrugsconsentorder-vs.md) | Tillåtna värden för samtyckesorder för uthämtade läkemedel. |
| [DispensedDrugsTypeOfResponse — ValueSet](ValueSet-dispenseddrugstypeofresponse-vs.md) | Tillåtna svarstyper i GetDispensedDrugs. |
| [ErrorCode — ValueSet](ValueSet-errorcode-vs.md) | Tillåtna felkoder i ResultType. |
| [Gender — ValueSet](ValueSet-gender-vs.md) | Tillåtna könsvärden för patientinformation. |
| [LFConsent — ValueSet](ValueSet-lfconsent-vs.md) | Tillåtna värden för samtyckestyp i läkemedelsförteckning. |
| [ResultCode — ValueSet](ValueSet-resultcode-vs.md) | Tillåtna svarskoder i ResultType. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DispenseAuthorizationStatus — Status på expedieringsunderlag](CodeSystem-dispenseauthorizationstatus-cs.md) | Kodverk för filterval av expedieringsunderlag baserat på kopplat/okopplat status. Används i GetMedicationDispenseAuthorizations. |
| [DispensedDrugsConsentOrder — Samtyckesorder](CodeSystem-dispenseddrugsconsentorder-cs.md) | Kodverk för typ av åtgärd för samtycke till uthämtade läkemedel. |
| [DispensedDrugsTypeOfResponse — Svarstyp](CodeSystem-dispenseddrugstypeofresponse-cs.md) | Kodverk för önskad svarstyp i GetDispensedDrugs: strukturerad text, multimedia eller båda. |
| [ErrorCode — Felkod](CodeSystem-errorcode-cs.md) | Kodverk för felkod i svar (ResultType.errorCode). Används i samtliga kontrakt. |
| [Gender — Kön](CodeSystem-gender-cs.md) | Kodverk för patientens kön. Används i PatientInformation-typen i GetMedicationDispenseAuthorizations och RegisterMedicationDispenseAuthorization. |
| [LFConsent — Samtyckestyp](CodeSystem-lfconsent-cs.md) | Kodverk för typ av samtycke för åtkomst till läkemedelsförteckning (LF). Används i GetDispensedDrugsConsent/RegisterDispensedDrugsConsent. |
| [ResultCode — Svarskod](CodeSystem-resultcode-cs.md) | Kodverk för resultatkod i svar (ResultType). Används i samtliga kontrakt. |

