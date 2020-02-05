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
  - [bash.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/01helloworld/bash.cwl)
  - [bash.yml](https://github.com/moirai2/bash2cwl/blob/master/example/01helloworld/bash.yml)
  - [cwl/step1.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/01helloworld/cwl/step1.cwl)

```
cwltool bash.cwl bash.yml
```

* Above command runs cwl workflow and creates these files:
  - [output.txt](https://github.com/moirai2/bash2cwl/blob/master/example/01helloworld/output.txt)

```
perl bash2cwl.pl "echo 'Hello World'| grep 'Hello'|wc -l > wcount.txt"
```

* Above command creates these files:
  - [bash.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/bash.cwl)
  - [bash.yml](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/bash.yml)
  - [cwl/step1.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/cwl/step1.cwl)
  - [cwl/step2.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/cwl/step2.cwl)
  - [cwl/step3.cwl](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/cwl/step3.cwl)

```
cwltool bash.cwl bash.yml
```

* Above command runs cwl workflow and creates these files:
  - [wcount.txt](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/wcount.txt)
  - [stdout1.txt](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/stdout1.txt)
  - [stdout2.txt](https://github.com/moirai2/bash2cwl/blob/master/example/02grepwc/stdout2.txt)

## Author

akira.hasegawa@riken.jp
