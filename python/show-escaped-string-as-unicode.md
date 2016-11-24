# Show escaped string as Unicode in Python
```python
print repr(r.json()).decode('unicode-escape')
print unicode(repr(r.json()), 'unicode-escape')
```
