# 2 Versionsinformation - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* **2 Versionsinformation**

## 2 Versionsinformation

# 2 Versionsinformation

Källa: **Personuppgiftstjänsten – Tjänstekontraktsbeskrivning**, version 5.1 (2024-11-28), [TKB_strategicresourcemanagement_persons_person.docx](TKB_strategicresourcemanagement_persons_person.docx).

Denna revision av tjänstekontraktsbeskrivningen handlar om domänen strategicresourcemanagement: persons: person.

Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### 2.1 Version 5.0

#### 2.1.1 Oförändrade tjänstekontrakt

GetFilesForOrderId, version 3.0

#### 2.1.2 Nya tjänstekontrakt

GetPersonsByFile, version 1. Ersätter SearchPersonsByFile.

##### 2.1.2.1 Förändrade tjänstekontrakt

LinkPersonIdentity, version 4.0

UnlinkPersonIdentity, version 4.0

UpdatePersonContactInformation, version 4.0

UpdatePersonContactInformationUnrestricted, version 4.0

GetPersonContactInformation, version 4.0

GetPersonContactInformationUnrestricted, version 4.0

GetPersonForProfile, version 5.0

GetPersonForProfileUnrestricted, version 5.0

SearchPersonsForProfile, version 5.0

SearchPersonsForProfileUnrestricted, version 5.0

SearchPersonsForProfileByOrder, version 5.0

SearchPersonsForProfileByOrderUnrestricted, version 5.0

UpdatePerson, version 5.0

Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| | | | |
| :--- | :--- | :--- | :--- |
| LinkPersonIdentity, / UnlinkPersonIdentity | 3.x | 4.x | EJ kompatibel |
|   | 4.x | 3.x | EJ kompatibel |
| UpdatePersonContactInformation, / UpdatePersonContactInformationUnrestricted | 3.x | 4.x | EJ kompatibel |
|   | 4.x | 3.x | EJ kompatibel |
| GetPersonContactInformation, / GetPersonContactInformationUnrestricted | 3.x | 4.x | EJ kompatibel |
|   | 4.x | 3.x | EJ kompatibel |
| GetPersonForProfile, / GetPersonForProfileUnrestricted | 4.x | 5.x | EJ kompatibel |
|   | 5.x | 4.x | EJ kompatibel |
| SearchPersonsForProfile, / SearchPersonsForProfileUnrestricted | 4.x | 5.x | EJ kompatibel |
|   | 5.x | 4.x | EJ kompatibel |
| SearchPersonsForProfileByOrder, / SearchPersonsForProfileByOrderUnrestricted | 4.x | 5.x | EJ kompatibel |
|   | 5.x | 4.x | EJ kompatibel |
| UpdatePerson, | 4.x | 5.x | EJ kompatibel |
|   | 5.x | 4.x | EJ kompatibel |

#### 2.1.3 Utgångna tjänstekontrakt

SearchPersonsByFile, version 2, byts ut mot GetPersonsByFile. I detta byte inkluderas både infört stöd för nuvarande tjänstedomän samt att REST-tjänsten bytt namn.

### 2.2 Version tidigare

Se kapitel 2.1

