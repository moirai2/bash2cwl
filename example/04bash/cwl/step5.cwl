cwlVersion: v1.0
class: CommandLineTool
baseCommand: cat
inputs:
  input1:
    type: File
    inputBinding:
      position: 1
  input2:
    type: File
    inputBinding:
      position: 2
  input3:
    type: string
outputs:
  output1:
    type: stdout
stdout: $(inputs.input3)
