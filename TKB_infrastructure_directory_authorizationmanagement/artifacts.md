# Artifacts Summary - infrastructure: directory: authorizationmanagement v2.4.4

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetAdminCredentialsForPerson](StructureDefinition-getadmincredentialsforperson.md) | Logisk modell för tjänstekontraktet GetAdminCredentialsForPerson (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPerson:2). Identisk med GetAdminCredentialsForPersonIncludingProtectedPerson förutom att skyddade personer aldrig returneras (fältet protectedPerson returneras aldrig). |
| [GetAdminCredentialsForPerson — Request](StructureDefinition-getadmincredentialsforperson-request.md) | Logisk modell för requestparametrar i GetAdminCredentialsForPerson. Exakt ett av fälten personHsaId och personalIdentityNumber ska anges. |
| [GetAdminCredentialsForPersonIncludingProtectedPerson](StructureDefinition-getadmincredentialsforpersonincludingprotectedperson.md) | Logisk modell för tjänstekontraktet GetAdminCredentialsForPersonIncludingProtectedPerson (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPersonIncludingProtectedPerson:2). Söker ut en persons administrativa behörighetsegenskaper inom ett visst Behörighetsområde, inklusive skyddade personer. |
| [GetAdminCredentialsForPersonIncludingProtectedPerson — Request](StructureDefinition-getadmincredentialsforpersonincludingprotectedperson-request.md) | Logisk modell för requestparametrar i GetAdminCredentialsForPersonIncludingProtectedPerson. Exakt ett av fälten personHsaId och personalIdentityNumber ska anges. |
| [GetCredentialsForPerson](StructureDefinition-getcredentialsforperson.md) | Logisk modell för tjänstekontraktet GetCredentialsForPerson (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetCredentialsForPerson:2). Identisk med GetCredentialsForPersonIncludingProtectedPerson förutom att information om skyddade personer aldrig returneras (fältet protectedPerson returneras aldrig). |
| [GetCredentialsForPerson — Request](StructureDefinition-getcredentialsforperson-request.md) | Logisk modell för requestparametrar i GetCredentialsForPerson. Exakt ett av fälten personHsaId och personalIdentityNumber ska anges. |
| [GetCredentialsForPersonIncludingProtectedPerson](StructureDefinition-getcredentialsforpersonincludingprotectedperson.md) | Logisk modell för tjänstekontraktet GetCredentialsForPersonIncludingProtectedPerson (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetCredentialsForPersonIncludingProtectedPerson:2). Representerar responsens informationsstruktur. Returnerar behörighetsgrundande egenskaper för angiven person inklusive person med skyddade personuppgifter. |
| [GetCredentialsForPersonIncludingProtectedPerson — Request](StructureDefinition-getcredentialsforpersonincludingprotectedperson-request.md) | Logisk modell för requestparametrar i GetCredentialsForPersonIncludingProtectedPerson. Exakt ett av fälten personHsaId och personalIdentityNumber ska anges. |
| [GetHospCredentialsForPerson](StructureDefinition-gethospcredentialsforperson.md) | Logisk modell för tjänstekontraktet GetHospCredentialsForPerson (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetHospCredentialsForPerson:1). Hämtar från Socialstyrelsen utlämnad behörighetsgrundande HOSP-information för angiven person. |
| [GetHospCredentialsForPerson — Request](StructureDefinition-gethospcredentialsforperson-request.md) | Logisk modell för requestparametrar i GetHospCredentialsForPerson. |
| [GetHospLastUpdate](StructureDefinition-gethosplastupdate.md) | Logisk modell för tjänstekontraktet GetHospLastUpdate (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetHospLastUpdate:1). Hämtar tidpunkt för då HOSP-informationen tillgängliggjorts efter det senaste utlämnandet från Socialstyrelsen. Kontraktet har inga inparametrar. |
| [HandleHospCertificationPerson](StructureDefinition-handlehospcertificationperson.md) | Logisk modell för tjänstekontraktet HandleHospCertificationPerson (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:HandleHospCertificationPerson:1). Representerar responsens informationsstruktur. Används för att lägga till eller ta bort personobjekt från kommande utlämningsförfrågningar av HOSP-information till Socialstyrelsen. |
| [HandleHospCertificationPerson — Request](StructureDefinition-handlehospcertificationperson-request.md) | Logisk modell för requestparametrar i HandleHospCertificationPerson. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [HOSP Operation — ValueSet](ValueSet-hosp-operation-vs.md) | Tillåtna värden för operation i HandleHospCertificationPerson. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [HOSP Operation](CodeSystem-hosp-operation-cs.md) | Kodverk för operation i HandleHospCertificationPerson. Anger om en person ska läggas till eller tas bort från utlämningsförfrågningar av HOSP-information. |

