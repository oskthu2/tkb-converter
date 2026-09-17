# Artifacts Summary - masterdata: organisationalresources: licensetopractice v2.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetHospPersonForIVO](StructureDefinition-gethosppersonforivo.md) | Logisk modell för tjänstekontraktet GetHospPersonForIVO (RIV-TA urn:riv:masterdata:organisationalresources:licensetopractice:GetHospPersonForIvoResponder:2). Representerar responsens informationsstruktur — en lista av HoSp-personer med fullständig legitimationsinformation. Tjänsten ger Inspektionen för vård och omsorg (IVO) direktåtkomst till Socialstyrelsens register över hälso- och sjukvårdspersonal (HoSp) med utökade sökparametrar jämfört med den publika tjänsten. |
| [GetHospPersonForIVO — Request](StructureDefinition-gethosppersonforivo-request.md) | Logisk modell för requestparametrar i GetHospPersonForIVO. IVO har utökade sökparametrar jämfört med den publika tjänsten, bland annat möjlighet att filtrera på länskod, kommunkod, folkbokföringsort, förskrivarkod, yrke och specialistinriktning. Sökfälten folkbokforingsort, yrke och specialistinriktning stöder wildcard-sökning. |
| [GetHospPersonForPublicHealthcare](StructureDefinition-gethosppersonforpublichealthcare.md) | Logisk modell för tjänstekontraktet GetHospPersonForPublicHealthcare (RIV-TA urn:riv:masterdata:organisationalresources:licensetopractice:GetHospPersonForPublicHealthCareResponder:2). Representerar responsens informationsstruktur — en lista av HoSp-personer med legitimationsinformation. Tjänsten ger offentliga vårdgivare direktåtkomst till Socialstyrelsens register över hälso- och sjukvårdspersonal (HoSp). |
| [GetHospPersonForPublicHealthcare — Request](StructureDefinition-gethosppersonforpublichealthcare-request.md) | Logisk modell för requestparametrar i GetHospPersonForPublicHealthcare. Antingen anges personId, eller ett eller flera av fälten efternamn, fornamn, fodelsedatum. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Kön — ValueSet](ValueSet-kon-vs.md) | Tillåtna värden för kön enligt kodverket Kön (OID: 1.2.752.129.2.2.1.1). |
| [Legitimerat yrke — ValueSet](ValueSet-legitimerat-yrke-vs.md) | Tillåtna värden för legitimerat yrke enligt kodverket LegitimeratYrke (OID: 1.2.752.116.3.1.3). |
| [Typ av behörighetsbegränsning — ValueSet](ValueSet-typ-av-behorighetsbegransning-vs.md) | Tillåtna värden för typ av behörighetsbegränsning (OID: 1.2.752.116.3.1.5). |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Kön](CodeSystem-kon-cs.md) | Kodverk för kön. OID: 1.2.752.129.2.2.1.1. |
| [Legitimerat yrke](CodeSystem-legitimerat-yrke-cs.md) | Kodverk för legitimerade yrken inom hälso- och sjukvård. OID: 1.2.752.116.3.1.3. |
| [Typ av behörighetsbegränsning](CodeSystem-typ-av-behorighetsbegransning-cs.md) | Kodverk för typer av behörighetsbegränsning för legitimerade yrken. OID: 1.2.752.116.3.1.5. |

