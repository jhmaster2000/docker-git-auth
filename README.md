# docker-git-auth

Simple easily configurable Dockerfile for cloning and deploying a private repository from github without OAuth requirements.

* *The Dockerfile provided here is targeted towards a Node.js program, but should be easily adaptable for anything else.*

See [.env.template](/.env.template) for the needed setup, and remember to rename it to `.env` locally.

Run with `docker build -t git-auth . && docker run --env-file .env git-auth`
