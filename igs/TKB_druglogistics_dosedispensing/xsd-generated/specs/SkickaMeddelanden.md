##### Skicka meddelanden

Denna specifikation beskriver gränssnittet mellan vårdsystem och dosapotek för att skicka meddelande.

##### Definitioner och förkortningar

| Definition | Beskrivning |
| :--- | :--- |
| Ordinationsid | Identitet för ordination i ordinationsregistret tilldelad av Apoteken Service |
| GLN-kod | Identitet för dosapotek |
| Yrkeskod | Kod tilldelad av yrkesgrupp i vården |

##### Verksamhetsregler

Denna tjänst används av vårdpersonal när de ska skicka ett meddelande till dosapoteket. Dosapoteket använder en annan funktion i respektive expedionsstödssystem. Lagring av meddelanden gör hos dosapoteket Meddelanden kan vara patientbundna, ordinationsbundna eller fristående. Meddelande kan skickas i båda riktningar mellanvården och dosapotek. Meddelandet kan vara Patientbundet, kopplat till en patientidentitet Meddelandebundet, dvs. kopplat till en tidigare meddelandeidentitet Ordinationsbundet, dvs. kopplat till en ordinationsidentitet Fristående, dvs. endast Apoteksidentitet angiven.

Meddelandeidentitet tilldelas av dosapoteket.

Objektsbeskrivning

För detaljerad beskrivning av generella objekt, se dokument “Pascal – Objekt och felhantering.doc”. ref[1]

##### Fältbeskrivningar - Indata

| Attribut | Beskrivning | Fält längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Glnkod | Adresserat dosapotek | 13 | 1..1 |  |
| Behörighetsinformation | BehorighetsinfoRequest Se ref[1] |  | 1..1 |  |
| Meddelandeinformation |  |  | 1..1 |  |
| Meddelandetyp | Patientbunden Ordinationsbunden Fristående Meddelandebunden | Enum | 1..1 |  |
| Patientidentiet | Patientinformation, se ref[1] | Klass | 0..1 | Valideras |
| Kommunikationsriktning | Till dosapotek eller från dosapotek | Enum | 0..1 | Loggas |
| Tidigare | Anges om | 10 | 0..1 | Valideras |
| meddelandeidentitet | meddelandet ska kopplas till ett tidigare |  |  |  |
| Ordinationsid |  | 10 | 0..1 | Valideras |
| Apoteksid | Mottagande dosapotek (GLNkod) | 10 | 0..1 | Valideras |
| Sändningstidpunkt | Tidpunkt i sändande system | Kalender | 1..1 | Loggas |
| Rubrik |  | 40 | 0..1 | Loggas |
| Prioritet | Hög, Normal eller Låg | Enum | 0..1 | Loggas |
| Meddelande |  | 1024 | 1..1 | Loggas |

![Figur 1](SkickaMeddelanden-1.jpg)

##### Fältbeskrivningar - Utdata

| Attribut | Beskrivning | Fält längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Resultatkod | Information, varning eller fel | Kod | 1..1 | Valideras |
| meddelandetext |  | 80 | 1..1 | Loggas |
| meddelandeid |  | Enum | 1..1 | Valideras |
| Meddelande | Tilldelad identitet från dosapotek | 10 | 0..1 | Loggas |
