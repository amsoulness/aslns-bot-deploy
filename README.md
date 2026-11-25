# ASLNS bot deployment image

This repository packages [Amsoulness-MD](https://github.com/amsoulness/amsoulness-md) for deployment on Render. The framework repository owns the commands and configuration. This repository owns the [Dockerfile](Dockerfile).

## From source to running bot

| Stage | What the image does |
| --- | --- |
| Prepare | Starts from Node 26 Alpine and installs Git, FFmpeg, WebP tools and native build dependencies. |
| Install | Clones the framework into `/app` and installs its locked dependencies with Yarn Classic 1.22.22. |
| Start | Runs `node index.js` with `AUTO_UPDATE=false` and the default bot name `Amsoulness`. |

## Build locally

From this directory, run:

```sh
docker build --pull --no-cache -t aslns-bot .
```

The Dockerfile clones the framework’s current default branch at build time. A clean rebuild picks up upstream changes even when this wrapper has no new commits.

For runtime configuration, consult the [framework configuration template](https://github.com/amsoulness/amsoulness-md/blob/main/config.env.example). Supply credentials through your host’s environment settings.
