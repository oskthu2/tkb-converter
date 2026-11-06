// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareContactsFieldDescriptions
* careContact ^definition = "De hälso- och sjukvårdskontakter som matchar begäran."
* careContact ^comment = "TKB-fält: `careContact` (`CareContactType`, kardinalitet 0..*).

**Modellanteckning:** Typ CareContactType."
* careContact.careContactHeader ^definition = "Innehåller basinformation om dokumentet"
* careContact.careContactHeader ^comment = "TKB-fält: `.careContactHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).

**Modellanteckning:** Typ PatientSummaryHeaderType."
* careContact.careContactHeader.documentId ^definition = "Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* careContact.careContactHeader.documentId ^comment = "TKB-fält: `..documentId` (`string`, kardinalitet 1..1)."
* careContact.careContactHeader.sourceSystemHSAId ^definition = "HSA-id för det system som dokumentet är skapat i."
* careContact.careContactHeader.sourceSystemHSAId ^comment = "TKB-fält: `..sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* careContact.careContactHeader.patientId ^definition = "Identifierare för patient."
* careContact.careContactHeader.patientId ^comment = "TKB-fält: `..patientId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Typ PersonIdType. value (id i schemat) = patientens identifierare med 12 tecken utan avskiljare.
system (type i schemat) = OID för typ av identifierare: personnummer 1.2.752.129.2.1.3.1,
samordningsnummer 1.2.752.129.2.1.3.3, reservnummer lokalt definierad OID (t.ex. SLL 1.2.752.97.3.1.3)."
* careContact.careContactHeader.accountableHealthcareProfessional ^definition = "Hälso- och sjukvårdsperson som ansvarar för vårdkontakten. Ska anges om tillgänglig."
* careContact.careContactHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `..accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 0..1)."
* careContact.careContactHeader.accountableHealthcareProfessional.authorTime ^definition = "Den tidpunkt då dokumentet skapades."
* careContact.careContactHeader.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält i HealthcareProfessionalType: `authorTime` (`TimeStampType`, kardinalitet 1..1).

**Modellanteckning:** Typ TimeStampType (ÅÅÅÅMMDDttmmss, svensk lokal tid). Den senaste tidpunkten då informationen
uppdaterades i systemet ska anges om informationen ändrats efter att den skapades. Regel 2."
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "HSA-id för hälso- och sjukvårdspersonal. Ska anges om tillgänglig."
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält i HealthcareProfessionalType: `healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på hälso- och sjukvårdspersonal. Om tillgängligt ska detta anges."
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält i HealthcareProfessionalType: `healthcareProfessionalName` (`string`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas."
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält i HealthcareProfessionalType: `healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** Typ CVType. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas [R9].
originalText används för lokalt kodverk utan OID eller när kod saknas; då anges inget annat värde."
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som angiven hälso- och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges."
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält i HealthcareProfessionalType: `healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1.

**Modellanteckning:** Typ OrgUnitType. Regel 4."
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för vårdenhet som hälso- och sjukvårdspersonen är uppdragstagare för. Ska anges om tillgänglig."
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält i HealthcareProfessionalType: `healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1).

**Modellanteckning:** TKB-tabellen anger 1..1, schemat 0..1. Modellen följer schemat."
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig."
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält i HealthcareProfessionalType: `healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1).

**Modellanteckning:** Vårdgivare för den enhet som hälso- och sjukvårdspersonen är uppdragstagare för.
TKB-tabellen anger 1..1, schemat 0..1. Modellen följer schemat."
* careContact.careContactHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* careContact.careContactHeader.approvedForPatient ^comment = "TKB-fält i PatientSummaryHeaderType: `approvedForPatient` (`boolean`, kardinalitet 1..1)."
* careContact.careContactHeader.nullified ^definition = "Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten."
* careContact.careContactHeader.nullified ^comment = "TKB-fält i PatientSummaryHeaderType: `nullified` (`boolean`, kardinalitet 0..1)."
* careContact.careContactHeader.nullifiedReason ^definition = "Anger orsak till makulering."
* careContact.careContactHeader.nullifiedReason ^comment = "TKB-fält i PatientSummaryHeaderType: `nullifiedReason` (`string`, kardinalitet 0..1)."
* careContact.careContactBody ^comment = "TKB-fält: `.careContactBody` (`CareContactBodyType`, kardinalitet 1..1).

