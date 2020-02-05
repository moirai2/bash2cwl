cwlVersion: v1.0
class: Workflow
inputs:
  param1:
    type: string
  param2:
    type: string
  param3:
    type: string
  param4:
    type: string
  param5:
    type: string
  param6:
    type: string
  param7:
    type: string
  param8:
    type: string
  param9:
    type: string
  param10:
    type: string
  param11:
    type: string
  param12:
    type: string
outputs:
  result1:
    type: File
    outputSource: step1/output1
  result2:
    type: File
    outputSource: step2/output1
  result3:
    type: File
    outputSource: step3/output1
  result4:
    type: File
    outputSource: step4/output1
  result5:
    type: File
    outputSource: step5/output1
  result6:
    type: File
    outputSource: step6/output1
  result7:
    type: File
    outputSource: step7/output1
  result8:
    type: File
    outputSource: step8/output1
steps:
  step1:
    run: cwl/step1.cwl
    in:
      input1: param1
      input2: param3
    out: [output1]
  step2:
    run: cwl/step2.cwl
    in:
      input1: param2
      input2: param4
    out: [output1]
  step3:
    run: cwl/step3.cwl
    in:
      input1: step1/output1
      input2: step2/output1
      input3: param5
    out: [output1]
  step4:
    run: cwl/step4.cwl
    in:
      input1: param6
      input2: step3/output1
      input3: param7
    out: [output1]
  step5:
    run: cwl/step5.cwl
    in:
      input1: step1/output1
      input2: step2/output1
      input3: param8
    out: [output1]
  step6:
    run: cwl/step6.cwl
    in:
      input1: param9
      input2: step5/output1
      input3: param10
    out: [output1]
  step7:
    run: cwl/step7.cwl
    in:
      input1: step4/output1
      input2: step6/output1
      input3: param11
    out: [output1]
  step8:
    run: cwl/step8.cwl
    in:
      input1: step7/output1
      input2: param12
    out: [output1]
