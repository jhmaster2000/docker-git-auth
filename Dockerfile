FROM node:18
ENV NPM_CONFIG_LOGLEVEL notice
ARG PORT
ARG WINE
ARG GIT_NAME
ARG GIT_PAT
ARG GIT_REPOSITORY
ARG NPM_SCRIPT
WORKDIR /root

# Optional wine install
RUN if [ -n "$WINE" ] ; \
    then dpkg --add-architecture i386 && apt update && apt -y install wine ; \
    else apt update ; \
    fi

# Extra packages
RUN apt -y install neofetch

# Start app
CMD git clone https://$GIT_NAME:$GIT_PAT@github.com/$GIT_REPOSITORY.git ./app && \
    cd app && npm install --save && neofetch && npm run $NPM_SCRIPT
