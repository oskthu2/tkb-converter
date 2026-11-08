// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterExtendedConsentRequestFieldDescriptions
* assertionId ^definition = "Unik, global identifierare för intyget. Tjänstekonsumenten ansvarar för att generera id:et."
* assertionId ^comment = "TKB-fält: `assertionId` (`urn:riv:informationsecurity:authorization:consent:2:Id`, kardinalitet 1..1)."
* assertionType ^definition = "Typ av intyg som ger direktåtkomst till information från andra vård-/omsorgsgivare enligt SVOD. Kan vara patientens/brukarens samtycke eller nödsituation."
* assertionType ^comment = "TKB-fält: `assertionType` (`urn:riv:informationsecurity:authorization:consent:2:AssertionTypeType`, kardinalitet 1..1).

**Modellanteckning:** assertionType Tillåtna värden: Consent, Emergency."
* scope ^definition = "Omfånget/tillämpningsområde på intyget."
* scope ^comment = "TKB-fält: `scope` (`urn:riv:informationsecurity:authorization:consent:2:ScopeType`, kardinalitet 1..1).

**Modellanteckning:** scope Tillåtna värden: NationalLevel."
* patientId ^definition = "Personidentitet på patienten/brukaren på vilket samtycket ska registreras."
* patientId ^comment = "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:consent:2:IIType`, kardinalitet 1..1)."
* careProviderId ^definition = "Id på den vård-/omsorgsgivare som intyget gäller för/kopplas till."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`urn:riv:informationsecurity:authorization:consent:2:HsaId`, kardinalitet 1..1)."
* careUnitId ^definition = "Id på den enhet som intyget gäller för/kopplas till."
* careUnitId ^comment = "TKB-fält: `careUnitId` (`urn:riv:informationsecurity:authorization:consent:2:HsaId`, kardinalitet 1..1)."
* employeeId ^definition = "MedarbetarId. Om samtycket är personligt anges id för den medarbetare som samtycket skall gälla för. Om samtycket gäller all behörig personal på angiven vårdenhet, skall inget medarbetarid anges."
* employeeId ^comment = "TKB-fält: `employeeId` (`urn:riv:informationsecurity:authorization:consent:2:HsaId`, kardinalitet 0..1)."
* startDate ^definition = "Ej obligatoriskt startdatum för intygets giltighetstid. Om ett startdatum är angivet gäller intyget fr.o.m denna tidpunkt, annars gäller samtycket fr.o.m aktuell tidpunkt (registreringstidpunkt)."
* startDate ^comment = "TKB-fält: `startDate` (`xs:DateTime`, kardinalitet 0..1)."
* endDate ^definition = "Ej obligatoriskt slutdatum för intygets giltighetstid. Om ett slutdatum är angivet gäller intyget t.o.m denna tidpunkt. Om inget slutdatum anges, gäller samtycket tills det blir avslutat eller makulerat."
* endDate ^comment = "TKB-fält: `endDate` (`xs:DateTime`, kardinalitet 0..1)."
* representedBy ^definition = "Ej obligatorisk personidentitet på företrädare/vårdnadshavare som företräder patienten/brukaren. Värdet ska anges om samtycket är inhämtat från företrädare/vårdnadshavare."
* representedBy ^comment = "TKB-fält: `representedBy` (`urn:riv:informationsecurity:authorization:consent:2:IIType`, kardinalitet 0..1)."
* registrationAction ^definition = "Identifierar de personer som begärt och registrerat intyget samt tidpunkter för dessa."
* registrationAction ^comment = "TKB-fält: `registrationAction` (`urn:riv:informationsecurity:authorization:consent:2:ActionType`, kardinalitet 1..1)."
* registrationAction.requestDate ^comment = "TKB-fält: `../requestDate` (`dateTime`, kardinalitet 1..1)."
* registrationAction.requestedBy ^definition = "Datatyp som identifierar en medarbetare/person."
* registrationAction.requestedBy ^comment = "TKB-fält: `../requestedBy` (`ActorType`, kardinalitet 1..1)."
* registrationAction.requestedBy.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1)."
* registrationAction.requestedBy.assignmentId ^comment = "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1)."
* registrationAction.requestedBy.assignmentName ^comment = "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1)."
* registrationAction.registrationDate ^comment = "TKB-fält: `../registrationDate` (`dateTime`, kardinalitet 1..1)."
* registrationAction.registeredBy ^definition = "Datatyp som identifierar en medarbetare/person."
* registrationAction.registeredBy ^comment = "TKB-fält: `../registeredBy` (`ActorType`, kardinalitet 1..1)."
* registrationAction.registeredBy.employeeId ^comment = "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1)."
* registrationAction.registeredBy.assignmentId ^comment = "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1)."
* registrationAction.registeredBy.assignmentName ^comment = "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1)."
* registrationAction.reasonText ^comment = "TKB-fält: `../reasonText` (`ReasonText`, kardinalitet 0..1)."
