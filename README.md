# rsnapshot-ofelia

A Docker container for operating [rsnapshot](https://github.com/rsnapshot/rsnapshot) with scheduling support through [Ofelia](https://github.com/mcuadros/ofelia).

# Usage

Create a suitable `rsnapshot.conf` and `ofelia.ini` - see sample files in this repository.

## Docker Run

```
docker run -it \
  -v $PWD/ofelia.ini:/etc/ofelia.ini:ro \
  -v $PWD/rsnapshot.conf:/etc/rsnapshot.conf:ro \
  rgielen/rsnapshot-ofelia
```
