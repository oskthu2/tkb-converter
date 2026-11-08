// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetEmployeeIncludingProtectedPersonRequestFieldDescriptions
* personHsaId ^definition = "Sökt persons HSA-id.

Ref. HSA-id (hsaIdentity) [R5]"
* personHsaId ^comment = "TKB-fält: `personHsaId *1)` (`String`, kardinalitet 0..1)."
* personalIdentityNumber ^definition = "Sökt persons Person-id (personnummer eller samordningsnummer). Ref. person-id (personalIdentityNumber) [R5]"
* personalIdentityNumber ^comment = "TKB-fält: `personalIdentityNumber *1)` (`String`, kardinalitet 0..1)."
* searchBase ^definition = "Sökbas. Om ingen sökbas anges används c=SE som sökbas."
* searchBase ^comment = "TKB-fält: `searchBase *2)` (`DN`, kardinalitet 0..1)."
* includeFeignedObject ^definition = "true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras."
* includeFeignedObject ^comment = "TKB-fält: `includeFeignedObject` (`boolean`, kardinalitet 0..1)."
* profile ^definition = "Anger vilka attribut som returneras i svaret. Värde kan skrivas med både stora och/eller små bokstäver. Om värdet utelämnas antas värdet vara FULL. Följande värden kan användas: BASIC, TITLE, CONTACT, FULL, extended1."
* profile ^comment = "TKB-fält: `profile` (`String`, kardinalitet 0..1)."
