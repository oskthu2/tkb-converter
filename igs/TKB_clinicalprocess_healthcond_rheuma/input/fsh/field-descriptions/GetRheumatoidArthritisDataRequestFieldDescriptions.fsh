// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetRheumatoidArthritisDataRequestFieldDescriptions
* careUnitHSAId ^definition = "Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType."
* careUnitHSAId ^comment = "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*)."
* patientId ^definition = "Id för patienten."
* patientId ^comment = "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Patientens identifierare. value = id (12 tecken utan avskiljare); system = OID för typ av identifierare: 1.2.752.129.2.1.3.1 (personnummer), 1.2.752.129.2.1.3.3 (samordningsnummer) eller lokalt reservnummer, t.ex. SLL 1.2.752.97.3.1.3."
* sourceSystemHSAId ^definition = "Begränsar sökningen till dokument som är skapade i angivet system.

Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).

Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges.

Fältet är tvingande om careContactId angivits."
* sourceSystemHSAId ^comment = "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1)."
* careContactId ^definition = "Begränsar sökningen till den vård- och omsorgskontakt där den vårdbegäran som låg till grund för laboratoriesvaret skapades."
* careContactId ^comment = "TKB-fält: `careContactId` (`string`, kardinalitet 0..*)."
