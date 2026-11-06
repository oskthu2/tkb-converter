# Artifacts Summary - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Process* — Svar (ResultType)](StructureDefinition-process-result.md) | Logisk modell för svaret i ProcessRequest, ProcessRequestConfirmation och ProcessRequestOutcome (ProcessRequest*ResponseType.result av typen ResultType). Beskriver om begäran gick bra eller ej, se avsnitt 4.3 Felhantering. |
| [ProcessRequest — Remiss (begäran)](StructureDefinition-processrequest.md) | Logisk modell för begäran i ProcessRequest (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestResponder:2, element request av typen RequestType). Remittenten skickar en allmänremiss till remissmottagaren. Svaret är enbart ett resultat, se ProcessResult. |
| [ProcessRequestConfirmation — Remissbekräftelse (begäran)](StructureDefinition-processrequestconfirmation.md) | Logisk modell för begäran i ProcessRequestConfirmation (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestConfirmationResponder:2, element requestConfirmation av typen RequestConfirmationType). Remissmottagaren skickar bekräftelse, besked om vidareskickning, kompletteringsbegäran, avbrott eller avvisning till remittenten. Svaret är enbart ett resultat, se ProcessResult. |
| [ProcessRequestOutcome — Remissvar (begäran)](StructureDefinition-processrequestoutcome.md) | Logisk modell för begäran i ProcessRequestOutcome (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestOutcomeResponder:2, element requestOutcome av typen RequestOutcomeType samt valfri originalRequest). Remissbesvararen skickar delsvar, preliminärt svar eller slutsvar till remittenten. Svaret är enbart ett resultat, se ProcessResult. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ErrorCodeEnum](ValueSet-errorcode-vs.md) | Alla koder i ErrorCodeCS. |
| [ResultCodeEnum](ValueSet-resultcode-vs.md) | Alla koder i ResultCodeCS. |
| [codeForGenderType](ValueSet-gender-vs.md) | Alla koder i GenderCS. |
| [codeForRequestType](ValueSet-requesttype-vs.md) | Alla koder i RequestTypeCS. |
| [codeForTelecomType](ValueSet-telecomtype-vs.md) | Alla koder i TelecomTypeCS. |
| [codeRequestConfirmationType](ValueSet-requestconfirmationtype-vs.md) | Alla koder i RequestConfirmationTypeCS. |
| [codeRequestOutcomeType](ValueSet-requestoutcometype-vs.md) | Alla koder i RequestOutcomeTypeCS. |
| [codeVersionReason](ValueSet-versionreason-vs.md) | Alla koder i VersionReasonCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ErrorCodeEnum](CodeSystem-errorcode-cs.md) | Felkod när resultCode är ERROR (clinicalprocess_activity_request_2.2.xsd ErrorCodeEnum). |
| [ResultCodeEnum](CodeSystem-resultcode-cs.md) | Resultatkod för anropet (clinicalprocess_activity_request_2.2.xsd ResultCodeEnum). |
| [codeForGenderType](CodeSystem-gender-cs.md) | Administrativt kön, Skatteverket OID 1.2.752.129.2.2.1.1 (codes_2.2.xsd codeForGenderType_values). |
| [codeForRequestType](CodeSystem-requesttype-cs.md) | Remisstyp (codes_2.2.xsd codeForRequestType_values). |
| [codeForTelecomType](CodeSystem-telecomtype-cs.md) | Typ av telefonnummer (codes_2.2.xsd codeForTelecomType_values). |
| [codeRequestConfirmationType](CodeSystem-requestconfirmationtype-cs.md) | Typ av remissbekräftelse (codes_2.2.xsd codeRequestConfirmationType_values). |
| [codeRequestOutcomeType](CodeSystem-requestoutcometype-cs.md) | Typ av remissvar (codes_2.2.xsd codeRequestOutcomeType_values). |
| [codeVersionReason](CodeSystem-versionreason-cs.md) | Versionsorsak enligt Kv e-remiss versionsorsak (codes_2.2.xsd codeVersionReason_values). |

