# polybar-connection
polybar applet for showing connection status


## Install

1. Make sure `connection.sh` is in your `PATH` for example in `/usr/local/bin/`

2. copy following code inside your polybar's `modules.ini`

```
[module/connection]
type = custom/script
exec = connection.sh
interval = 5
tail = true
format-padding = 1
```

3. Add `connection` module to any `module-*` option on polybar's `config.ini`, example code:
```
modules-center = connection
```

4. Restart polybar

