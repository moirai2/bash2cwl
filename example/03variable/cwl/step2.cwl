cwlVersion: v1.0
class: CommandLineTool
baseCommand: wc
inputs:
  input1:
    type: File
    streamable: true
  input2:
    type: string
outputs:
  output1:
    type: stdout
stdin: $(inputs.input1.path)
stdout: $(inputs.input2)
