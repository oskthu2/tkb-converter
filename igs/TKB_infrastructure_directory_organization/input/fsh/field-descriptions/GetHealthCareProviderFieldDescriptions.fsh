// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHealthCareProviderFieldDescriptions
* healthCareProvider ^comment = "TKB-fält: `healthCareProvider` (`HealthCareProviderType`, kardinalitet 0..*)."
* healthCareProvider.healthCareProviderHsaId ^definition = "Vårdgivarens HSA-id. Ref. HSA-id (hsaIdentity) [R5]"
* healthCareProvider.healthCareProviderHsaId ^comment = "TKB-fält: `..healthCareProviderHsaId` (`String`, kardinalitet 1..1)."
* healthCareProvider.healthCareProviderName ^definition = "Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5]"
* healthCareProvider.healthCareProviderName ^comment = "TKB-fält: `..healthCareProviderName` (`String`, kardinalitet 1..1)."
* healthCareProvider.healthCareProviderOrgNo ^definition = "Vårdgivarens organisationsnummer. Ref. organisationsnummer (orgNo) [R5]"
* healthCareProvider.healthCareProviderOrgNo ^comment = "TKB-fält: `..healthCareProviderOrgNo` (`String`, kardinalitet 1..1)."
* healthCareProvider.healthCareProviderStartDate ^definition = "Startdatum för vårdgivarens verksamhet. Ref. startdatum (startDate) [R5]"
* healthCareProvider.healthCareProviderStartDate ^comment = "TKB-fält: `..healthCareProviderStartDate` (`dateTime`, kardinalitet 0..1)."
* healthCareProvider.healthCareProviderEndDate ^definition = "Slutdatum för vårdgivarens verksamhet. Ref. slutdatum (endDate) [R5]"
* healthCareProvider.healthCareProviderEndDate ^comment = "TKB-fält: `..healthCareProviderEndDate` (`dateTime`, kardinalitet 0..1)."
* healthCareProvider.feignedHealthCareProvider ^definition = "true: om vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]"
* healthCareProvider.feignedHealthCareProvider ^comment = "TKB-fält: `..feignedHealthCareProvider` (`Boolean`, kardinalitet 0..1)."
* healthCareProvider.archivedHealthCareProvider ^definition = "true: om vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]"
* healthCareProvider.archivedHealthCareProvider ^comment = "TKB-fält: `..archivedHealthCareProvider` (`Boolean`, kardinalitet 0..1)."
