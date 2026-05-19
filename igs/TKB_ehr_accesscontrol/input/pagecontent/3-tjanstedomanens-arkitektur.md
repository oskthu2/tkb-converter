## Tjänstedomänens arkitektur

### Flöden

#### Flöde 1: Åtkomstkontroll inom sammanhållen journalföring

##### Arbetsflöde
Följande flöde visar vilken roll funktionen spelar för åtkomstkontroll inom sammanhållen journalföring:
Medarbetare begär åtkomst till patients vårddokumentation i sammanhållen journalföring
Tillämpningen (genom fråga enligt AssertCareEngagement direkt mot system hos användarens vårdgivare) fastställer att patienten har ett behörighetsgrundande engagemang hos den vårdenhet på vars uppdrag medarbetaren begär åtkomst.
Tillträde nekas om tjänsten i steg 2 inte bekräftar behörighetsgrundande engagemang (”TGP”).
Kontroll att förutsättningar enligt PDL  6 kap 3§ är uppfyllda (samtycke, spärr etc.)
Tillträde till sammanhållen journalföring erbjuds medarbetaren

![img_007.png](images/img_007.png)
*Figur  Grafisk flödesmodell*

###### Roller
Tabellen nedan beskriver de roller i flödesmodellen som relaterar till stegen som är specifika för denna tjänstedomän.

| Roll | Beskrivning |
| :--- | :--- |
| Användare | Medarbetare inom vård och omsorg som begär åtkomst till patients vårddokumentation inom sammanhållen journalföring. |
| Källsystem, vårdkontakt- eller remissadministration | Det verksamhetsstödjande IT-system som används i medarbetarens verksamhet i syfte att administrera patientkontakter eller remisser. |
| Källsystem, Journal | Det journalsystem som hanterar journaluppgifter för annan vårdgivares räkning och som är anslutet till sammanhållen journalföring. Här finns journalinformation aktuell patient som Användaren begär åtkomst till. |
| Tillämpning för sammanhållen journalföring | Det IT-stöd genom vilket användaren bereds åtkomst till sammanhållen journalföring. |

##### Sekvensdiagram
Interaktionerna i sekvensdiagrammet nedan kan i praktiken komma att ske i en infrastruktur enligt följande figur:

![img_004.png](images/img_004.png)
*Figur  AssertCareEngagement i ett sammanhang*
UML-versionen av ovanstående visar de klasser som ingår i sekvensdiagrammet och deras inbördes förhållanden:

![img_003.gif](images/img_003.gif)
*Figur  Modell över komponenter vars samverkan beskrivs i sekvensdiagrammet*

![img_008.png](images/img_008.png)
*Figur  Sekvensdiagram, Flöde 1*

#### Obligatoriska kontrakt

| Tjänstekontrakt | Flöde 1 |
| :--- | :--- |
| AssertCareEngagement | X |

### Adressering
Tjänstedomänens adressering är verksamhetsbaserad.
För adressering används HSA-id för den vårdgivare och vårdenhet inom vars uppdrag den medarbetaren agerar som begär åtkomst till sammanhållen journalföring (d.v.s. den medarbetare som vars HSA-id anges i begäran till tjänstekontraktet AssertCareEngagement).
Vårdgivarens och vårdenhetens HSA-id kombineras till en sammansatt adress som används vid anrop från tjänstekonsumenten. Den sammansatta adressen anges på formatet VårdgivarensHSA-id#VårdenhetensHSA-id.

### Aggregering och engagemangsindex
Aggregering är inte aktuell för domänen.

