## Tjänstekontrakt

### GetBlocks
Tjänst som hämtar registrerade spärrar för en patient och/eller vårdgivare. Endast aktiva spärrar returneras (ej makulerade eller permanent hävda). Varje spärr kompletteras också med aktiva tillfälliga hävningar om sådana finns.
Det går även att ange ett datum (CreatedOnOrAfter) från när man önskar inhämta nyare uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Detta inkluderar även tillfälliga hävningar som skett efter angivet datum. Här avses datum då spärruppgiften lagrades i tjänsten.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Ej obligatorisk patientidentitet såsom personnummer, samordningsnummer eller reservnummer vars spärrar skall hämtas. | 0..1 |
| careProviderIds | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Ej obligatorisk lista med HSA-id på de vårdgivare vars spärrar skall hämtas. | 0..* |
| createdOnOrAfter | xs:DateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |  |  |  |
| blockHeader | urn:riv:informationsecurity:authorization:blocking:4:BlockHeaderType | Lista över funna spärrar som är aktiva. | 1..1 |

#### Övriga regler
N/A

##### Icke funktionella krav
N/A

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 10 sekund för 95% av alla anrop | För de fall då man anropar tjänsten med varken vårdgivarId eller patientId. I övrigt enligt kap 4.4.1 |

#### Annan information om kontraktet
N/A

#### Exempel

##### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
Se GetBlocksRequest.xml

##### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
Se GetBlocksRespons.xml

### GetExtendedBlocksForPatient
Tjänst som läser alla spärrar för en viss patient och organisation. Varje spärr innehåller också tillfälliga hävningar om sådana finns.
Tjänsten returnerar även makulerade och permanent hävda spärrar, samt tidigare gjorda tillfälliga hävningar, för att ge ett historikunderlag (vad som har hänt med patientens spärrar tidigare).
Tjänsten används för att på lokal nivå kunna söka fram och administrera patientens spärrar och dess eventuella tillfälliga hävningar för en viss vårdgivare.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i avsnittet Övriga regler.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Personidentitet på patienten såsom personnummer, samordningsnummer eller reservnummer vars spärrar skall hämtas. | 1..1 |
| Svar |  |  |  |
| getExtendedBlocksResult | urn:riv:informationsecurity:authorization:blocking:4:GetExtendedBlocksResultType | Svaret består av en spärrlista enligt det utökade, lokala spärrformatet. | 1..1 |

#### Övriga regler
N/A

##### Icke funktionella krav
N/A

###### SLA-krav
N/A

#### Exempel

##### Exempel på anrop
Se GetExtendedBlocksForPatientRequest.xml

##### Exempel på svar
Se GetExtendedBlocksForPatientRespons.xml

### GetPatientIds
Tjänst som läser alla patienter med minst en aktivt spärr för en viss organisation. Endast en distinkt lista med unika patienter returneras.
Konsumerande system anger vilken vårdgivare som ska omfattas av sökningen.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| Svar |  |  |  |
| getPatientIdResult | urn:riv:informationsecurity:authorization:blocking:4:GetPatientIdResultType | Lista över unika patienter som har aktiva spärrar. | 1..1 |

#### Övriga regler
N/A

##### Icke funktionella krav
N/A

###### SLA-krav
N/A

#### Exempel

##### Exempel på anrop
Se GetPatientIdsRequest.xml

##### Exempel på svar
Se GetPatientIdsRespons.xml

