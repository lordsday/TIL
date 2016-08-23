os.walk
```python
import os

for dirpath, dirs, files in os.walk("./TREE/"):	
	for filename in files:
		fname = os.path.join(dirpath,filename)
		with open(fname) as myfile:
			print(myfile.read())
```
