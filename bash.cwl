cwlVersion: v1.0
class: Workflow
inputs:
  param1:
    type: string
  param2:
    type: string
outputs:
  result1:
    type: File
    outputSource: step1/output1
steps:
  step1:
    run: cwl/step1.cwl
    in:
      input1: param1
      input2: param2
    out: [output1]
