# Name
sed - stream editor for filtering and transforming text

# Synopsis
```
sed [-n] program [file_list]
sed [-n] -f program-file [file_list]
```

# Options
- n: silent
- i: in-place

# Instruction
* s
```
[address [, address]] s/pattern/replacement-string/[g][p][w file]
```

# Address
* $: Match the last line
* example
 * 1, 3
 * 2, $
 * /line1/,/line2/
