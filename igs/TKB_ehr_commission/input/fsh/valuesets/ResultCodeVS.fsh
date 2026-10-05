// Genererad från TKB ehr:commission v1.0 RC1
// ValueSet: ResultCode
// Genererad: 2026-04-09

ValueSet: ResultCodeVS
Id: resultcode-vs
Title: "ResultCode — ValueSet"
Description: """
  Tillåtna svarskoder för ResultType.ResultCode i ehr:commission-tjänsterna.
  Inkluderar alla koder från ResultCodeCS-kodverket.
"""
* ^version = "1.0.0-snapshot"
* ^status = #active
* include codes from system ResultCodeCS
