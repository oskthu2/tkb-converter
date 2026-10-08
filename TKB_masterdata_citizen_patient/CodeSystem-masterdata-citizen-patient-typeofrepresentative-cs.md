# Typ av företrädare - masterdata: citizen: patient v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Typ av företrädare**

## CodeSystem: Typ av företrädare 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeofrepresentative-cs | *Version*:1.0.0-rc1.snapshot |
| Active as of 2026-10-08 | *Computable Name*:TypeOfRepresentativeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för TypeOfRepresentativeEnum i domänschemat. Visningstexter ur domänschemats annoteringar. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Typ av företrädare](ValueSet-masterdata-citizen-patient-typeofrepresentative-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "masterdata-citizen-patient-typeofrepresentative-cs",
  "url" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeofrepresentative-cs",
  "version" : "1.0.0-rc1.snapshot",
  "name" : "TypeOfRepresentativeCS",
  "title" : "Typ av företrädare",
  "status" : "active",
  "date" : "2026-10-08T18:42:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för TypeOfRepresentativeEnum i domänschemat. Visningstexter ur domänschemats annoteringar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "1",
    "display" : "vårdnadshavare - förälder eller av domstol särskilt utsedd person som har att utöva vårdnaden om ett barn"
  },
  {
    "code" : "2",
    "display" : "förmyndare - person som utövar förmynderskap"
  },
  {
    "code" : "3",
    "display" : "ombud - person som har fullmakt att föra talan för annan person eller grupp och bevaka personens eller gruppens intressen"
  },
  {
    "code" : "4",
    "display" : "god man - person som är utsedd att företräda en viss person som på grund av sjukdom, psykisk störning, försvagat hälsotillstånd eller liknande förhållande behöver hjälp med att bevaka sin rätt, förvalta sin egendom eller sörja för sin person utan att dennes rättshandlingsförmåga begränsas"
  },
  {
    "code" : "5",
    "display" : "förvaltare - person som är utsedd att företräda en viss person som är ur stånd att vårda sig själv eller sin egendom och där dennes rättshandlingsförmåga är begränsad"
  }]
}

```
