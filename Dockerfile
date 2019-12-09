# work from latest LTS ubuntu release
FROM ubuntu:18.04

# set the environment variables
ENV mosdepth_version 0.2.6

# run update
RUN apt-get update -y && apt-get install -y \
    wget

# download  mosdepth
WORKDIR /usr/local/bin
RUN wget https://github.com/brentp/mosdepth/releases/download/v0.2.6/mosdepth
RUN chmod +x mosdepth

# set default command
WORKDIR /usr/local/bin
ENV PATH="/usr/local/bin:${PATH}"
CMD ["/usr/local/bin/mosdepth --help"]
