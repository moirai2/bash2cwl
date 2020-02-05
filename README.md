# bash2cwl

Convert a simple bash script into common workflow language workflow.

## download

Type a command in a prompt window (DIR=directory to install).

```
  git clone https://github.com/moirai2/bash2cwl.git DIR
```
OR click "Clone of download" and click.

## usage

```
perl bash2cwl.pl "echo 'Hello World'>output.txt"
```

* Above command creates these files:
  - [bash.cwl](https://github.com/moirai2/bash2cwl/blob/master/helloworld/bash.cwl)
  - [bash.yml](https://github.com/moirai2/bash2cwl/blob/master/helloworld/bash.yml)
  - [cwl/step1.cwl](https://github.com/moirai2/bash2cwl/blob/master/helloworld/cwl/step1.cwl)

```
cwltool bash.cwl bash.yml
```

* Above command creates these files:
  - [output.txt](https://github.com/moirai2/bash2cwl/blob/master/helloworld/output.txt)

## Author

akira.hasegawa@riken.jp
