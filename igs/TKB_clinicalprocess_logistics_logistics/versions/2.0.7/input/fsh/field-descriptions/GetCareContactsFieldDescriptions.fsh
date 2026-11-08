// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareContactsFieldDescriptions
* careContact ^definition = "De hälso- och sjukvårdskontakter som matchar begäran."
* careContact ^comment = "TKB-fält: `careContact` (`CareContactType`, kardinalitet 0..*)."
* careContact.careContactHeader ^definition = "Innehåller basinformation om dokumentet"
* careContact.careContactHeader ^comment = "TKB-fält: `.careContactHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* careContact.careContactHeader.documentId ^definition = "Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* careContact.careContactHeader.documentId ^comment = "TKB-fält: `..documentId` (`string`, kardinalitet 1..1)."
* careContact.careContactHeader.sourceSystemHSAId ^definition = "HSA-id för det system som dokumentet är skapat i."
* careContact.careContactHeader.sourceSystemHSAId ^comment = "TKB-fält: `..sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* careContact.careContactHeader.patientId ^definition = "Identifierare för patient."
* careContact.careContactHeader.patientId ^comment = "TKB-fält: `..patientId` (`PersonIdType`, kardinalitet 1..1)."
* careContact.careContactHeader.accountableHealthcareProfessional ^definition = "Hälso- och sjukvårdsperson som ansvarar för vårdkontakten. Ska anges om tillgänglig."
* careContact.careContactHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `..accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* careContact.careContactHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* careContact.careContactHeader.approvedForPatient ^comment = "TKB-fält i PatientSummaryHeaderType: `approvedForPatient` (`boolean`, kardinalitet 1..1)."
* careContact.careContactHeader.nullified ^definition = "Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten."
* careContact.careContactHeader.nullified ^comment = "TKB-fält i PatientSummaryHeaderType: `nullified` (`boolean`, kardinalitet 0..1)."
* careContact.careContactHeader.nullifiedReason ^definition = "Anger orsak till makulering."
* careContact.careContactHeader.nullifiedReason ^comment = "TKB-fält i PatientSummaryHeaderType: `nullifiedReason` (`string`, kardinalitet 0..1)."
* careContact.careContactBody ^comment = "TKB-fält: `.careContactBody` (`CareContactBodyType`, kardinalitet 1..1)."
* careContact.careContactBody.careContactCode ^definition = "Typ av hälso- och sjukvårdsdokumentation. Tillåtna värden är:

1 = Besök

2 = Telefon

3 = Vårdtillfälle

4 = Dagsjukvård

5 = Annan

Utelämnat värde betyder att värdet är okänt."
* careContact.careContactBody.careContactCode ^comment = "TKB-fält: `..careContactCode` (`integer`, kardinalitet 0..1)."
* careContact.careContactBody.careContactReason ^definition = "Text som beskriver orsaken till hälso- och sjukvårdskontakt som hälso- och sjukvårdstagaren själv eller dess företrädare anger."
* careContact.careContactBody.careContactReason ^comment = "TKB-fält: `..careContactReason` (`string`, kardinalitet 0..1)."
* careContact.careContactBody.careContactOrgUnit ^definition = "Den enhet som kontakten utfördes vid"
* careContact.careContactBody.careContactOrgUnit ^comment = "TKB-fält: `..careContactOrgUnit` (`OrgUnitType`, kardinalitet 1..1)."
* careContact.careContactBody.careContactTimePeriod ^definition = "För besök sätts sluttidpunken till samma tid som anges som starttidpunkt.

För planerade kontakter sätts ingen sluttidpunkt.

Pågående vårdtillfälle ska anges på samma sätt som en planerad vårdkontakt, dvs med angivet startdatum, men utan slutdatum."
* careContact.careContactBody.careContactTimePeriod ^comment = "TKB-fält: `..careContactTimePeriod` (`TimePeriodType`, kardinalitet 1..1)."
* careContact.careContactBody.careContactStatus ^definition = "Tillåtna värden är:

1 = Ej påbörjad

2 = Inställd

3 = Pågående

4 = Avbruten

5 = Avslutad"
* careContact.careContactBody.careContactStatus ^comment = "TKB-fält: `..careContactStatus` (`integer`, kardinalitet 0..1)."
