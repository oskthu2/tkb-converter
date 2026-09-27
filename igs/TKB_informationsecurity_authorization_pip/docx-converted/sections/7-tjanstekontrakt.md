## Tjänstekontrakt

### GetSeals
Tjänstekontraktet GetSeals används för att vårdgivare skall kunna försegla invånarens åtkomst till sin egen information. Invånarens information blir då ej tillgänglig för invånaren via självbetjäningstjänster. Används då det finns risk att invånaren befinner sig i vanmaktssituation eller då invånaren ej önskar åtkomst alls till sin journalinformation. Beslut om att försegla journalinformation ligger hos invånaren. Efter taget beslut kan försegling göras av invånaren själv (endast full försegling) eller av vårdpersonal hos vårdgivare som hjälper invånaren att försegla delar av (vårdgivarförsegling eller enhetsförsegling) alternativt all journalinformation (full försegling).

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | IIType | Identitet på den patient som konsument vill hämta förseglingar för. / Patientens personnummer. / root: / personnummer: 1.2.752.129.2.1.3.1 / extension: patientens identitet / personnummer: ÅÅÅÅMMDDNNNN | 1..1 |

| Svar |  |  |  |
| :--- | :--- | :--- | :--- |
| seal | SealType | Försegling av patientens åtkomst till den egna informationen. / En försegling kan göras på enhetsnivå, vårdgivarnivå eller en full försegling. / En full försegling ersätter alla andra förseglingar där tidsperioden överlappar. | 0..* |
| ../patientId* | IIType | Identitet på den patient som förseglingen avser. Patientens personnummer. / root: / personnummer: 1.2.752.129.2.1.3.1 / extension: patientens identitet / personnummer: ÅÅÅÅMMDDNNNN | 1..1 |
| ../timeCreated* | TimeStampType | Tidpunkt då förseglingen skapades. | 1..1 |
| ../timeLastUpdated | TimeStampType | Den tidpunkt som förseglingen senast uppdaterades. Är samma tidpunkt som timeCreated om ingen uppdatering har gjorts efter timeCreated. | 1..1 |
| ../validFrom* | DateType | Det datum som förseglingen börjar gälla från och med. / För mer information kring de olika tidsperioderna, se informationsspecifikationen kapitel 7.6 [R4]. | 0..1 |
| ../validTo* | DateType | Eventuellt datum för då förseglingen upphör att gälla. / För mer information kring de olika tidsperioderna, se informationsspecifikationen kapitel 7.6 [R4]. | 0..1 |
| ../deactivationDate | DateType | Datum för en forcerad deaktivering. / Fältet anger inget värde om förseglingen är aktiv eller om validTo-datum passerats. / För mer information kring de olika tidsperioderna, se informationsspecifikationen kapitel 7.6 [R4]. | 0..1 |
| ../orgUnitSeal* | OrgUnitSealType | Försegling av information från en specifik organisationsenhet. / En enhetsförsegling ställer krav på att tjänstekonsumenten (invånarens direktåtkomst eller utlämnande) filtrerar bort vårdinformation som matchar enheten som anges i en enhetsförsegling. Enhet kan vara på godtycklig nivå i vårdgivarens organisationsstruktur. För att få avsedd effekt behöver vårdgivaren som registrerar en enhetsförsegling säkerställa att enheten som anges för försegling motsvarar värden som används i Journal- och läkemedels-kontrakten i något av dessa fält: / accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId / accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId / Det gäller oavsett om vårdsystemet genererar HSAid:n eller använder systeminterna enhetsidentiteter. / Det kan endast finnas en orgUnitSeal, careProviderSeal eller ingen. | 0..1 |
| ../../orgUnitId | IIType | HSA-id för den enhet som förseglingen avser. / root: 1.2.752.129.2.1.4.1 / extension: id på enhet | 1..1 |
| ../../sealPeriod | DatePeriodType | Används för att ange händelsetidpunkt för journalinformationen. / Exempel: / Invånare vill skapa en försegling som skall gälla mellan 2016 och framåt i två år och innefatta journalinformation som har händelsetidpunkt mellan 2012 och 2016. / validFrom: 20160101 / validTo: 20180101 / sealPeriod/start: 20120101 / sealPeriod/end: 20160101 / För mer information kring de olika tidsperioderna, se informationsspecifikationen kapitel 7.6 [R4]. | 0..1 |
| ../../../start | DateType | Start på den tidsperiod för journalinformation vars händelsetidpunkt skall omfattas av försegling. | 1..1 |
| ../../../end | DateType | Slut på den tidsperiod för journalinformation vars händelsetidpunkt skall omfattas av försegling. | 1..1 |
| ../careProviderSeal* | CareProviderSealType | Försegling av all information från en vårdgivare. / Det kan endast finnas en orgUnitSeal, careProviderSeal eller ingen. | 0..1 |
| ../../careProviderId | IIType | HSA-id för den vårdgivare som förseglingen avser. / root: 1.2.752.129.2.1.4.1 / extension: id på vårdgivare | 1..1 |
| ../../sealPeriod | DatePeriodType | Används för att ange händelsetidpunkt för journalinformationen. / Exempel: / Invånare vill skapa en försegling som skall gälla mellan 2016 och framåt i två år och innefatta journalinformation som har händelsetidpunkt mellan 2012 och 2016. / validFrom: 20160101 / validTo: 20180101 / sealPeriod/start: 20120101 / sealPeriod/end: 20160101 / För mer information kring de olika tidsperioderna, se informationsspecifikationen kapitel 7.6 [R4]. | 0..1 |
| ../../../start | DateType | Start på den tidsperiod för journalinformation vars händelsetidpunkt skall omfattas av försegling. | 1..1 |
| ../../../end | DateType | Slut på den tidsperiod för journalinformation vars händelsetidpunkt skall omfattas av försegling. | 1..1 |
| ../fullSeal* | FullSealType | När klassen är instansierad så gäller full försegling. / orgUnitSeal eller careProviderSeal får ej förekomma vid en fullständig försegling. / Om fullSeal är instansierad och det ändå finns en orgUnitSeal eller careProviderSeal så gäller fullSeal. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Fält 1 - Svarselement
ÖR1: Full försegling innebär att orgUnitSeal och careProviderSeal utelämnas och att fullSeal är angiven.
ÖR2: Försegling på vårdgivarnivå anges med att careProviderSeal anges och att orgUnitSeal och fullSeal utelämnas.
ÖR3: Försegling på enhetsnivå anges med att orgUnitSeal anges och att careProviderSeal och fullSeal utelämnas.
ÖR4: validTo får inte vara äldre än validFrom
ÖR5: timeLastUpdated får inte vara äldre än timeCreated
ÖR6: patientId root får endast sättas till pnr sam samt formatet måste följa (utan bindestreck)
ÖR7: Listan av seal (0..*) får inte innehålla tidsmässigt överlappande information om en försegling, som skulle kunna skapa tvetydighet i tolkningen av listan. Exempelvis försegling på samma vårdenhet med överlappande datum.
För att validera ett svarsmeddelande enligt ovanstående regler finns det en schematron-fil medpaketerad under katalogen test-suite/GetSeals som heter constraints.xml.

##### Icke funktionella krav
Inga krav utöver de i kap 4.2

###### SLA-krav
Inga krav utöver de i kap 4.2.1
