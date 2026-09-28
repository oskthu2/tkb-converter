# Artifacts Summary - healthcertificate: lifeline v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [BirthRegistration — Request](StructureDefinition-birthregistration-request.md) | Logisk modell för begäran i BirthRegistration (urn:riv:healthcertificate:lifeline:BirthRegistrationResponder:1, BirthRegistrationTYPE), inklusive SOAP-huvuden enligt WSDL. |
| [BirthRegistration — Response](StructureDefinition-birthregistration.md) | Logisk modell för svaret i BirthRegistration (urn:riv:healthcertificate:lifeline:BirthRegistrationResponder:1, BirthRegistrationResponseTYPE). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Anmälan mottagen](ValueSet-lifeline-anmalanmottagen-vs.md) | Alla koder i AnmalanMottagenCS. |
| [Anmälningstyp](ValueSet-lifeline-anmalningstyp-vs.md) | Alla koder i AnmalningsTypCS. |
| [Barnets kön](ValueSet-lifeline-kon-vs.md) | Alla koder i KonCS. |
| [Feltyp](ValueSet-lifeline-erroridenum-vs.md) | Alla koder i ErrorIdEnumCS. |
| [Levande vid födelsen](ValueSet-lifeline-levande-vs.md) | Alla koder i LevandeCS. |
| [Resultatkod](ValueSet-lifeline-resultcodeenum-vs.md) | Alla koder i ResultCodeEnumCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Anmälan mottagen](CodeSystem-lifeline-anmalanmottagen-cs.md) | Koder för AnmalanMottagen i domänschemat. Visningstexter ur TKB avsnitt 3.4. |
| [Anmälningstyp](CodeSystem-lifeline-anmalningstyp-cs.md) | Koder för AnmalningsTyp i domänschemat. Visningstexter ur TKB avsnitt 3.4. |
| [Barnets kön](CodeSystem-lifeline-kon-cs.md) | Koder för Kon i domänschemat. Visningstexter ur TKB avsnitt 3.4. |
| [Feltyp](CodeSystem-lifeline-erroridenum-cs.md) | Koder för ErrorIdEnumType i domänschemat. |
| [Levande vid födelsen](CodeSystem-lifeline-levande-cs.md) | Koder för Levande i domänschemat. Visningstexter ur TKB avsnitt 3.4. |
| [Resultatkod](CodeSystem-lifeline-resultcodeenum-cs.md) | Koder för ResultCodeEnumType i domänschemat. Visningstexter ur TKB avsnitt 2.2. |

