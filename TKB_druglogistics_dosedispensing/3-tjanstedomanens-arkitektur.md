# 3 Tjänstedomänens arkitektur - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* **3 Tjänstedomänens arkitektur**

## 3 Tjänstedomänens arkitektur

## Tjänstedomänens arkitektur

**SAKNAS I KÄLLDOKUMENT.** Det finns ingen TKB som beskriver domänens arkitektur. Tjänsterna förmedlar information mellan vårdsystem och dosapotek. Enligt WSDL-filerna (RIVTABP20) adresseras anropen med SOAP-huvudet `LogicalAddress` (wsa:To), som är organisationsnumret för den part som anropas, t.ex. dosaktören. Processbeskrivningen för registrering av ny dospatient finns under [SkapaVardtagare](7-tjanstekontrakt.md#skapavardtagare) i avsnitt 7.

