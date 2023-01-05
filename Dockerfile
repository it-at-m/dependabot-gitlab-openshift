ARG IMAGE_TAG=latest

FROM registry.gitlab.com/dependabot-gitlab/dependabot:$IMAGE_TAG

USER root
# https://docs.openshift.com/container-platform/4.6/openshift_images/create-images.html#support-arbitrary-user-ids
RUN chgrp -R 0 /home/dependabot/app && chmod -R g=u /home/dependabot/app

USER dependabot
