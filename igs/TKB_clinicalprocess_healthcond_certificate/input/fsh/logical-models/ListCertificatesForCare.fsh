// Elementen genereras ur ListCertificatesForCareResponder_3.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: ListCertificatesForCare v3.1
// Genererad: 2026-05-19

Logical: ListCertificatesForCare
Id: listcertificatesforcare
Title: "ListCertificatesForCare"
Description: """
  Logisk modell för tjänstekontraktet ListCertificatesForCare
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:3).
  Representerar responsens lista med intyg för en patient på en enhet eller hos en vårdgivare.
"""
Characteristics: #can-be-target

* ^version = "3.1"
* intygsLista 1..1 Base "ListaType" "intygsLista"
* intygsLista.intyg 0..* Base "Intyg" "intyg"
* intygsLista.intyg.intygs-id 1..1 Base "IntygId" "intygs-id"
* intygsLista.intyg.mottagare 0..* Base "Part" "mottagare"
* intygsLista.intyg.typ 1..1 Base "TypAvIntyg" "typ"
* intygsLista.intyg.version 1..1 string "version" "version"
* intygsLista.intyg.signeringstidpunkt 0..1 dateTime "signeringstidpunkt" "signeringstidpunkt"
* intygsLista.intyg.signeringstidpunkt only TimeStampType
* intygsLista.intyg.skickatTidpunkt 0..1 dateTime "skickatTidpunkt" "skickatTidpunkt"
* intygsLista.intyg.skickatTidpunkt only TimeStampType
* intygsLista.intyg.patient 1..1 Base "Patient" "patient"
* intygsLista.intyg.patient.person-id 1..1 Base "PersonId" "person-id"
* intygsLista.intyg.patient.fornamn 1..1 string "fornamn" "fornamn"
* intygsLista.intyg.patient.efternamn 1..1 string "efternamn" "efternamn"
* intygsLista.intyg.patient.mellannamn 0..1 string "mellannamn" "mellannamn"
* intygsLista.intyg.patient.postadress 1..1 string "postadress" "postadress"
* intygsLista.intyg.patient.postnummer 1..1 string "postnummer" "postnummer"
* intygsLista.intyg.patient.postort 1..1 string "postort" "postort"
* intygsLista.intyg.patient.kallaAdressuppgifter 0..1 Base "KallaAdressuppgifterType" "kallaAdressuppgifter"
* intygsLista.intyg.skapadAv 1..1 Base "HosPersonal" "skapadAv"
* intygsLista.intyg.skapadAv.personal-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* intygsLista.intyg.skapadAv.fullstandigtNamn 1..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."
* intygsLista.intyg.skapadAv.forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* intygsLista.intyg.skapadAv.befattning 0..* Base "Befattning" "befattning"
* intygsLista.intyg.skapadAv.enhet 1..1 Base "Enhet" "enhet"
* intygsLista.intyg.skapadAv.enhet.enhets-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* intygsLista.intyg.skapadAv.enhet.arbetsplatskod 1..1 Base "ArbetsplatsKod" "o.i.d för arbetsplatskod är 1.2.752.29.4.71"
* intygsLista.intyg.skapadAv.enhet.enhetsnamn 1..1 string "enhetsnamn" "enhetsnamn"
* intygsLista.intyg.skapadAv.enhet.postadress 1..1 string "postadress" "postadress"
* intygsLista.intyg.skapadAv.enhet.postnummer 1..1 string "postnummer" "postnummer"
* intygsLista.intyg.skapadAv.enhet.postort 1..1 string "postort" "postort"
* intygsLista.intyg.skapadAv.enhet.telefonnummer 1..1 string "telefonnummer" "telefonnummer"
* intygsLista.intyg.skapadAv.enhet.epost 0..1 string "epost" "epost"
* intygsLista.intyg.skapadAv.enhet.vardgivare 1..1 Base "Vardgivare" "vardgivare"
* intygsLista.intyg.skapadAv.enhet.vardgivare.vardgivare-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* intygsLista.intyg.skapadAv.enhet.vardgivare.vardgivarnamn 1..1 string "vardgivarnamn" "vardgivarnamn"
* intygsLista.intyg.skapadAv.specialistkompetens 0..* Base "Specialistkompetens" "specialistkompetens"
* intygsLista.intyg.skapadAv.specialistkompetens.code 1..1 string "code" "code"
* intygsLista.intyg.skapadAv.specialistkompetens.displayName 0..1 string "displayName" "displayName"
* intygsLista.intyg.skapadAv.legitimeratYrke 0..* Base "LegitimeratYrkeType" "legitimeratYrke"
* intygsLista.intyg.relation 0..* Base "Relation" "relation"
* intygsLista.intyg.relation.typ 1..1 Base "TypAvRelation" "typ"
* intygsLista.intyg.relation.intygs-id 1..1 Base "IntygId" "intygs-id"
* intygsLista.intyg.status 0..* Base "IntygsStatus" "status"
* intygsLista.intyg.status.part 1..1 Base "Part" "part"
* intygsLista.intyg.status.status 1..1 Base "Statuskod" "status"
* intygsLista.intyg.status.tidpunkt 1..1 dateTime "tidpunkt" "tidpunkt"
* intygsLista.intyg.status.tidpunkt only TimeStampType
* intygsLista.intyg.svar 0..* Base "Svar" "svar"
* intygsLista.intyg.svar.instans 0..1 integer "instans" "instans"
* intygsLista.intyg.svar.delsvar 1..* Base "(anonym typ)" "delsvar"
* intygsLista.intyg.svar.delsvar.id 1..1 string "id" "id (XML-attribut)"
* intygsLista.intyg.svar.delsvar.id only DelfrageIdType
* intygsLista.intyg.svar.id 1..1 string "id" "id (XML-attribut)"
* intygsLista.intyg.svar.id only FrageIdType
* intygsLista.intyg.underskrift 0..1 Base "UnderskriftType" "underskrift"
* intygsLista.intyg.underskrift.Signature 1..1 Base "SignatureType" "Signature"
* intygsLista.intyg.underskrift.Signature.SignedInfo 1..1 Base "SignedInfoType" "SignedInfo"
* intygsLista.intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod 1..1 Base "CanonicalizationMethodType" "CanonicalizationMethod"
* intygsLista.intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.SignedInfo.SignatureMethod 1..1 Base "SignatureMethodType" "SignatureMethod"
* intygsLista.intyg.underskrift.Signature.SignedInfo.SignatureMethod.HMACOutputLength 0..1 integer "HMACOutputLength" "HMACOutputLength"
* intygsLista.intyg.underskrift.Signature.SignedInfo.SignatureMethod.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.SignedInfo.Reference 1..* Base "ReferenceType" "Reference"
* intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Transforms 0..1 Base "TransformsType" "Transforms"
* intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform 1..* Base "TransformType" "Transform"
* intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.XPath 0..1 string "XPath" "XPath"
* intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod 1..1 Base "DigestMethodType" "DigestMethod"
* intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.DigestValue 1..1 base64Binary "DigestValue" "DigestValue"
* intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Id 0..1 string "Id" "Id (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.URI 0..1 uri "URI" "URI (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.SignedInfo.Reference.Type 0..1 uri "Type" "Type (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.SignedInfo.Id 0..1 string "Id" "Id (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.SignatureValue 1..1 Base "SignatureValueType" "SignatureValue"
* intygsLista.intyg.underskrift.Signature.SignatureValue.value 1..1 base64Binary "Textinnehåll" "Elementets textinnehåll i XML (simpleContent)."
* intygsLista.intyg.underskrift.Signature.SignatureValue.Id 0..1 string "Id" "Id (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.KeyInfo 0..1 Base "KeyInfoType" "KeyInfo"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyName 0..1 string "KeyName" "KeyName"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue 0..1 Base "KeyValueType" "KeyValue"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue 0..1 Base "DSAKeyValueType" "DSAKeyValue"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.P 0..1 base64Binary "P" "P"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Q 0..1 base64Binary "Q" "Q"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.G 0..1 base64Binary "G" "G"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Y 1..1 base64Binary "Y" "Y"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.J 0..1 base64Binary "J" "J"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Seed 0..1 base64Binary "Seed" "Seed"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.PgenCounter 0..1 base64Binary "PgenCounter" "PgenCounter"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue 0..1 Base "RSAKeyValueType" "RSAKeyValue"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Modulus 1..1 base64Binary "Modulus" "Modulus"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Exponent 1..1 base64Binary "Exponent" "Exponent"
* intygsLista.intyg.underskrift.Signature.KeyInfo.KeyValue obeys listcertificatesforcare-choice-1
* intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod 0..1 Base "RetrievalMethodType" "RetrievalMethod"
* intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms 0..1 Base "TransformsType" "Transforms"
* intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform 1..* Base "TransformType" "Transform"
* intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.XPath 0..1 string "XPath" "XPath"
* intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.URI 0..1 uri "URI" "URI (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Type 0..1 uri "Type" "Type (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data 0..1 Base "X509DataType" "X509Data"
* intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial 0..1 Base "X509IssuerSerialType" "X509IssuerSerial"
* intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509IssuerName 1..1 string "X509IssuerName" "X509IssuerName"
* intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509SerialNumber 1..1 integer "X509SerialNumber" "X509SerialNumber"
* intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509SKI 0..1 base64Binary "X509SKI" "X509SKI"
* intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509SubjectName 0..1 string "X509SubjectName" "X509SubjectName"
* intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509Certificate 0..1 base64Binary "X509Certificate" "X509Certificate"
* intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data.X509CRL 0..1 base64Binary "X509CRL" "X509CRL"
* intygsLista.intyg.underskrift.Signature.KeyInfo.X509Data obeys listcertificatesforcare-choice-6
* intygsLista.intyg.underskrift.Signature.KeyInfo.PGPData 0..1 Base "PGPDataType" "PGPData"
* intygsLista.intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyID 0..1 base64Binary "PGPKeyID" "PGPKeyID"
* intygsLista.intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyPacket 0..1 base64Binary "PGPKeyPacket" "PGPKeyPacket"
* intygsLista.intyg.underskrift.Signature.KeyInfo.PGPData obeys listcertificatesforcare-choice-11
* intygsLista.intyg.underskrift.Signature.KeyInfo.SPKIData 0..1 Base "SPKIDataType" "SPKIData"
* intygsLista.intyg.underskrift.Signature.KeyInfo.SPKIData.SPKISexp 1..1 base64Binary "SPKISexp" "SPKISexp"
* intygsLista.intyg.underskrift.Signature.KeyInfo.MgmtData 0..1 string "MgmtData" "MgmtData"
* intygsLista.intyg.underskrift.Signature.KeyInfo.Id 0..1 string "Id" "Id (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.Object 0..* Base "ObjectType" "Object"
* intygsLista.intyg.underskrift.Signature.Object.Id 0..1 string "Id" "Id (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.Object.MimeType 0..1 string "MimeType" "MimeType (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.Object.Encoding 0..1 uri "Encoding" "Encoding (XML-attribut)"
* intygsLista.intyg.underskrift.Signature.Id 0..1 string "Id" "Id (XML-attribut)"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ListCertificatesForCareFieldDescriptions

Invariant: listcertificatesforcare-choice-1
Description: "Exakt ett av DSAKeyValue, RSAKeyValue ska anges (xs:choice i schemat)."
Expression: "DSAKeyValue.exists() xor RSAKeyValue.exists()"
Severity: #error

Invariant: listcertificatesforcare-choice-6
Description: "Exakt ett av X509IssuerSerial, X509SKI, X509SubjectName, X509Certificate, X509CRL ska anges (xs:choice i schemat)."
Expression: "iif(X509IssuerSerial.exists(), 1, 0) + iif(X509SKI.exists(), 1, 0) + iif(X509SubjectName.exists(), 1, 0) + iif(X509Certificate.exists(), 1, 0) + iif(X509CRL.exists(), 1, 0) = 1"
Severity: #error

Invariant: listcertificatesforcare-choice-11
Description: "Exakt ett av PGPKeyID, PGPKeyPacket ska anges (xs:choice i schemat)."
Expression: "PGPKeyID.exists() xor PGPKeyPacket.exists()"
Severity: #error

Logical: ListCertificatesForCareRequest
Id: listcertificatesforcare-request
Title: "ListCertificatesForCare — Request"
Description: "Logisk modell för requestparametrar i ListCertificatesForCare."
Characteristics: #can-be-target

* ^version = "3.1"
* person-id 1..1 Base "PersonId" "person-id"
* vardgivar-id 0..1 Base "HsaId" "vardgivar-id"
* enhets-id 0..* Base "HsaId" "enhets-id"
* obeys listcertificatesforcarerequest-choice-1

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ListCertificatesForCareRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys listcertificatesforcare-request-vardgivare-xor-enhet

Invariant: listcertificatesforcarerequest-choice-1
Description: "Exakt ett av vardgivar-id, enhets-id ska anges (xs:choice i schemat)."
Expression: "vardgivar-id.exists() xor enhets-id.exists()"
Severity: #error

Invariant: listcertificatesforcare-request-vardgivare-xor-enhet
Description: "Antingen vardgivareId eller enhetsId ska anges, inte båda (xs:choice i schemat)."
Expression: "vardgivareId.exists() xor enhetsId.exists()"
Severity: #error
