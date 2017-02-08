# Debug with pdb
To use the debugger, import the pdb module from the command line by typing -m pdb, like so:
```sh
$ python -m pdb test.py
```
If you run your program with the -i flag, Python will drop you into its interactive interpreter if the program fails.
```sh
$ python -i test.py
```

The typical usage to break into the debugger from a running program is to insert
```python
import pdb; pdb.set_trace()
```
