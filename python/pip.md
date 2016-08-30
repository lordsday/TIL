# pip install --editable
Now your application is installed into site-packages via symlink (kind of) and you don't need to reinstall it after making a change. Just edit your code and site-packages will magically have a new version of your application.
```sh
$ pip install -e .
or
$ pip install --editable .
```
