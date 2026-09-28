| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| anvandarnamn | string | Användarnamn, används i kombination med HSA användar-id (klientinformation.anvandare) för att identifiera användare. Obligatoriskt om förskrivarkod saknas. | 0..1 |
| arbetsplatsId | string | HSA-id för arbetsplats. | 0..1 |
| arbetsplatskod | string | Förskrivarens arbetsplatskod, valideras mot ARKO. Obligatorisk om arbetsplatsnamn och arbetsplatsort inte anges. | 0..1 |
| arbetsplatsnamn | string | Namnet på användarens arbetsplats. Används istället för arbetsplatskod. Obligatorisk om arbetsplatskod inte anges. | 0..1 |
| arbetsplatsort | string | Orten för användarens arbetsplats. Används istället för arbetsplatskod. Obligatorisk om arbetsplatskod inte anges. | 0..1 |
| atkomsttyp | string | Treställig kod för typ av åtkomst. Tillåtna värden: ENG - Engångssamtycke SAM - Tillsvidaresamtycke NOD - Nödåtkomst | 1..1 |
| forskrivarkod | string | Förskrivarens förskrivarkod, valideras mot FORS. Förskrivarkod skall även anges som användare i klientinformation. | 0..1 |
| klientinformation | KlientinformationRequest | Information om anropande system. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | Systemnamn för anropande system. GLN-kod krävs för anrop från MVK och LTj. | 1..1 |
| personnummer | string | Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas. | 1..1 |
| **Svar** | | | |
| lakemedelsforteckning | ReceptexpeditionsradResponse | Patientens läkemedelsförteckning. Om patienten saknar poster i läkemedelsförteckningen så returneras en tom lista. | 0..* |
| ../aktorsExpeditionsId | string | Aktörens expeditionsId | 1..1 |
| ../antalForpackningar | int | Antal förpackningar av utlämnad vara. Obligatorisk parameter om posten ej är en dosdispenserad artikel | 0..1 |
| ../antalPillerKlartext | string | Summa antal avdelade doser inklusive enhet. Angiven om posten är en dosdispenserad artikel. | 0..1 |
| ../artikelinformation | ArtikelinformationResponse | Information om expedierad artikel. | 1..1 |
| ../../antalEnhet | string | Antalets enhet. Exempelvis 'styck' eller 'milliliter'. | 0..1 |
| ../../antalIForpackning | double | Antal i förpackning. Numerisk angivelse, exempelvis '0,72'. | 0..1 |
| ../../antalYtterstaForpackning | int | Antal multipel 2. Antal yttersta förpackningar för artikeln, exempelvis '6'. | 0..1 |
| ../../antalYttreForpackning | int | Antal multipel 1. Antal yttre förpackningar som varan har, exempelvis '5'. | 0..1 |
| ../../atckod | string | ATC-kod vid inläsningstillfället. | 0..1 |
| ../../atckodKlartext | string | Verksamt ämne vid inläsningstillfället. | 0..1 |
| ../../forpackningsstorlek | string | Förpackningsstorlek vid inläsningstillfället, exempelvis '6x5x0,72 milliliter'. Ej angivet för dosdispenserade artiklar. | 0..1 |
| ../../forpackningstyp | string | Beskrivning av artikelns förpackningstyp vid inläsningstillfället. | 0..1 |
| ../../intressent | string | Ansvarig intressent för artikeln. Värde kan hämtas från olika fält i VARA beroende på artikel. Exempelvis parallellimportör. | 0..1 |
| ../../lakemedelsform | string | Läkemedelsform vid inläsningstillfället. | 0..1 |
| ../../lakemedelsformKod | string | Kod för läkemedelsform (beredningsformkod). | 0..1 |
| ../../nplPackid | string | Identitet på förskrivet läkemedel som har NPL Pack-id alternativt SB Pack-id. | 1..1 |
| ../../produktnamn | string | Läkemedelsnamn vid inläsningstillfället. | 0..1 |
| ../../styrka | double | Numerisk styrka, exempelvis '20.0'. | 0..1 |
| ../../styrkaEnhet | string | Styrkans enhet, exempelvis 'mg'. | 0..1 |
| ../../styrkaKlartext | string | Styrka i klartext vid inläsningstillfället. | 0..1 |
| ../borttagen | boolean | Markering om posten är borttagen. Sant om posten är borttagen, annars falskt. | 1..1 |
| ../borttagsdatum | dateTime | Datum då posten blev markerad som borttagen. Endast angiven om borttagen är sant. | 0..1 |
| ../borttagsorsak | string | Kommentar för borttagen post. Endast angiven om borttagen är sant. | 0..1 |
| ../borttagstyp | string | Typ av borttag som gäller för posten. Endast angiven om borttagen är sant. Möjliga värden är: Synlig, Begränsad synlighet | 0..1 |
| ../borttagstypHeltal | int | Typ av borttag som gäller för posten. Endast angiven om borttagen är sant. Möjliga värden är: 0 - Synlig, 1 - Begränsad synlighet | 0..1 |
| ../doseringstext | string | Doseringsanvisning. | 1..1 |
| ../expeditionsId | string | ExpeditionsId | 0..1 |
| ../expeditionsdatum | dateTime | Datum för expedition på apotek. | 1..1 |
| ../forskrivararbetsplatsnamn | string | Förskrivarens arbetsplatsnamn | 0..1 |
| ../forskrivararbetsplatsort | string | Förskrivarens arbetsplatsort | 0..1 |
| ../forskrivarnamn | string | Förskrivarens namn | 0..1 |
| ../forskrivarpostadress | string | Förskrivarens postadress | 0..1 |
| ../forskrivarpostnummer | string | Förskrivarens postnummer | 0..1 |
| ../forskrivarspecialiteter | string | Förskrivarens specialitet i klartext | 0..* |
| ../forskrivaryrke | string | Förskrivarens yrke i klartext | 0..1 |
| ../mangd | string | Mängd | 1..1 |
| ../radid | long | Unikt id för posten i läkemedelsförteckningen. | 1..1 |
| ../radnummer | int | Radnummer för expedierad vara i aktuell expedition. Obligatorisk som indata dock ej som utdata. | 0..1 |
| patient | PatientResponse | Information om patienten vars läkemedelsförteckning man hämtat. Om patienten är markerad som Avliden så returneras ej läkemedelsförteckning. | 1..1 |
| ../avliden | boolean | Anger om patienten är markerad som avliden i FOLK. Sant om personen är markerad som avliden, annars falskt. | 1..1 |
| ../efternamn | string | Patientens efternamn som registrerat i FOLK. | 0..1 |
| ../fornamn | string | Patientens förnamn som registrerat i FOLK. | 0..1 |
| ../personnummer | string | Patientens personnummer. | 0..1 |
| varningsnivaUppnadd | boolean | Flagga som anger om förskrivarens antal läsningar det senaste dygnet överskridit varningsnivå. Sant om varningsnivå har uppnåtts, annars falskt. | 1..1 |
| avPatientSparradePosterArBorttagna | boolean | Markering som anger om poster plockats bort ur resultatet pga att patienten spärrat dessa, dvs det finns poster som är spärrade och därför inte är med i resultatet. (Refererat element ur LasLFVardsystemResponder_4.1_ext.xsd, namnrymd urn:riv:se.apotekensservice:lf:LasLFVardsystemResponder:4.1.) | 1..1 |
