// Genererad från TKB clinicalprocess:activity:request v2.2
// Invarianter som delas av ProcessRequest och ProcessRequestOutcome
// Genererad: 2026-09-26

Invariant: activity-request-condition-code-or-text
Description: "Kliniskt tillstånd: ange antingen text eller kod, inte båda (schematron Verify condition)"
Expression: "(text.exists() and code.exists()).not()"
Severity: #error

Invariant: activity-request-activity-code-or-text
Description: "Åtgärd: ange antingen text eller kod, inte båda (schematron Verify desiredActivity)"
Expression: "(text.exists() and code.exists()).not()"
Severity: #error

Invariant: activity-request-commitmenttype-chapter
Description: "commitmentTypeChapter är obligatoriskt då commitmentType = 1 (schematron Verify paymentCommitment)"
Expression: "commitmentType.code = '1' implies commitmentTypeChapter.exists()"
Severity: #error