### CheckBlocks
Tjänst som kontrollerar om given information är spärrad eller inte. Den utvärderar alla spärrar som gäller mot andra vårdgivare/vårdenheter som finns i tjänsten och om någon spärr är helt applicerbar för given information och tillfälle kommer tjänsten att markera den informationen som spärrad. Om det finns minst en tillfällig hävning för spärren som applicerar på den angivna aktören blir informationen ospärrad.
Denna tjänst kan användas då tjänstekonsumenten inte själv kan avgöra/kontrollera om information är spärrad eller inte. Tjänsten stödjer kontroll av flertal informationsmängder i ett och samma anrop.
Evalueringen av huruvida informationen är spärrad eller ej görs enligt följande:
- Om spärr föreligger (inre eller yttre) blir informationen spärrad.
- Om undantag av spärr för 'lak' och/eller 'upp' har angivets blir denna information EJ spärrad.
- Om spärren inte innehåller någon giltighetstid blir informationen spärrad.
- Om tidsspannet för informationen ligger inom spärrens giltighetstid blir informationen spärrad.
- Om spärrens giltighetstid delvis överlappar tidsspannet (start- eller sluttid) för informationen blir informationen spärrad.
- Om tidsspannet för informationen ligger helt utanför spärrens giltighetstid blir informationen EJ spärrad.
e-Tjänster på nationell nivå kräver ett komplett spärrunderlag.

#### Version.
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| accessingActor | urn:riv:informationsecurity:authorization:blocking:4:AccessingActorType | Representerar den aktör/person som önskar åtkomst till informationen. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Personidentitet på patienten vars information aktören önskar åtkomst till. | 1..1 |
| informationEntities | urn:riv:informationsecurity:authorization:blocking:4:InformationEntityType | Lista över de informationsentiteter som aktören önskar åtkomst till. | 1..* |
| Svar |  |  |  |
| checkBlocksResult | urn:riv:informationsecurity:authorization:blocking:4:CheckBlocksResultType | Lista med resultat motsvarande den informationslista som angavs som inparameter. | 1..1 |

#### Övriga regler
Parametrar till tjänsten skall valideras och resultera i resultkoden VALIDATIONERROR om dessa är felaktiga. Informationsresurser och dess fält skall valideras och hanteras separat. Ogiltiga eller felaktiga fält i informationsresursen skall resultera i VALIDATIONERROR på resursnivå, dvs felkoden ges per informationsresurs i CheckBlocksResult med CheckStatus.
Om någon informationsresurs får valideringsfel skall tjänsten returnera felkoden INFO med meddelandet "Informationsresurs(er) innehåller valideringsfel".
Tjänsten skall hantera valfria informationstyper samt tomma/icke existerande värden.
Alla andra värden än de definierade i kontraktet hanteras som en uppgift av ospecificerad typ i den kontroll som tjänsten utför.

##### Icke funktionella krav
N/A

###### SLA-krav
N/A

#### Exempel

##### Exempel på anrop
Se CheckBlocksRequest.xml

##### Exempel på svar
Se CheckBlocksRespons.xml

### RegisterBlock
Tjänst som registrerar en ny spärr i den nationella spärrtjänsten (den aggregerade/replikerade spärrinformationen).
En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen. Informationstyperna lak och upp kan undantas från spärren. Om detta sker blir dessa informationstyper ej spärrade.
Tjänsten används för att synkronisera en lokal spärr till den nationella spärrtjänsten.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för spärren. Anropande system ansvarar för att generera id:et. | 1..1 |
| blockType | urn:riv:informationsecurity:authorization:blocking:4:BlockTypeType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Personidentitet på patienten såsom personnummer, samordningsnummer eller reservnummer. | 1..1 |
| informationStartDate | xs:DateTime | Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:DateTime | Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för. | 0..1 |
| informationCareProviderId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Obligatoriskt HSA-id för den vårdgivare spärren gäller för. | 1..1 |
| excludedInformationTypes | urn:riv:informationsecurity:authorization:blocking:4:InformationTypeIdValue | Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'. | 0..* |
| temporaryRevokeRegistration | urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeRegistrationType | Ej obligatorisk lista med tillfälliga hävningar. Detta möjliggör registrering/överföring av en spärr och tillhörande hävningar på en och samma gång. Denna lista lämnas tom i normalfallet. | 0..* |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt för att till den nationella spärrtjänsten synkronisera lokalt lagrade spärrar ansvarar för att hantera eventuella fel vid anropet, så att det inte uppstår diskrepans mellan lokalt lagrade spärrar och nationellt synkroniserade.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registrering av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |  |

#### Exempel

##### Exempel på anrop
Se RegisterBlockRequest.xml

##### Exempel på svar
Se RegisterBlockRespons.xml

