# Artifacts Summary - se.apotekensservice: axs — Hämta patientinformation v7.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [HamtaPatientInfo — Request](StructureDefinition-hamtapatientinfo-request.md) | Logisk modell för begäran i HamtaPatientInfo (urn:riv:se.apotekensservice:axs:HamtaPatientInfoResponder:6, HamtaPatientInfoRequestType), inklusive de två SOAP-huvuden som WSDL:en kräver (LogicalAddress och ArgosHeader). |
| [HamtaPatientInfo — Response](StructureDefinition-hamtapatientinfo.md) | Logisk modell för svaret i HamtaPatientInfo (urn:riv:se.apotekensservice:axs:HamtaPatientInfoResponder:6, HamtaPatientInfoResponseType). Svaret samlar information om patienten från eHälsomyndighetens system: eventuellt dosapotek (EXPO), dosproducent, dosunderlagets status, om det finns aktuella recept i RDH, samt folkbokförings- och samtyckesinformation (FOLK). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Dosunderlagets status](ValueSet-axs-dosunderlagstatus-vs.md) | Alla koder i DosunderlagStatusCS. |
| [Statuskod för person i FOLK](ValueSet-axs-folkstatuskod-vs.md) | Alla koder i FolkStatusKodCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Dosunderlagets status](CodeSystem-axs-dosunderlagstatus-cs.md) | Status för dosunderlaget enligt dokumentationen av dosunderlagStatus i HamtaPatientInfoResponder_6.0.xsd. |
| [Statuskod för person i FOLK](CodeSystem-axs-folkstatuskod-cs.md) | Status på personen i FOLK, mappad från träffkoder i FOLK, enligt dokumentationen av statusKod i se.apotekensservice_axs_5.0.xsd. |

