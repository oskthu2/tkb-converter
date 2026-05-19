## Tjänstedomänens arkitektur
Tjänstekontrakten som beskrivs i detta dokument används för att hämta information om personer som är anställd inom eller arbetar på uppdrag av en organisation verksam inom svensk vård och omsorg.
Anropen kan till exempel användas vid uppdatering/kontroll av en intern användardatabas i en tjänst eller i ett sökgränssnitt för att presentera detaljerad information om en person alternativt för att lista all personal som matchar vissa kriteria och har vårdmedarbetaruppdrag inom en vårdenhet.

### Flöden

#### Hämta information om en person
Flödet för en typisk användning är normalt att en tjänstekonsument hämtar information om en person via en virtuell tjänst som i sin tur anropar tjänsteproducenten samt returnerar svaret från producenten tillbaks till den anropande konsumenten. Se Sekvensdiagram nedan.

##### Arbetsflöde 1
Se Sekvensdiagram nedan.

##### Sekvensdiagram

![img_002.png](images/img_002.png)

#### Hämta information om personal med vårdmedarbetaruppdrag inom en vårdenhet
Flödet för en typisk användning är normalt att en tjänstekonsument hämtar information om personal med vårdmedarbetaruppdrag inom en vårdenhet via en virtuell tjänst som i sin tur anropar tjänsteproducenten samt returnerar svaret från producenten tillbaks till den anropande konsumenten. Se Sekvensdiagram nedan.

##### Arbetsflöde 2
Se Sekvensdiagram nedan.

##### Sekvensdiagram

![img_001.png](images/img_001.png)

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde 1 | Flöde 2 |
| :--- | :--- | :--- |
| GetEmployeeIncludingProtectedPerson (se avsnitt 6.1) | X |  |
| GetEmployee (se avsnitt 6.2) | X |  |
| GetCommissionMembersIncludingProtectedPerson (se avsnitt 6.3) |  | X |
| GetCommissionMembers (se avsnitt 6.4) |  | X |

### Adressering
Tjänstedomänen tillämpar verksamhetsbaserad adressering. Som logisk adress används Inera AB:s HSA-id för Katalogtjänst HSA.

### Aggregering och engagemangsindex
För närvarande är aggregering eller engagemangsindex ej aktuellt, då endast en tjänsteproducent är ansluten till tjänstedomänen.
I samband med att fler tjänsteproducenter ansluter till tjänstedomänen behöver sökningen från anropande tjänstekonsument realiseras mot flera tjänsteproducenter. Vilken alternativ lösning som ska tillämpas när denna situation uppstår är ännu inte beslutat, se AB-2.3 [R1].