**Modellanteckning:** Typ CareContactBodyType."
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
* careContact.careContactBody.careContactOrgUnit ^comment = "TKB-fält: `..careContactOrgUnit` (`OrgUnitType`, kardinalitet 1..1).

**Modellanteckning:** Typ OrgUnitType."
* careContact.careContactBody.careContactOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet. Regel 4."
* careContact.careContactBody.careContactOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `….orgUnitHSAId` (`HSAIdType`, kardinalitet 1..1)."
* careContact.careContactBody.careContactOrgUnit.orgUnitName ^definition = "Namnet på den organisation som hälso- och sjukvårdsperson enär uppdragstagare på. Regel 4."
* careContact.careContactBody.careContactOrgUnit.orgUnitName ^comment = "TKB-fält: `….orgUnitName` (`string`, kardinalitet 1..1)."
* careContact.careContactBody.careContactOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet"
* careContact.careContactBody.careContactOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `….orgUnitTelecom` (`string`, kardinalitet 0..1)."
* careContact.careContactBody.careContactOrgUnit.orgUnitEmail ^definition = "Epost till enhet"
* careContact.careContactBody.careContactOrgUnit.orgUnitEmail ^comment = "TKB-fält: `….orgUnitEmail` (`string`, kardinalitet 0..1)."
* careContact.careContactBody.careContactOrgUnit.orgUnitAddress ^definition = "Postadress för den organisation som hälso- och sjukvårdsperson en är uppdragstagare på"
* careContact.careContactBody.careContactOrgUnit.orgUnitAddress ^comment = "TKB-fält: `….orgUnitAddress` (`string`, kardinalitet 0..1)."
* careContact.careContactBody.careContactOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationens fysiska placering"
* careContact.careContactBody.careContactOrgUnit.orgUnitLocation ^comment = "TKB-fält: `….orgUnitLocation` (`string`, kardinalitet 0..1)."
* careContact.careContactBody.careContactTimePeriod ^definition = "För besök sätts sluttidpunken till samma tid som anges som starttidpunkt.

För planerade kontakter sätts ingen sluttidpunkt.

Pågående vårdtillfälle ska anges på samma sätt som en planerad vårdkontakt, dvs med angivet startdatum, men utan slutdatum."
* careContact.careContactBody.careContactTimePeriod ^comment = "TKB-fält: `..careContactTimePeriod` (`TimePeriodType`, kardinalitet 1..1)."
* careContact.careContactBody.careContactTimePeriod.start ^definition = "Periodens starttid. Minst ett av start och end ska anges."
* careContact.careContactBody.careContactTimePeriod.start ^comment = "TKB-fält i TimePeriodType: `start` (`TimeStampType`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1."
* careContact.careContactBody.careContactTimePeriod.end ^definition = "Periodens sluttid. Minst ett av start och end ska anges."
* careContact.careContactBody.careContactTimePeriod.end ^comment = "TKB-fält i TimePeriodType: `end` (`TimeStampType`, kardinalitet 0..1)."
* careContact.careContactBody.careContactStatus ^definition = "Tillåtna värden är:

1 = Ej påbörjad

2 = Inställd

3 = Pågående

4 = Avbruten

5 = Avslutad"
* careContact.careContactBody.careContactStatus ^comment = "TKB-fält: `..careContactStatus` (`integer`, kardinalitet 0..1).

**Modellanteckning:** CareContactStatusEnum (kodverk ur NPÖ RIV-spec 2.2): 1 = Ej påbörjad, 2 = Inställd,
3 = Pågående, 4 = Avbruten, 5 = Avslutad."
