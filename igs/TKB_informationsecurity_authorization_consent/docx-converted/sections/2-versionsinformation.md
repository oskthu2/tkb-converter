## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen informationsecurity: authorization: consent.
Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.0.4

#### Oförändrade tjänstekontrakt
Samtliga kontrakt är förändrade relativt domänversion 1.0

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med minor-version 2.0.4:
RegisterConsentByPatient
EndConsentByPatient
Följande nya tjänstekontrakt finns från och med minor-version 2.0.3:
GetAllExtendedConsentForPatient

##### Förändrade tjänstekontrakt
Samtliga kontrakt är förändrade relativt domänversion 1.0

#### Ingående tjänstekontrakt
Nedanstående tabell visar vilka tjänster som finns definierade.
Kategoriseringen beskriver vilket användningsområde tjänsten tillhör. Följande kategoriseringar är definierade:
querying 	- tjänstekontrakt för att hämta samtycken för intern samtyckeskontroll
accesscontrol 	- tjänstekontrakt för samtyckekontroll
administration 	- tjänstekontrakt för att registrera, avsluta, makulera eller lista samtycken med utökad information

| Tjänstekontrakt | Beskrivning | Kategori |
| :--- | :--- | :--- |
| GetConsentsForCareProvider | Läs samtycken inom vårdgivare | querying |
| GetConsentsForPatient | Läs samtycken för patient inom vårdgivare | querying |
| CheckConsent | Kontrollera om samtycke finns relativ viss personal/vårdenhet | accesscontrol |
| GetExtendedConsentsForPatient | Läs samtycken för patient inom vårdgivare, med utökad information. Tilltänkt aktör är vårdgivare/vårdpersonal | administration |
| RegisterExtendedConsent | Registrera samtycke, med utökad information | administration |
| CancelExtendedConsent | Avsluta samtycke, med utökad information | administration |
| DeleteExtendedConsent | Makulera samtycke, med utökad information | administration |
| GetAllExtendedConsentsForPatient | Nytt tjänstekontrakt fr o m 2.0.3
Läs samtycken för patient/brukare med utökad information. Tilltänkt aktör är patient/brukare eller dess legala ombud. | querying |
| RegisterConsentByPatient | Nytt tjänstekontrakt fr o m 2.0.4
Patients möjlighet att ge ett samtycke. Tilltänkt aktör är patient/brukare eller dess legala ombud. | administration |
| EndConsentByPatient | Nytt tjänstekontrakt fr o m 2.0.4
Patients möjlighet att avsluta ett givet samtycke i förtid. Tilltänkt aktör är patient/brukare eller dess legala ombud. | administration |

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
Endast en tidigare major-version (1.0).

