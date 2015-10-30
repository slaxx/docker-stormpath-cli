# docker-stormpath-cli
Dockerized stompath-cli interface

# Dependencies
* docker
* stormpath account key and secret (in ./apiKey.properties file). Sign up here. https://api.stormpath.com

# How to use it
* pull this repo
* download/copy your stormpath apiKey to the directory containing the Dockerfile you are building.. (this one here)
* build it. `docker build -t nameit_whatever_is_easy .`
* use it. `docker run whatever_you_named_it --help`

