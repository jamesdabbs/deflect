# Deflect

Do you ever write `Users.all` when you meant `User.all`? Happened to me once.

![Once ...](http://i.imgur.com/foTwnH4.jpg)

```
[1] pry(main)> Users.all
NameError: uninitialized constant Users
from (pry):1:in `__pry__'
[2] pry(main)> require "deflect"
=> true
[3] pry(main)> Users.all
Did you mean `User`?
  User Load (1.5ms)  SELECT "users".* FROM "users"
=> [#<User:0x007fa7b808c980
  id: 1,
  ...
```

## FAQ

*Is this a good idea?*

One could argue that it's no worse of an idea than constant autoloading in the first place.
