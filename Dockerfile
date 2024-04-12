FROM ubuntu:latest

LABEL org.opencontainers.image.source = "https://github.com/fetwar/spotify-downloader-docker"

RUN --mount=type=cache,target=/var/cache/apt \
  apt-get update && \
  apt-get install -y \
    ffmpeg \
    pip \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN pip install spotdl

ENTRYPOINT ["spotdl"]
CMD ["--help"]

