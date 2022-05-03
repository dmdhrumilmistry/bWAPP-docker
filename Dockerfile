# DESCRIPTION:	  Deploy bwapp-docker in Container
# AUTHOR:		  Dhrumil Mistry <contact@dmdhrumilmistry.me>
# COMMENTS:
#	This file describes how to deploy bWAPP vulnerable
#	application in a container with all dependencies 
#   installed.
# USAGE:
#	# Download Dockerfile
#	wget [link]
#
#	# Build image
#	docker build -t bwapp-docker .
#
#   # run docker container
#	docker run -d -p 80:80 bwapp-docker
#

FROM mattrayner/lamp

# add label
LABEL maintainer "Dhrumil Mistry <contact@dmdhrumilmistry.me>"

# remove default app files
RUN rm -rf /app

# copy bwapp files
COPY ./app /app

# start bwapp
CMD [ "/run.sh" ]
