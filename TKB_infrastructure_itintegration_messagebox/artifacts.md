# Artifacts Summary - infrastructure: itintegration: messagebox v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [DeleteMessages — Request](StructureDefinition-deletemessages-request.md) | Logisk modell för begäran i DeleteMessages (urn:riv:infrastructure:itintegration:messagebox:DeleteMessagesResponder:1, DeleteMessagesType), inklusive SOAP-huvuden enligt WSDL. |
| [DeleteMessages — Response](StructureDefinition-deletemessages.md) | Logisk modell för svaret i DeleteMessages (urn:riv:infrastructure:itintegration:messagebox:DeleteMessagesResponder:1, DeleteMessagesResponseType). |
| [GetMessages — Request](StructureDefinition-getmessages-request.md) | Logisk modell för begäran i GetMessages (urn:riv:infrastructure:itintegration:messagebox:GetMessagesResponder:1, GetMessagesType), inklusive SOAP-huvuden enligt WSDL. |
| [GetMessages — Response](StructureDefinition-getmessages.md) | Logisk modell för svaret i GetMessages (urn:riv:infrastructure:itintegration:messagebox:GetMessagesResponder:1, GetMessagesResponseType). |
| [ListMessages — Request](StructureDefinition-listmessages-request.md) | Logisk modell för begäran i ListMessages (urn:riv:infrastructure:itintegration:messagebox:ListMessagesResponder:1, ListMessagesType), inklusive SOAP-huvuden enligt WSDL. |
| [ListMessages — Response](StructureDefinition-listmessages.md) | Logisk modell för svaret i ListMessages (urn:riv:infrastructure:itintegration:messagebox:ListMessagesResponder:1, ListMessagesResponseType). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Meddelandestatus](ValueSet-messagebox-messagestatus-vs.md) | Alla koder i MessageStatusCS. |
| [Resultatkod](ValueSet-messagebox-resultcode-vs.md) | Alla koder i ResultCodeCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Meddelandestatus](CodeSystem-messagebox-messagestatus-cs.md) | Koder för MessageStatusType i domänschemat. |
| [Resultatkod](CodeSystem-messagebox-resultcode-cs.md) | Koder för ResultCodeEnum i domänschemat. Visningstexter ur TKB avsnitt 4.2. |

