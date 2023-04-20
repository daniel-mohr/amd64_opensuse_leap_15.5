# https://hub.docker.com/r/opensuse/leap
FROM opensuse/leap:15.5
ARG TARGETPLATFORM=linux/amd64
COPY entrypoint.sh /entrypoint.sh
RUN zypper --non-interactive refresh
ENTRYPOINT ["/entrypoint.sh"]
