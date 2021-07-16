FROM node:14
ENV NPM_CONFIG_LOGLEVEL notice
ARG PORT
ARG GIT_NAME
ARG GIT_PAT
ARG GIT_REPOSITORY

# OS setup
RUN dpkg --add-architecture i386
RUN apt update
RUN apt -y install wine
RUN apt -y install neofetch

# Node/NPM setup
WORKDIR /app
RUN npm install -g npm@7

# Start app
CMD git clone https://$GIT_NAME:$GIT_PAT@github.com/$GIT_REPOSITORY.git . && \
    npm install --save && npm start