### UnregisterBlock
Tjänst som avregistrerar/raderar en befintlig spärr i den nationella spärrtjänsten, om spärren finns.
Tjänsten används för att synkronisera borttag av en lokal spärr till den nationella spärrtjänsten.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för spärren. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt för att till den nationella spärrtjänsten synkronisera lokalt lagrade spärrar ansvarar för att hantera eventuella fel vid anropet, så att det inte uppstår diskrepans mellan lokalt lagrade spärrar och nationellt synkroniserade.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att borttag av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |  |

#### Exempel

##### Exempel på anrop
Se UnregisterBlockRequest.xml

##### Exempel på svar
Se UnregisterBlockRespons.xml

### RegisterTemporaryRevoke
Tjänst som registrerar en tillfällig hävning för en given spärr i den nationella spärrtjänsten, om spärren finns.
Tjänsten används för att synkronisera en lokal tillfällig hävning till den nationella spärrtjänsten.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeRegistration | urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeRegistrationType | Registreringsuppgifter för tillfällig hävning. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt för att till den nationella spärrtjänsten synkronisera lokalt lagrade spärrar ansvarar för att hantera eventuella fel vid anropet, så att det inte uppstår diskrepans mellan lokalt lagrade spärrar och nationellt synkroniserade.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registrering av hävningen skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |  |

#### Exempel

##### Exempel på anrop
Se RegisterTemporaryRevokeRequest.xml

##### Exempel på svar
Se RegisterTemporaryRevokeResponder.xml

### UnregisterTemporaryRevoke
Tjänst som avregistrerar/raderar en tillfällig hävning i den nationella spärrtjänsten, om hävningen finns.
Tjänsten används för att synkronisera borttag av en lokal tillfällig hävning till den nationella spärrtjänsten.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeId | urn:riv:informationsecurity:authorization:blocking:4:Id | Identifierare för den tillfälliga hävning som skall raderas. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt för att till den nationella spärrtjänsten synkronisera lokalt lagrade spärrar ansvarar för att hantera eventuella fel vid anropet, så att det inte uppstår diskrepans mellan lokalt lagrade spärrar och nationellt synkroniserade.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att borttag av hävningen skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |  |

#### Exempel

##### Exempel på anrop
Se UnregisterTemporaryRevokeRequest.xml

##### Exempel på svar
Se UnregisterTemporaryRevokeRequest.xml

### RegisterExtendedBlock
Tjänst som registrerar en ny spärr för en viss patient och inom en viss vårdgivare i den lokala spärrtjänsten.
En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen.
Informationstyperna lak och upp kan undantas från spärren. Om detta sker blir dessa informationstyper ej spärrade.
Kräver utökad spärrinformation med metainformation kring skapande av spärren.
Tjänsten registrerar även grunddata om spärren på nationell nivå.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för spärren. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| blockType | urn:riv:informationsecurity:authorization:blocking:4:BlockTypeType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Personidentitet på patienten såsom personnummer, samordningsnummer eller reservnummer. | 1..1 |
| informationStartDate | xs:DateTime | Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:DateTime | Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för. | 0..1 |
| informationCareProviderId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Obligatoriskt HSA-id för den vårdgivare spärren gäller för. | 1..1 |
| excludedInformationTypes | urn:riv:informationsecurity:authorization:blocking:4:InformationTypeIdValue | Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'. | 0..* |
| registerAction | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och registrerat spärren samt tidpunkter för dessa. | 1..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).
Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):
Lagrat lokalt -ej nationellt
Ej lagrat lokalt -ej lagrat nationellt
En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.
OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registreringen av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |  |

#### Exempel

##### Exempel på anrop
Se RegisterExtendedBlockRequest.xml

##### Exempel på svar
Se RegisterExtendedBlockRespons.xml

### RevokeExtendedBlock
Tjänst som häver en spärr permanent i den lokala spärrtjänsten, om spärren finns. Denna hävning kan inte återtas.
Tjänsten avregistrerar även spärren på nationell nivå.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för spärren. | 1..1 |
| revokeAction | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och permanent hävt spärren samt tidpunkter för dessa. | 1..1 |
| revokeReasonText | urn:riv:informationsecurity:authorization:blocking:4:ReasonText | Orsaken till den permanenta hävningen. | 0..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).
Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):
Lagrat lokalt -ej nationellt
Ej lagrat lokalt -ej lagrat nationellt
En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.
OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### Icke funktionella krav
N/A

