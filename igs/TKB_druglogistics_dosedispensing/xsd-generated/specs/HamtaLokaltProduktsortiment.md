##### Dokumentinformation

| Version | Datum | Beskrivning | Sign |
| :--- | :--- | :--- | :--- |
| 1.3 | 2011-10-05 | Beskriver version 1.0.1 | Jan Rozenbeek |
| 1.4 | 2013-09-02 | Beskriver version 1.1.0 Ny optionell inparameter ”landsting”. Mindre redaktionella ändringar. | Per Mützell |

##### Hämta lokalt produktsortiment

Denna specifikation beskriver gränssnittet mellan vårdsystem och dosapotek för att hämta det s k lokala produktsortimentet. Vården kan hämta ett specificerat dosapoteks egna dispenserbara produktsortiment. Detta sortiment styrs bl.a. av dosaktörens produktionsutrustning. Det är dosaktören som har definierat sitt sortiment. Vården behöver informationen t ex för att veta vilken produkt som bör förskrivas för att den ska kunna dispenseras av dosaktören som levererar till den aktuella dospatienten.

##### Versionsinformation

Version 1.0.0 / 1.0.1

Version 1.1.0 Ny optionell inparameter landsting för att kunna selektera produktsortimentet för dosapoteket kopplat till visst län via landstingskoden (även kallad länskoden). Ändringen är bakåt kompatibel med tidigare versionen av tjänstekontraktet: en tidigare tjänsteproducent fungerar med en nyare tjänstekonsument och vice versa. En tjänsteproducent som inte implementerar den nya versionen ska tyst ignorera den nya parametern

##### Verksamhetsregler

Det lokala sortimentet innehåller endast produkter som kan dispenseras.

##### Felhantering

En resultatkod (Information, Varning eller Fel) med tillhörande meddelandetext och identitet returneras.

##### Objektsbeskrivning

För detaljerad beskrivning av generella objekt, se dokument “Pascal – Objekt och felhantering.doc”.

![Figur 1](HamtaLokaltProduktsortiment-1.png)

##### Fältbeskrivningar - Indata

| Attribut | Beskrivning | Format/ Värdemängd | Förekomst | Validering/ regler |
| :--- | :--- | :--- | :--- | :--- |
| Glnkod | Adresserat dosapotek | 13 | 1..1 |  |
| Dosaktör | Namn på dosaktör Enbart för loggning | 20 | 1..1 |  |
| Landsting | Kod för län/region Länskod, även kallad landstingskod, är en tvåsiffrig kod för län i Sverige. Kan fås från Folkbokföringen kopplat till individen | 2 | 0..1 | Selekterar sortiment för länet/regionen om anges. Ignoreras av tjänsteproducent som inte stödjer attributet. |

##### Fältbeskrivningar – Utdata

| Attribut | Beskrivning | Format/ Värdemängd | Förekomst | Validering/ regler |
| :--- | :--- | :--- | :--- | :--- |
| Resultatkod |  | Enum: Information(1), Varning(2), Fel(3) | 1..1 | Valideras av konsument |
| Meddelandetext |  | 1-80 | 1..1 |  |
| Meddelandeid |  | integer | 1..1 |  |
| Dosaktör | Namn på dosaktör | 1-20 | 1..1 |  |
| Produktsortiment |  |  | 0..* |  |
| NPLid |  | 1-16 | 1..1 |  |
| NPLpackid |  | 1-16 | 1..1 |  |
| Glnkod |  | 13 | 0..* |  |
