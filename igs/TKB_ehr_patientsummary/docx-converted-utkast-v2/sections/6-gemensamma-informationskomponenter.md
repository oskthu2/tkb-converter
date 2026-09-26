## Gemensamma informationskomponenter
I tjänstekontraktsbeskrivningarna används ett antal komponenter som är gemensamma för vissa meddelande, och dessa beskrivs i detta avsnitt.

|  | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCode | Se ovan | 1..1 |
| resultText | ST | Ej obligatoriskt felmeddelande som innehåller information om felet som uppstod. Om resultatkoden är "OK" så är detta fält tomt. | 0..1 |

| authorType | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| authorTime | TS | Tidpunkt då dokumentet skapades | 1..1 |
| authorID | II | HSA-id för författare. OID för HSA används (1.2.752.129.2.2.1.4) |  |
| authorRoleCode | II | Kod för författarens befattning, enligt kodverket Befattning (OID 1.2.752.129.2.2.1.4) | 1..1 |
| authorName | ST | Namn på författaren |  |
| authorOrganizationID | HSAIdType | HSA-id för den enhet som författaren är uppdragstagare hos | 1..1 |
| authorOrganizationName | ST | Namn på den enhet som författaren är uppdragstagare hos | 0..1 |
| authorOrganizationTelecom | ST | Telefonnummer till den enhet som författaren är uppdragstag hos | 0..1 |
| authorOrganizationAddress | ST | Adress till den enhet som författaren är uppdragstagare hos | 0..1 |
| careProviderId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för | 1..1 |

|  | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| custodianID | HSAIdType | HSA-id för PDL-enhet | 1..1 |

|  | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| signatureTime | TS | Tidpunkt för signering, 
RIV: Vård- och omsorgsdokument.signeringstidpunkt | 1..1 |
| assignedEntity | assignedEntityType | Information om person som signerat dokument | 0..1 |

|  | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| assignedEntityID | HSAIdType | Information om person som signerat dokument | 1..1 |
| representedOrganizationID | HSAIdType | HSA-id för den organisation som personen har uppdrag för | 1..1 |

|  | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| authorizationCode | II | Kod för typ av menprövning. Värden från kodverket KV (Detta kodverk skall definieras). | 1..1 |

|  | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| encounterID | II | Unik identifierare för vård- och omsorgskontakt. OID kan sättas till 1.2.752.129.2.1.2.1  (Icke-nationell identifierare Org+lokalt unikt id) | 1..1 |
| encounterTime | TS | Tidpunkt för vård- och omsorgskontakt | 1..1 |

