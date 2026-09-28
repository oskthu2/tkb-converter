# Artifacts Summary - ehr: patientconsent — Samtyckeshantering v1.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [CancelExtendedConsent](StructureDefinition-cancelextendedconsent.md) | Logisk modell för tjänstekontraktet CancelExtendedConsent (RIV-TA urn:riv:ehr:patientconsent:administration:CancelExtendedConsentResponder:1). Representerar responsens informationsstruktur.Tjänst som återkallar ett samtycke i samtyckestjänsten. Intyget raderas inte utan markeras som återkallad (ej längre giltig) för historikens skull. En återkallan kan ej återtas. |
| [CancelExtendedConsent — Request](StructureDefinition-cancelextendedconsent-request.md) | Logisk modell för requestparametrar i CancelExtendedConsent. |
| [CheckConsent](StructureDefinition-checkconsent.md) | Logisk modell för tjänstekontraktet CheckConsent (RIV-TA urn:riv:ehr:patientconsent:accesscontrol:CheckConsentResponder:1). Representerar responsens informationsstruktur.Tjänst som kontrollerar om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör (vårdenhet eller medarbetare). Med giltigt samtycke avses ett samtycke som fortfarande är giltigt, ej makulerat eller återkallat. |
| [CheckConsent — Request](StructureDefinition-checkconsent-request.md) | Logisk modell för requestparametrar i CheckConsent. |
| [DeleteExtendedConsent](StructureDefinition-deleteextendedconsent.md) | Logisk modell för tjänstekontraktet DeleteExtendedConsent (RIV-TA urn:riv:ehr:patientconsent:administration:DeleteExtendedConsentResponder:1). Representerar responsens informationsstruktur.Tjänst som makulerar ett samtycke i samtyckestjänsten. Makulering av samtycke används enbart för borttagning av felregistrerade samtycken. Samtycket raderas inte utan markeras som makulerad (ej längre giltig) för historikens skull. En makulering kan ej återtas. |
| [DeleteExtendedConsent — Request](StructureDefinition-deleteextendedconsent-request.md) | Logisk modell för requestparametrar i DeleteExtendedConsent. |
| [GetConsentsForCareProvider](StructureDefinition-getconsentsforcareprovider.md) | Logisk modell för tjänstekontraktet GetConsentsForCareProvider (RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForCareProviderResponder:1). Representerar responsens informationsstruktur.Tjänst som läser alla giltiga samtyckesintyg för en viss vårdgivare med grundinformation. Stödjer paginering via flaggan HasMore och CreatedOnOrAfter för inkrementell hämtning. Valfritt returneras även makulerade/återkallade intyg via getCancelledFlag. |
| [GetConsentsForCareProvider — Request](StructureDefinition-getconsentsforcareprovider-request.md) | Logisk modell för requestparametrar i GetConsentsForCareProvider. |
| [GetConsentsForPatient](StructureDefinition-getconsentsforpatient.md) | Logisk modell för tjänstekontraktet GetConsentsForPatient (RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1). Representerar responsens informationsstruktur.Tjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation. Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll gällande åtkomst (CheckConsents). Ogiltiga intyg (giltigt t o m har passerats, makulerade eller återkallade) returneras ej. |
| [GetConsentsForPatient — Request](StructureDefinition-getconsentsforpatient-request.md) | Logisk modell för requestparametrar i GetConsentsForPatient. |
| [GetExtendedConsentsForPatient](StructureDefinition-getextendedconsentsforpatient.md) | Logisk modell för tjänstekontraktet GetExtendedConsentsForPatient (RIV-TA urn:riv:ehr:patientconsent:administration:GetExtendedConsentsForPatientResponder:1). Representerar responsens informationsstruktur.Tjänst som läser registrerade samtyckesintyg för en viss patient med utökad information. Returnerar ExtendedPDLAssertion som innehåller registrerings-, återkallnings- och makuleringsinformation. Det är valbart om ogiltiga (makulerade, återkallade och utgångna) samtyckesintyg skall returneras. |
| [GetExtendedConsentsForPatient — Request](StructureDefinition-getextendedconsentsforpatient-request.md) | Logisk modell för requestparametrar i GetExtendedConsentsForPatient. |
| [RegisterExtendedConsent](StructureDefinition-registerextendedconsent.md) | Logisk modell för tjänstekontraktet RegisterExtendedConsent (RIV-TA urn:riv:ehr:patientconsent:administration:RegisterExtendedConsentResponder:1). Representerar responsens informationsstruktur.Tjänst som registrerar ett intyg gällande viss patient som ger direktåtkomst till patientens information från andra vårdgivare enligt PDL. Intyget avser patientens aktiva medgivande (samtycke), alternativt nödsituation då HoS personal bedömer att behov av uppgifterna finns för nödvändig vård. |
| [RegisterExtendedConsent — Request](StructureDefinition-registerextendedconsent-request.md) | Logisk modell för requestparametrar i RegisterExtendedConsent. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AssertionType — ValueSet](ValueSet-assertiontype-vs.md) | Tillåtna värden för assertionType enligt AssertionTypeCS. |
| [ResultCode — ValueSet](ValueSet-resultcode-vs.md) | Tillåtna svarskoder för samtycketjänstens operationer enligt ResultCodeCS. |
| [Scope — ValueSet](ValueSet-scope-vs.md) | Tillåtna värden för scope (omfång) på intyg enligt ScopeCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AssertionType](CodeSystem-assertiontype-cs.md) | Typ av intyg som ger direktåtkomst till information från andra vårdgivare enligt PDL. Kan vara patientens samtycke eller nödsituation. |
| [ResultCode](CodeSystem-resultcode-cs.md) | Svarskoder för samtycketjänstens operationer. |
| [Scope](CodeSystem-scope-cs.md) | Omfånget/tillämpningsområde på intyget. |