###### SLA-krav
N/A

#### Exempel

##### Exempel på anrop
Se RevokeExtendedBlockRequest.xml

##### Exempel på svar
Se RevokeExtendedBlockRequest.xml

### DeleteExtendedBlock
Tjänst som makulerar en befintlig spärr i den lokala spärrtjänsten, om spärren finns. Spärren raderas inte från lokal spärrtjänst utan markeras som makulerad (ej längre giltig) för historikens skull. Denna makulering kan inte återtas.
Tjänsten avregistrerar även spärren på nationell nivå.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Identifierare för den spärr som skall makuleras. | 1..1 |
| deleteAction | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och makulerat spärren samt tidpunkter för dessa. | 1..1 |
| deleteReasonText | urn:riv:informationsecurity:authorization:blocking:4:ReasonText | Kompletterande text för orsak till makuleringen. | 0..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).
Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):
Lagrat lokalt -ej nationellt
Ej lagrat lokalt -ej lagrat nationellt
En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.
OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att makulering skett då anropet genomförts utan fel. / Tjänsten garanterar även att makulering skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

#### Exempel

##### Exempel på anrop
Se DeleteExtendedBlockRequest.xml

##### Exempel på svar
Se DeleteExtendedBlockRespons.xml

### RegisterTemporaryExtendedRevoke
Tjänst som häver en spärr tillfälligt i den lokala spärrtjänsten, om spärren finns. En spärr kan ha flera tillfälliga hävningar (gällande olika personal).
Tjänsten registrerar även den tillfälliga hävningen på nationell nivå.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för den tillfälliga hävningen. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Identifierare för den spärr som skall tillfälligt hävas. | 1..1 |
| endDate | xs:DateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1..1 |
| revokedForCareUnitId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1..1 |
| revokedForEmployeeId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en medarbetare/person, annars gäller hävningen för all behörig personal på vårdenheten. | 0..1 |
| registerAction | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och registrerat den tillfälliga hävningen samt tidpunkter för dessa. | 1..1 |
| revokeReason | urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeReasonType | Enumerationsvärde för orsak till tillfällig hävning. | 1..1 |
| revokeReasonText | urn:riv:informationsecurity:authorization:blocking:4:ReasonText | Kompletterande text för orsak till tillfällig hävning. | 0..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).
Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):
Lagrat lokalt -ej nationellt
Ej lagrat lokalt -ej lagrat nationellt
En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.
OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registrering av den tillfälliga hävningen skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av den tillfälliga hävningen skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

#### Exempel

##### Exempel på anrop
Se RegisterTemporaryExtendedRevokeRequest.xml

##### Exempel på svar
Se RegisterTemporaryExtendedRevokeResponse.xml

### CancelTemporaryExtendedRevoke
Tjänst som återkallar en tillfällig hävning i den lokala spärrtjänsten, om den tillfälliga hävningen finns. Denna återkallning kan inte återtas.
Tjänsten avregistrerar även den tillfälliga hävningen på nationell nivå.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeId | urn:riv:informationsecurity:authorization:blocking:4:Id | Identifierare för den tillfälliga hävning som skall återkallas. | 1..1 |
| cancellationInfo | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och hävt den tillfälliga hävningen samt tidpunkter för dessa. | 1..1 |
| cancelReasonText | urn:riv:informationsecurity:authorization:blocking:4:ReasonText | Kompletterande text för orsak till makuleringen. | 0..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).
Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):
Lagrat lokalt -ej nationellt
Ej lagrat lokalt -ej lagrat nationellt
En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.
OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registrering av återkallandet skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av återkallandet skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

#### Exempel

##### Exempel på anrop
Se CancelTemporaryExtendedRevokeRequest.xml

##### Exempel på svar
Se CancelTemporaryExtendedRevokeRespons.xml

