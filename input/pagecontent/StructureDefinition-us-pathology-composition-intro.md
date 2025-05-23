## Introduction

This US Pathology Composition profile defines how to structure pathology reports based on CAP electronic Cancer Checklists (eCCs) within FHIR. 

## Key Elements and Binding Requirements

- **extension:diagnosticReportReference**: 
  - DiagnosticReport is bound to both the Observations AND the Composition through this extension

- **type**: 
  - Bound to the CAP eCC Form Codes ValueSet 
  - Allows unique identification of the specific CAP Protocol

- **section.code**: 
- Bound to the CAP eCC Section Codes ValueSet 

- **section.entry**: 
  - Each entry references a section in the report

