// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterExtendedPatientRelationRequestFieldDescriptions
* patientRelationId ^definition = "Unik, global identifierare för intyget. Tjänstekonsumenten ansvarar för att generera id:et."
* patientRelationId ^comment = "TKB-fält: `patientRelationId` (`patientrelationship:Id`, kardinalitet 1..1)."
* patientId ^definition = "Patientens personnummer alternativt samordningsnummer."
* patientId ^comment = "TKB-fält: `patientId` (`patientrelationship:PersonIdValue`, kardinalitet 1..1)."
* careProviderId ^definition = "Id på den vårdgivare som intyget gäller för/kopplas till."
* careProviderId ^comment = "TKB-fält: `careProviderId` (`patientrelationship:HsaId`, kardinalitet 1..1)."
* careUnitId ^definition = "Id på den vårdenhet som intyget gäller för/kopplas till."
* careUnitId ^comment = "TKB-fält: `careUnitId` (`patientrelationship:HsaId`, kardinalitet 1..1)."
* employeeId ^definition = "Medarbetar id för den medarbetare som patientrelationen gäller för."
* employeeId ^comment = "TKB-fält: `employeeId` (`patientrelationship:HsaId`, kardinalitet 1..1)."
* startDate ^definition = "Ej obligatoriskt startdatum för intygets giltighetstid. Om ett startdatum är angivet gäller intyget fr.o.m denna tidpunkt, annars gäller patientrelationen fr.o.m aktuell tidpunkt (registreringstidpunkt)."
* startDate ^comment = "TKB-fält: `startDate` (`xs:dateTime`, kardinalitet 0..1)."
* endDate ^definition = "Tidpunkts då giltigheten går ut för patientrelationen."
* endDate ^comment = "TKB-fält: `endDate` (`xs:dateTime`, kardinalitet 1..1)."
* registrationAction ^definition = "Identifierar de personer som begärt och registrerat patientrelationen samt tidpunkter för dessa."
* registrationAction ^comment = "TKB-fält: `registrationAction` (`patientrelationship:Action`, kardinalitet 1..1)."
