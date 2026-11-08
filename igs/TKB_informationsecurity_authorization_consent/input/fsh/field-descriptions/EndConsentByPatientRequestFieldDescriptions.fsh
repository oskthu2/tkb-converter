// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: EndConsentByPatientRequestFieldDescriptions
* assertionId ^definition = "Unikt id som identifierar det intyg som skall avslutas."
* assertionId ^comment = "TKB-fält: `assertionId` (`urn:riv:informationsecurity:authorization:consent:2:Id`, kardinalitet 1..1)."
* patientId ^definition = "Personidentitet på patienten/brukaren vars samtycken skall hämtas."
* patientId ^comment = "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:consent:2:IIType`, kardinalitet 1..1)."
* representedById ^definition = "Personidentitet för den företrädare/vårdnadshavare som företräder patienten/brukaren.

Ska anges om samtycket avslutas av företrädare/vårdnadshavare."
* representedById ^comment = "TKB-fält: `representedById` (`urn:riv:informationsecurity:authorization:consent:2:IIType`, kardinalitet 0..1)."
* endDateTime ^definition = "Frivillig tidpunkt/tidsstämpel för när samtycket ska avslutas. Tidstämpeln ska som tidigast vara nuvarande tidpunkt, alternativt före en tidigare given sista giltighetstidpunkt som är i framtiden. Om ingen tidpunkt anges ska producenten tolka samtyckets nya giltighetstidpunkt t o m nuvarande tidpunkt."
* endDateTime ^comment = "TKB-fält: `endDateTime` (`xs:dateTime`, kardinalitet 0..1)."
