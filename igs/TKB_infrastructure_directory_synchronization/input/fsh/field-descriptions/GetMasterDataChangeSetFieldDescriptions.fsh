// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetMasterDataChangeSetFieldDescriptions
* masterDataChangeSet ^comment = "TKB-fält: `MasterDataChangeSet` (`MasterDataChangeSetType`, kardinalitet 0..*)."
* masterDataChangeSet.masterDataChangeSetId ^definition = "Id

Identifierare som unikt pekar ut en katalogdatapost i källsystemet. Idt kan användas för att hämta posten med tjänstekontraktet som pekas ut i förfrågan."
* masterDataChangeSet.masterDataChangeSetId ^comment = "TKB-fält: `../id` (`IIType`, kardinalitet 1).

**Modellanteckning:** masterDataChangeSetId Heter id i schemat."
* masterDataChangeSet.masterDataChangeSetId.root ^definition = "En universellt unik identifierare eller en identifierare som tillsammans med värdet för ”extension”

ger en universellt unik identifierare."
* masterDataChangeSet.masterDataChangeSetId.root ^comment = "TKB-fält: `../id/root` (`string`, kardinalitet 1)."
* masterDataChangeSet.masterDataChangeSetId.iiExtension ^definition = "En textsträng som tillsammans med värdet för \"root\" bildar en unik identifierare. Används om värdet på \"root\" inte är universellt unikt."
* masterDataChangeSet.masterDataChangeSetId.iiExtension ^comment = "TKB-fält: `../id/extension` (`string`, kardinalitet 0..1).

Obs: modellen anger 1..1 där TKB:n anger 0..1.

**Modellanteckning:** iiExtension Heter extension i schemat."
* masterDataChangeSet.category ^definition = "Kategori

Kategorisering av förändring.

Enum med tillåtna värden: create, update, delete."
* masterDataChangeSet.category ^comment = "TKB-fält: `../category` (`Enum`, kardinalitet 1)."
* masterDataChangeSet.changeTime ^definition = "Förändringstidpunkt

Tidpunkt för när förändringen genomfördes i masterdatakällan."
* masterDataChangeSet.changeTime ^comment = "TKB-fält: `../changeTime` (`TimeStamp`, kardinalitet 1)."
* masterDataChangeSet.attributes ^definition = "Angivelse av förändrade attribut för katalogposten.

Om category är update kan förändrade fält anges i svaret, så att konsumenten kan härleda om uppdateringen är relevant för att trigga en hämtning av hela posten."
* masterDataChangeSet.attributes ^comment = "TKB-fält: `../attributes` (`AttributeType`, kardinalitet 0..*)."
* masterDataChangeSet.attributes.masterDataAttribute ^definition = "Attribut

Det förändrade attributet pekas ut med klass och attribut separerat med punktnotation. Exempel: Organisation.namn

Vilka attribut som kan anges beror helt på masterdatakällan."
* masterDataChangeSet.attributes.masterDataAttribute ^comment = "TKB-fält: `../../attribute` (`String`, kardinalitet 1)."
