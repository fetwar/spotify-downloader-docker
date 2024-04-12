FROM ubuntu:latest
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

