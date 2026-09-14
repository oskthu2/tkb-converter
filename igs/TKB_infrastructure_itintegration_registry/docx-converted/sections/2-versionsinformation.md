## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen infrastructure: itintegration: registry. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.0

#### Oförändrade tjänstekontrakt
Inga oförändrade tjänstekontrakt ingår i denna version.

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
Inga nya tjänstekontrakt har tillförts

##### Förändrade tjänstekontrakt
GetLogicalAddresseesByServiceContract, version 2.0
GetSupportedServiceContracts, version 2.0
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetLogicalAddresseesByServiceContract | 2.0 | 1.0 | Ej kompatibel |
|  | 1.0 | 2.0 | Ej kompatibel |
| GetSupportedServiceContracts | 2.0 | 1.0 | Ej kompatibel |
|  | 1.0 | 2.0 | Ej kompatibel |

#### Utgångna tjänstekontrakt
Samtliga tjänstekontrakt av version 1.0 har utgått.
OBS: Det gemensamma XML-schemat ”itintegration_registry_1.0.xsd” från version 1.0 används fortfarande av alla tjänstedomäner eftersom dess element LogicalAddress skall användas för att i SOAP-header ange logisk adressat enligt RIV TA Basic Profile 2.1, regel #8: Logisk adressering.

### Version tidigare
Domännamnet för version 1.0 är itintegration:registry

