// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterExtendedConsentRequestFieldDescriptions
* assertionId ^definition = "Unik, global identifierare för intyget. Tjänstekonsumenten ansvarar för att generera id:et."
* assertionId ^comment = "TKB-fält: `assertionId` (`patientconsent:Id`, kardinalitet 1..1)."
* assertionType ^definition = "Typ av intyg som ger direktåtkomst till information från andra vårdgivare enligt PDL. Kan vara patientens samtycke eller nödsituation."
* assertionType ^comment = "TKB-fält: `assertionType` (`patientconsent:AssertionType`, kardinalitet 1..1).

**Modellanteckning:** Anger om intyget är ett patientsamtycke eller nödsituationsintyg."
* scope ^definition = "Omfånget/tillämpningsområde på intyget."
* scope ^comment = "TKB-fält: `scope` (`patientconsent:Scope`, kardinalitet 1..1)."
* patientId ^definition = "Patientens personnummer alternativt samordningsnummer."
* patientId ^comment = "TKB-fält: `patientId` (`patientconsent:PersonIdValue`, kardinalitet 1..1)."
* careProviderId ^definition = "Id på den vårdgivare som intyget gäller för/kopplas till."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`patientconsent:HsaId`, kardinalitet 1..1)."
* careUnitId ^definition = "Id på den vårdenhet som intyget gäller för/kopplas till."
* careUnitId ^comment = "TKB-fält: `careUnitId` (`patientconsent:HsaId`, kardinalitet 1..1)."
* employeeId ^definition = "Medarbetar id. Om samtycket är personligt anges id för den medarbetare som samtycket skall gälla för. Om samtycket gäller all behörig personal på angiven vårdenhet, skall inget medarbetarid anges."
* employeeId ^comment = "TKB-fält: `employeeId` (`patientconsent:HsaId`, kardinalitet 0..1)."
* startDate ^definition = "Ej obligatoriskt startdatum för intygets giltighetstid. Om ett startdatum är angivet gäller intyget fr.o.m denna tidpunkt, annars gäller samtycket fr.o.m aktuell tidpunkt (registreringstidpunkt)."
* startDate ^comment = "TKB-fält: `startDate` (`xs:dateTime`, kardinalitet 0..1)."
* endDate ^definition = "Ej obligatoriskt slutdatum för intygets giltighetstid. Om ett slutdatum är angivet gäller intyget t.o.m denna tidpunkt. Om inget slutdatum anges, gäller samtycket tills det blir återkallat eller makulerat."
* endDate ^comment = "TKB-fält: `endDate` (`xs:dateTime`, kardinalitet 0..1)."
* representedBy ^definition = "Ej obligatorisk företrädare/vårdnadshavare som företräder patienten."
* representedBy ^comment = "TKB-fält: `representedBy` (`patientconsent:PersonIdValue`, kardinalitet 0..1)."
* registrationAction ^definition = "Identifierar de personer som begärt och registrerat intyget samt tidpunkter för dessa."
* registrationAction ^comment = "TKB-fält: `registrationAction` (`patientconsent:Action`, kardinalitet 1..1)."
