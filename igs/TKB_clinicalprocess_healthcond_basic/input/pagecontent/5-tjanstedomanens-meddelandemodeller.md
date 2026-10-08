## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot NI 2015:1 [R5] samt mot schema (XSD) för tjänstekontrakt.

### V-MIM – Observationer

![img_010.png](img_010.png)
*Figur 5. Mörkblå klasser och cyanfärgade markeringar visar skillnader från NI release 2015:1. I vissa fall är det endast en avvikande kardinalitet.*

| XSD Schema | Mappning mot NI 2015 release 1 / (eller V-MIM enligt ovan) |
| :--- | :--- |
| ObservationGroup. sourceSystem | NI 2015.1 / Saknar motsvarighet / I V-MIM / Källsystem.id |
| Observation.id | Uppgift i patientjournal.id |
| Observation.type | Observation.typ |
| Observation.status | Observation.status |
| Observation.time | Observation.tid |
| Observation.method | NI 2015.1 / Saknar motsvarighet / I V-MIM / Observation.metod |
| Observation.value | Observation.värde |
| Observation.targetSite | Observation.lokalisation |
| Observation.valueNegation | Observation.negation |
| Observation.description | Observation.beskrivning |
| Observation.RegistrationTime | Uppgift i patientjournal.dokumentationstidpunkt |
| Observation.approvedForPatient | NI 2015.1 / Saknar motsvarighet / I V-MIM / Uppgift i patientjournal.godkändFörUtlämnandeTillPatient |
| Location.id | NI 2015.1 / Saknar motsvarighet / I V-MIM / Plats.id |
| Location.name | NI 2015.1 / Saknar motsvarighet / I V-MIM / Plats.namn |
| Location.address | NI 2015.1 / Saknar motsvarighet / I V-MIM / Plats.adress |
| Location.electronicAddress | NI 2015.1 / Saknar motsvarighet / I V-MIM / Plats.elektroniskAdress |
| Patient.id | Person.person-id/Patient.id |
| Patient.name | Person.förnamn / Person.efternamn / Person.mellannamn / Person.tilltalsnamnsmarkering |
| Patient.dateOfBirth | Person.födelsetidpunkt |
| Patient.gender | Person.kön |
| LegalAuthenticator.id | NI 2015:1 / Saknar motsvarighet / I V-MIM / Deltagande(signerare)->Professionell aktör.id |
| LegalAuthenticator.time | NI 2015.1 / Saknar motsvarighet / I V-MIM / Deltagande(signerare).tid |
| LegalAuthenticator.name | NI 2015.1 / Saknar motsvarighet / I V-MIM / Deltagande(signerare)->Professionell aktör->Person.förnamn + Person.efternamn |
| SourceSystem.id | NI 2015.1 / Saknar motsvarighet / I V-MIM / Källsystem.id |
| Relation.code | Samband.typ |
| ReferredInformation.id | NI 2015:1 / Uppgift i patientjournal.id / I V-MIM / Referens till Uppgift i patientjournal.id |
| ReferredInformation.time | NI 2015:1 / Saknar motsvarighet / I V-MIM / Referens till Uppgift i patientjournal.tidpunkt |
| ReferredInformation.type | NI 2015:1 / Saknar motsvarighet / I V-MIM / Saknar motsvarighet |
| InformationOwner.id | NI 2015:1 / Saknar motsvarighet / I V-MIM / Källsystem.id |
| PerformerRole.id | NI 2015:1 / Saknar motsvarighet / I V-MIM / Deltagande->Roll->Professionell aktör.id eller patient.id/person.person-id |
| PerformerRole.code | NI 2015:1 / Saknar motsvarighet / I V-MIM / Deltagande->Roll.typ |
| Person.id | Person.person-id |
| Person.name | Person.förnamn / Person.mellannamn / Person.efternamn / Person.tilltalsnamnsmarkering |
| CareUnit.id | NI 2015:1 / Organisation.id / I V-MIM / Organisation(vårdenhet).id |
| CareUnit.name | NI 2015:1 / Organisation.namn / V-MIM / Organisation(vårdenhet).namn |
| CareGiver.id | NI 2015:1 / Organisation. id / V-MIM / Organisation(vårdgivare).id |
| CareGiver.name | NI 2015:1 / Organisation.namn / V-MIM / Organisation(vårdgivare).namn |
| AdditionalParticipant.id | NI 2015.1 / Saknar motsvarighet / V-MIM / Professionell aktör.id (om sådan deltagare) |
| AdditionalParticipant.type | Deltagande.typ |
| AdditionalParticipant.role | NI 2015.1 / Saknar motsvarighet / V-MIM / Roll.typ |
| AdditionalParticipant.time | Deltagande.tid |
| Device.id | NI 2015.1 / Saknar motsvarighet / V-MIM / Utrustning.id |
| Device.type | NI 2015.1 / Saknar motsvarighet / V-MIM / Utrustning.typ |
| Device.model | NI 2015.1 / Saknar motsvarighet / V-MIM / Utrustning t.modell |

### Formatregler
Inga utöver de som beskrivs i samband med fältregler.

