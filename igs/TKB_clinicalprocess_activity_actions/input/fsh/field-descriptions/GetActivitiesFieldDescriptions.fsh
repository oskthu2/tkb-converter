// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetActivitiesFieldDescriptions
* activityGroup ^definition = "Grupp av aktiviteter som delar samma patient, utförare (m. tillhörande organisatorisk knytning), signerare, ytterligare deltagare, källsystem, vårdprocess-id, utrustning, samt plats. Denna nivå är framförallt till för att kunna begränsa mängden redundant data i överföringen i de fall då flera aktiviteter gjorts med samma medverkande (exempelvis de aktiviteter som utförts under ett visst operationstillfälle). Denna klass är en teknisk optimering som inte speglas i NI 2015:1."
* activityGroup ^comment = "TKB-fält: `activityGroup` (`ActivityGroupType`, kardinalitet 0..*)."
* activityGroup.patient ^definition = "Den patient som aktivitetsgruppen avser."
* activityGroup.patient ^comment = "TKB-fält: `patient` (`PatientType`, kardinalitet 1..1)."
* activityGroup.performerRole ^definition = "Den som utfört aktiviteter inom gruppen."
* activityGroup.performerRole ^comment = "TKB-fält: `performerRole` (`PerformerRoleType`, kardinalitet 1..1)."
* activityGroup.legalAuthenticator ^definition = "Den som signerat aktiviteterna inom gruppen."
* activityGroup.legalAuthenticator ^comment = "TKB-fält: `legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* activityGroup.additionalParticipant ^definition = "Övriga deltagare relaterat till aktiviteterna inom gruppen."
* activityGroup.additionalParticipant ^comment = "TKB-fält: `additionalParticipant` (`AdditionalParticipantType`, kardinalitet 0..*)."
* activityGroup.additionalParticipant.device ^definition = "Deltagande artefakt

Använd dessa i additionalParticipant i stället."
* activityGroup.additionalParticipant.device ^comment = "TKB-fält: `device` (`DeviceType`, kardinalitet 0..0)."
* activityGroup.additionalParticipant.location ^definition = "Plats för aktiviteten

Använd dessa i additionalParticipant i stället."
* activityGroup.additionalParticipant.location ^comment = "TKB-fält: `location` (`LocationType`, kardinalitet 0..0)."
* activityGroup.sourceSystem ^definition = "Källsystem som aktivitetsgruppen lagras i."
* activityGroup.sourceSystem ^comment = "TKB-fält: `sourceSystem` (`SourceSystemType`, kardinalitet 1..1)."
* activityGroup.careProcessId ^definition = "UUID för den individanpassade vårdprocess som denna aktivitet ingår i"
* activityGroup.careProcessId ^comment = "TKB-fält: `careProcessId` (`UUIDType`, kardinalitet 0..1)."
* activityGroup.activity ^definition = "De aktiviteter som ligger inom denna grupp av aktiviteter."
* activityGroup.activity ^comment = "TKB-fält: `activity` (`ActivityType`, kardinalitet 1..*)."
