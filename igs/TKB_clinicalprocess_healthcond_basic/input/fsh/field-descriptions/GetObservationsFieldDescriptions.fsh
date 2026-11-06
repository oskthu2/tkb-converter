// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetObservationsFieldDescriptions
* observationGroup ^definition = "Grupp av observationer som delar samma patient, utförare (m. tillhörande organisatorisk knytning), signerare, ytterligare deltagare, källsystem, vårdprocess-id, utrustning, samt plats. Denna nivå är framförallt till för att kunna begränsa mängden redundant data i överföringen i de fall då flera observationer gjorts med samma medverkande (exempelvis mätning av systoliskt och diastoliskt blodtryck). Denna klass är en teknisk optimering som inte speglas i NI 2015:1."
* observationGroup ^comment = "TKB-fält: `observationGroup` (`ObservationGroupType`, kardinalitet 0..*)."
* observationGroup.patient ^definition = "Den patient som observationsgruppen avser."
* observationGroup.patient ^comment = "TKB-fält: `patient` (`PatientType`, kardinalitet 1..1)."
* observationGroup.performerRole ^definition = "Den som utfört observationerna inom gruppen."
* observationGroup.performerRole ^comment = "TKB-fält: `performerRole` (`PerformerRoleType`, kardinalitet 1..1)."
* observationGroup.legalAuthenticator ^definition = "Den som signerat observationerna inom gruppen."
* observationGroup.legalAuthenticator ^comment = "TKB-fält: `legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1).

**Modellanteckning:** En kompakt och specifik version av AdditionalParticipation; indirekt en Professionell aktör med
deltagandetyp signerare enligt V-MIM."
* observationGroup.additionalParticipant ^definition = "Övriga deltagare relaterat till observationerna inom gruppen."
* observationGroup.additionalParticipant ^comment = "TKB-fält: `additionalParticipant` (`AdditionalParticipantType`, kardinalitet 0..*)."
* observationGroup.sourceSystem ^definition = "Källsystem som observationsgruppen lagras i."
* observationGroup.sourceSystem ^comment = "TKB-fält: `sourceSystem` (`SourceSystemType`, kardinalitet 1..1)."
* observationGroup.observation ^definition = "De observationer som ligger inom denna grupp av observationer."
* observationGroup.observation ^comment = "TKB-fält: `observation` (`ObservationType`, kardinalitet 1..*)."
