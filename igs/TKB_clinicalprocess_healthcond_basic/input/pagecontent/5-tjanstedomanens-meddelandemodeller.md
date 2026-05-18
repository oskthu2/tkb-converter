## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot NI 2017samt mot schema (XSD) för tjänstekontrakt.

### V-MIM – Observationer
Nedan redovisas meddelandeinformationsmodellen för en observation (exklusive header) som returneras i ett svar på en begäran.
Ljusblå klasser har en direkt mappning till NI 2017.
Orange klasser är tillägg utan mappning till NI 2017.
Mörkblå klasser är tekniska platshållare till informationen.

![img_003.png](images/img_003.png)

| V-MIM | XSD Schema | Mappning mot NI 2017 |
| :--- | :--- | :--- |
| Observation.id | observations/observationBody/id | Uppgift i patientjournal.id |
| Observation.dokumentationstidpunkt | observations/observationBody/registrationTime | Uppgift i patientjournal.dokumentationstidpunkt |
| Observation.typ | observations/observationBody/type | Observation.typ |
| Observation.värde | observations/observationBody/value | Observation.värde |
| Observation.skala | observations/observationBody/scale | Observation.skala |
| Observation.status | observations/observationBody/status | Observation.status |
| Observation.lokalisation | observations/observationBody/targetSite | Observation.lokalisation |
| Observation.beskrivning | observations/observationBody/description | Observation.beskrivning |
| Observation.tid | observations/observationBody/time | Observation.tid |
| Observation.negation | observations/observationBody/valueNegation | Observation.negation |
| Individanpassad vårdprocess.id | observations/header/accessControlHeader/careProcessId | Individanpassad vårdprocess.id |
| Samband.typ | observations/observationBody/relation/type | Samband.typ |
| Referens till uppgift i patientjournal.id | observations/observationBody/relation/referredInformation/id | - |
| Referens till uppgift i patientjournal.tidpunkt | observations/observationBody/relation/referredInformation/time | - |
| Referens till uppgift i patientjournal.kategori | observations/observationBody/relation/referredInformation/categorization | - |
| Vårdgivare.id | observations/observationBody/relation/referredInformation/informationOwner/id | - |
| Deltagande.typ | observations/observationBody/participation/type | Deltagande.typ |
| Deltagande.tid | observations/observationBody/participation/time | Deltagande.tid |
| Hälso- och sjukvårdspersonal.id | observations/observationBody/participation/healthcareProfessional/id | Hälso- och sjukvårdspersonal.id |
| Hälso- och sjukvårdspersonal.befattning | observations/observationBody/participation/healthcareProfessional/jobCode | Hälso- och sjukvårdspersonal.befattning |
| Hälso- och sjukvårdspersonal.adress | observations/observationBody/participation/healthcareProfessional/address | Hälso- och sjukvårdspersonal.adress |
| Hälso- och sjukvårdspersonal.elektroniskAdress | observations/observationBody/participation/healthcareProfessional/electronicAddress | Hälso- och sjukvårdspersonal.elektroniskAdress |
| Hälso- och sjukvårdspersonal.legitimation | observations/observationBody/participation/healthcareProfessional/license | Person med kompetens att utföra hälso- och sjukvård.legitimation |
| Hälso- och sjukvårdspersonal.specialistkompetens | observations/observationBody/participation/healthcareProfessional/specialistQualification | Person med kompetens att utföra hälso- och sjukvård.specialistkompetens |
| Patient.id | observations/observationBody/patient/id / och / observations/observationBody/participation/patient/id | Patient.id |
| Patient.adress | observations/observationBody/patient/address / och / observations/observationBody/participation/patient/address | Patient.adress |
| Patient.elektroniskAdress | observations/observationBody/patient/electronicAddress / och / observations/observationBody/participation/patient/electronicAddress | Patient.elektroniskAdress |
| Annan person.typ | observations/observationBody/participation/otherPerson/type | Annan person.typ |
| Roll för plats.typ | observations/observationBody/participation/locationRole/type | - |
| Plats.id | observations/observationBody/participation/locationRole/location/id | - |
| Plats.typ | observations/observationBody/participation/locationRole/location/type | - |
| Plats.namn | observations/observationBody/participation/locationRole/location/name | - |
| Plats.belägenhetsadress | observations/observationBody/participation/locationRole/location/locationAddress | - |
| Position.longitud | observations/observationBody/participation/locationRole/location/position/longitude | - |
| Position.latitud | observations/observationBody/participation/locationRole/location/position/latitude | - |
| Position.altitud | observations/observationBody/participation/locationRole/location/position/altitude | - |
| Resurs.id | observations/observationBody/participation/resource/id | Resurs.id |
| Resurs.typ | observations/observationBody/participation/resource/type | Resurs.typ |
| Resurs.gruppidentitet | observations/observationBody/participation/resource/groupId | Resurs.gruppidentitet |
| Resurs.mängd | observations/observationBody/participation/resource/amount | Resurs.mängd |
| Resursegenskap.typ | observations/observationBody/participation/resource/resourceProperty/type | Resursegenskap.typ |
| Resursegenskap.värde | observations/observationBody/participation/resource/resourceProperty/value | Resursegenskap.värde |
| Organisation.id | observations/observationBody/participation/organisation/id / och / observations/observationBody/participation/healthcareProfessional/organisation/id / och / observations/observationBody/participation/otherPerson/organisation/id | Organisation.id |
| Organisation.typ | observations/observationBody/participation/organisation/type / och / observations/observationBody/participation/healthcareProfessional/organisation/type / och / observations/observationBody/participation/organisation/type | Organisation.typ |
| Organisation.namn | observations/observationBody/participation/organisation/name / och / observations/observationBody/participation/healthcareProfessional/organisation/name / och / observations/observationBody/participation/organisation/name | Organisation.namn |
| Organisation.adress | observations/observationBody/participation/organisation/address / och / observations/observationBody/participation/healthcareProfessional/organisation/address / och / observations/observationBody/participation/organisation/address | Organisation.adress |
| Organisation.elektroniskAdress | observations/observationBody/participation/organisation/electronicAddress / och / observations/observationBody/participation/healthcareProfessional/organisation/electronicAddress / och / observations/observationBody/participation/organisation/electronicAddress | Organisation.elektroniskAdress |
| Person.person-id | observations/observationBody/patient/person/id / och / observations/observationBody/participation/healthcareProfessional/person/id / och / observations/observationBody/participation/patient/person/id / och / observations/observationBody/participation/otherPerson/person/id | Person.person-id |
| Person.namn | observations/observationBody/patient/person/name / och / observations/observationBody/participation/healthcareProfessional/person/name / och / observations/observationBody/participation/patient/person/name / och / observations/observationBody/participation/otherPerson/person/name | Person.namn |

### Formatregler
Inga utöver de som beskrivs i fältregler i kapitel 6 Tjänstekontrakt.

