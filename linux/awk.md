# SYNTAX
```
gawk [options] [program] [file-list]
gawk [options] –f program-file [file-list]
```

# LANGUAGE BASICS
A gawk program(from program on the command line or from program-file) consists of one or more lines containing a **pattern** and/or **action** in the following syntax:
```
pattern { action }
```
