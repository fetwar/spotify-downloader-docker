A docker implementation of [spotdl/spotify-downloader](https://github.com/spotDL/spotify-downloader).

Please read the [documentation for spotdl](https://spotdl.readthedocs.io/en/latest/).

This isn't a serious thing, I just wanted an easier way to download songs without faffing about with pip on every system I own, mainly because I misplace my venv's every time.

## Usage
Downloaded files will be placed in ./downloads

```shell
make run c="song name or spotdl commands"
```

e.g. to search and download for "Break Stuff"
```shell
make run c="break stuff"
```
