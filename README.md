A docker implementation of [spotdl/spotify-downloader](https://github.com/spotDL/spotify-downloader).

Please read the [documentation for spotdl](https://spotdl.readthedocs.io/en/latest/).

This isn't a serious thing, I just wanted an easier way to download songs without faffing about with pip on every system I own, mainly because I misplace my venv's every time.

## Usage
If you've cloned the whole repo see [Usage with Make](#Usage with Make).

If you're just using the docker image... Idk, I haven't done that and like my shorthands, feel free to contribute to this the easiest method.
- I recommend downloading `docker-compose.yml` and starting with that.

## Usage with Make
Downloaded files will be placed in `./downloads`

```shell
make run c="song name or spotdl commands"
```

e.g. to search and download for "Break Stuff"
```shell
make run c="break stuff"
```

To do advanced usage, enter a shell within the container with
```shell
make shell
```

You can then use spotdl from within the container fully.

