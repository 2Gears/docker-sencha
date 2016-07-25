Sencha Cmd Docker Image
=======================

## Usage

```
docker run -t -v /:/system -w /system/`pwd` 2gears/sencha <args>
```


## Alias

```
alias sencha-docker="docker run -t -v /:/system -w /system/\$(pwd) 2gears/sencha"
```

Run just as you use `sencha`, but run `sencha-docker`. If you don't have Sencha Cmd installed locally, you could of course also alias it to `sencha` to make it work transparently.
