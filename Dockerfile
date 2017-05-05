FROM ubuntu:14.04
MAINTAINER Antonio Aloisio <gnuton@gnuton.org>
MAINTAINER Pelle Johnsen <pelle.johnsen@gmail.com>


RUN apt-get update -y

RUN apt-get install -y --no-install-recommends mono-gmcs mono-xbuild mono-dmcs libmono-corlib4.0-cil libmono-system-data-datasetextensions4.0-cil libmono-system-web-extensions4.0-cil libmono-system-management4.0-cil libmono-system-xml-linq4.0-cil libmono-microsoft-build-tasks-v4.0-4.0-cil cmake dos2unix clang-3.3 libqt4-dev git build-essential ca-certificates pkg-config bash-completion

ARG OAUTH_TOKEN
ENV OAUTH_TOKEN=${OAUTH_TOKEN}
RUN bash -c "echo -e Setting OAUTH_TOKEN to ${OAUTH_TOKEN}"
COPY image/run.sh /
RUN chmod a+x /run.sh

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN echo "docker ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/docker && \
chmod 0440 /etc/sudoers.d/docker

USER docker 
CMD ["/run.sh"]
