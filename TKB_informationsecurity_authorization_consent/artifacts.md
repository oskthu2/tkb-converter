# Artifacts Summary - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [CancelExtendedConsent — Request](StructureDefinition-cancelextendedconsent-request.md) | Logisk modell för begäran i CancelExtendedConsent (urn:riv:informationsecurity:authorization:consent:CancelExtendedConsentResponder:2, CancelExtendedConsentType), inklusive SOAP-huvuden enligt WSDL. |
| [CancelExtendedConsent — Response](StructureDefinition-cancelextendedconsent.md) | Logisk modell för svaret i CancelExtendedConsent (urn:riv:informationsecurity:authorization:consent:CancelExtendedConsentResponder:2, CancelExtendedConsentResponseType). |
| [CheckConsent — Request](StructureDefinition-checkconsent-request.md) | Logisk modell för begäran i CheckConsent (urn:riv:informationsecurity:authorization:consent:CheckConsentResponder:2, CheckConsentType), inklusive SOAP-huvuden enligt WSDL. |
| [CheckConsent — Response](StructureDefinition-checkconsent.md) | Logisk modell för svaret i CheckConsent (urn:riv:informationsecurity:authorization:consent:CheckConsentResponder:2, CheckConsentResponseType). |
| [DeleteExtendedConsent — Request](StructureDefinition-deleteextendedconsent-request.md) | Logisk modell för begäran i DeleteExtendedConsent (urn:riv:informationsecurity:authorization:consent:DeleteExtendedConsentResponder:2, DeleteExtendedConsentType), inklusive SOAP-huvuden enligt WSDL. |
| [DeleteExtendedConsent — Response](StructureDefinition-deleteextendedconsent.md) | Logisk modell för svaret i DeleteExtendedConsent (urn:riv:informationsecurity:authorization:consent:DeleteExtendedConsentResponder:2, DeleteExtendedConsentResponseType). |
| [EndConsentByPatient — Request](StructureDefinition-endconsentbypatient-request.md) | Logisk modell för begäran i EndConsentByPatient (urn:riv:informationsecurity:authorization:consent:EndConsentByPatientResponder:1, EndConsentByPatientType), inklusive SOAP-huvuden enligt WSDL. |
| [EndConsentByPatient — Response](StructureDefinition-endconsentbypatient.md) | Logisk modell för svaret i EndConsentByPatient (urn:riv:informationsecurity:authorization:consent:EndConsentByPatientResponder:1, EndConsentByPatientResponseType). |
| [GetAllExtendedConsentsForPatient — Request](StructureDefinition-getallextendedconsentsforpatient-request.md) | Logisk modell för begäran i GetAllExtendedConsentsForPatient (urn:riv:informationsecurity:authorization:consent:GetAllExtendedConsentsForPatientResponder:1, GetAllExtendedConsentsForPatientType), inklusive SOAP-huvuden enligt WSDL. |
| [GetAllExtendedConsentsForPatient — Response](StructureDefinition-getallextendedconsentsforpatient.md) | Logisk modell för svaret i GetAllExtendedConsentsForPatient (urn:riv:informationsecurity:authorization:consent:GetAllExtendedConsentsForPatientResponder:1, GetAllExtendedConsentsForPatientResponseType). |
| [GetConsentsForCareProvider — Request](StructureDefinition-getconsentsforcareprovider-request.md) | Logisk modell för begäran i GetConsentsForCareProvider (urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProviderResponder:2, GetConsentsForCareProviderType), inklusive SOAP-huvuden enligt WSDL. |
| [GetConsentsForCareProvider — Response](StructureDefinition-getconsentsforcareprovider.md) | Logisk modell för svaret i GetConsentsForCareProvider (urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProviderResponder:2, GetConsentsForCareProviderResponseType). |
| [GetConsentsForPatient — Request](StructureDefinition-getconsentsforpatient-request.md) | Logisk modell för begäran i GetConsentsForPatient (urn:riv:informationsecurity:authorization:consent:GetConsentsForPatientResponder:2, GetConsentsForPatientType), inklusive SOAP-huvuden enligt WSDL. |
| [GetConsentsForPatient — Response](StructureDefinition-getconsentsforpatient.md) | Logisk modell för svaret i GetConsentsForPatient (urn:riv:informationsecurity:authorization:consent:GetConsentsForPatientResponder:2, GetConsentsForPatientResponseType). |
| [GetExtendedConsentsForPatient — Request](StructureDefinition-getextendedconsentsforpatient-request.md) | Logisk modell för begäran i GetExtendedConsentsForPatient (urn:riv:informationsecurity:authorization:consent:GetExtendedConsentsForPatientResponder:2, GetExtendedConsentsForPatientType), inklusive SOAP-huvuden enligt WSDL. |
| [GetExtendedConsentsForPatient — Response](StructureDefinition-getextendedconsentsforpatient.md) | Logisk modell för svaret i GetExtendedConsentsForPatient (urn:riv:informationsecurity:authorization:consent:GetExtendedConsentsForPatientResponder:2, GetExtendedConsentsForPatientResponseType). |
| [RegisterExtendedConsent — Request](StructureDefinition-registerextendedconsent-request.md) | Logisk modell för begäran i RegisterExtendedConsent (urn:riv:informationsecurity:authorization:consent:RegisterExtendedConsentResponder:2, RegisterExtendedConsentType), inklusive SOAP-huvuden enligt WSDL. |
| [RegisterExtendedConsent — Response](StructureDefinition-registerextendedconsent.md) | Logisk modell för svaret i RegisterExtendedConsent (urn:riv:informationsecurity:authorization:consent:RegisterExtendedConsentResponder:2, RegisterExtendedConsentResponseType). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AssertionType](ValueSet-authorization-consent-assertiontype-vs.md) | Alla koder i AssertionTypeCS. |
| [ResultCode](ValueSet-authorization-consent-resultcode-vs.md) | Alla koder i ResultCodeCS. |
| [Scope](ValueSet-authorization-consent-scope-vs.md) | Alla koder i ScopeCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AssertionType](CodeSystem-authorization-consent-assertiontype-cs.md) | Koder för AssertionTypeType i domänschemat. |
| [ResultCode](CodeSystem-authorization-consent-resultcode-cs.md) | Koder för ResultCodeType i domänschemat. |
| [Scope](CodeSystem-authorization-consent-scope-cs.md) | Koder för ScopeType i domänschemat. |

