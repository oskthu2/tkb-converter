# Artifacts Summary - population: residentmaster v1.2

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [LookupResidentForFullProfile](StructureDefinition-lookupresidentforfullprofile.md) | Logisk modell för svaret från tjänstekontraktet LookupResidentForFullProfile (RIV-TA urn:riv:population:residentmaster:LookupResidentForFullProfileResponder:1). Representerar en post (ResidentType, fullständig profil "Full") i svarets lista av träffar. Svaret som helhet innehåller 0..* sådana poster, en per efterfrågat och matchat personnummer (se avsnitt 7). Fält som inte ingår i den aktuella profilen utelämnas normalt inte i denna modell (den täcker hela ResidentType-bruttolistan), men kan i ett faktiskt svar sakna värde eftersom endast Full-profilens fält (se avsnitt 6.1) faktiskt populeras av producenten. |
| [LookupResidentForFullProfile — Request](StructureDefinition-lookupresidentforfullprofile-request.md) | Logisk modell för requestparametrar i LookupResidentForFullProfile (RIV-TA urn:riv:population:residentmaster:LookupResidentForFullProfileResponder:1). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Avregistreringsorsak (komplett) — ValueSet](ValueSet-avregistreringsorsakkomplett-vs.md) | Tillåtna värden för fältet AvregistreringsorsakKodKomplett. |
| [Avregistreringsorsak — ValueSet](ValueSet-avregistreringsorsak-vs.md) | Tillåtna värden för fältet AvregistreringsorsakKod. |
| [Civilståndskod — ValueSet](ValueSet-civilstandkod-vs.md) | Tillåtna värden för fältet CivilstandKod. |
| [Kön — ValueSet](ValueSet-kon-vs.md) | Tillåtna värden för fältet Kon enligt KonTYPE. |
| [Relationsstatus — ValueSet](ValueSet-relationstatus-vs.md) | Tillåtna värden för fältet Status på en Relation. |
| [Relationstyp — ValueSet](ValueSet-relationstyp-vs.md) | Tillåtna värden för fältet Relationstyp. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Avregistreringsorsak](CodeSystem-avregistreringsorsak-cs.md) | Kodverk för avregistreringsorsak enligt RIV-TA population:residentmaster (AvregistreringsorsakKodTYPE). Utgår i ResidentType version 2 till förmån för AvregistreringsorsakKomplettCS. |
| [Avregistreringsorsak (komplett)](CodeSystem-avregistreringsorsakkomplett-cs.md) | Kodverk för avregistreringsorsak enligt RIV-TA population:residentmaster (AvregistreringsorsakKodKomplettTYPE). Ersätter AvregistreringsorsakCS i ResidentType version 2. |
| [Civilståndskod](CodeSystem-civilstandkod-cs.md) | Kodverk för civilstånd enligt RIV-TA population:residentmaster (CivilstandKodTYPE). |
| [Kön](CodeSystem-kon-cs.md) | Kodverk för personens kön enligt RIV-TA population:residentmaster (KonTYPE). OID: ej angivet i källdokument. |
| [Relationsstatus](CodeSystem-relationstatus-cs.md) | Kodverk för relationsstatus enligt RIV-TA population:residentmaster (RelationStatusTYPE). Aviseras endast vid regelbunden ändringspost. |
| [Relationstyp](CodeSystem-relationstyp-cs.md) | Kodverk för typ av relation mellan personer enligt RIV-TA population:residentmaster (RelationstypTYPE). |

