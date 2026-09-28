## Tjänstedomänens arkitektur

*SAKNAS I KÄLLDOKUMENT.* Det finns ingen TKB som beskriver domänens arkitektur. Tjänsterna förmedlar information mellan vårdsystem och dosapotek. Enligt WSDL-filerna (RIVTABP20) adresseras anropen med SOAP-huvudet `LogicalAddress` (wsa:To), som är organisationsnumret för den part som anropas, t.ex. dosaktören. Processbeskrivningen för registrering av ny dospatient finns under [SkapaVardtagare](7-tjanstekontrakt.html#skapavardtagare) i avsnitt 7.
