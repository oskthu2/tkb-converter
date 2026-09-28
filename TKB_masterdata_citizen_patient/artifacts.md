# Artifacts Summary - masterdata: citizen: patient v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetPatientContactInformation — Request](StructureDefinition-getpatientcontactinformation-request.md) | Logisk modell för begäran i GetPatientContactInformation (urn:riv:masterdata:citizen:patient:GetPatientContactInformationResponder:1, GetPatientContactInformationType), inklusive SOAP-huvuden enligt WSDL. |
| [GetPatientContactInformation — Response](StructureDefinition-getpatientcontactinformation.md) | Logisk modell för svaret i GetPatientContactInformation (urn:riv:masterdata:citizen:patient:GetPatientContactInformationResponder:1, GetPatientContactInformationResponseType). |
| [UpdatePatientContactInformation — Request](StructureDefinition-updatepatientcontactinformation-request.md) | Logisk modell för begäran i UpdatePatientContactInformation (urn:riv:masterdata:citizen:patient:UpdatePatientContactInformationResponder:1, UpdatePatientContactInformationType), inklusive SOAP-huvuden enligt WSDL. |
| [UpdatePatientContactInformation — Response](StructureDefinition-updatepatientcontactinformation.md) | Logisk modell för svaret i UpdatePatientContactInformation (urn:riv:masterdata:citizen:patient:UpdatePatientContactInformationResponder:1, UpdatePatientContactInformationResponseType). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Kodverk för typ av kontaktrelation](ValueSet-masterdata-citizen-patient-typeofcontactrelationcodesystem-vs.md) | Alla koder i TypeOfContactRelationCodeSystemCS. |
| [Resultatkod](ValueSet-masterdata-citizen-patient-resultcodeenum-vs.md) | Alla koder i ResultCodeEnumCS. |
| [Typ av företrädare](ValueSet-masterdata-citizen-patient-typeofrepresentative-vs.md) | Alla koder i TypeOfRepresentativeCS. |
| [Typ av kontakt](ValueSet-masterdata-citizen-patient-typeofcontact-vs.md) | Alla koder i TypeOfContactCS. |
| [Typ av närståenderelation](ValueSet-masterdata-citizen-patient-typeofcloserelation-vs.md) | Alla koder i TypeOfCloseRelationCS. |
| [Typ av släktrelation](ValueSet-masterdata-citizen-patient-typeofrelative-vs.md) | Alla koder i TypeOfRelativeCS. |
| [Typ av telekommunikation (kontaktperson)](ValueSet-masterdata-citizen-patient-typeoftelecomcontactperson-vs.md) | Alla koder i TypeOfTelecomContactPersonCS. |
| [Typ av telekommunikation (patient)](ValueSet-masterdata-citizen-patient-typeoftelecompatient-vs.md) | Alla koder i TypeOfTelecomPatientCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Kodverk för typ av kontaktrelation](CodeSystem-masterdata-citizen-patient-typeofcontactrelationcodesystem-cs.md) | Koder för TypeOfContactRelationCodeSystemEnum i domänschemat. Visningstexter ur domänschemats annoteringar. |
| [Resultatkod](CodeSystem-masterdata-citizen-patient-resultcodeenum-cs.md) | Koder för ResultCodeEnumType i domänschemat. Visningstexter ur domänschemats annoteringar. |
| [Typ av företrädare](CodeSystem-masterdata-citizen-patient-typeofrepresentative-cs.md) | Koder för TypeOfRepresentativeEnum i domänschemat. Visningstexter ur domänschemats annoteringar. |
| [Typ av kontakt](CodeSystem-masterdata-citizen-patient-typeofcontact-cs.md) | Koder för TypeOfContactEnum i domänschemat. Visningstexter ur kodverket kv_tele_ekomkontakttyp_47_v1.1 (1.2.752.129.2.2.1.29). |
| [Typ av närståenderelation](CodeSystem-masterdata-citizen-patient-typeofcloserelation-cs.md) | Koder för TypeOfCloseRelationEnum i domänschemat. Visningstexter ur domänschemats annoteringar. |
| [Typ av släktrelation](CodeSystem-masterdata-citizen-patient-typeofrelative-cs.md) | Koder för TypeOfRelativeEnum i domänschemat. Visningstexter ur kodverket kv_släktrelation_12_v1.0 (1.2.752.129.2.2.1.24). |
| [Typ av telekommunikation (kontaktperson)](CodeSystem-masterdata-citizen-patient-typeoftelecomcontactperson-cs.md) | Koder för TypeOfTelecomContactPersonEnum i domänschemat. Visningstexter ur kodverket kv_tele_ekom_typ_13_v1.1 (1.2.752.129.2.2.1.30). |
| [Typ av telekommunikation (patient)](CodeSystem-masterdata-citizen-patient-typeoftelecompatient-cs.md) | Koder för TypeOfTelecomPatientEnum i domänschemat. Visningstexter ur kodverket kv_tele_ekom_typ_13_v1.1 (1.2.752.129.2.2.1.30). |

