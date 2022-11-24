# array-adhoc

This an ad-hoc implementation of parts of the Python Array API backed by
backends that do not themselves fully implement them.

The purpose is to use those backends with normalized array api code. For
example, using this, you can use pytorch and the python arrays api using the
same interface.

It's ad-hoc because I'm only implementating parts of the spec when I use them,
and I do the implementations barebones.

This could easily improve with some good pull requests.

Presently only includes a pytorch wrapper.

Usage:
```
import array_adhoc.torch as xp

array = xp.asarray([2,4,9])
print(xp.sqrt(array))
```
