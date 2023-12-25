## Configure `mycli`

_~/.myclirc_:
```
[alias_dsn]
local = mysql://myuser:mypassword@127.0.0.1:3307/bookstore
```

## `mycli`

First `use bookstore`

Once you connected to db, run `source db.sql`. 
This will create the tables and populate them.

- `help` - show available commands
- `\l` - list databases


