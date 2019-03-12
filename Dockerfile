FROM 117533191630.dkr.ecr.eu-west-1.amazonaws.com/upstream-fork/docker-elasticsearch:6.5.0

MAINTAINER e.vonk@sdu.nl

# Override config, otherwise plug-in install will fail
ADD config /elasticsearch/config

# Set environment
ENV DISCOVERY_SERVICE elasticsearch-discovery

# Kubernetes requires swap is turned off, so memory lock is redundant
ENV MEMORY_LOCK false
