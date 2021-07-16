# docker-git-auth

Simple easily configurable Dockerfile for cloning and deploying a private repository from github without OAuth requirements.

See [.env.template](/.env.template) for the needed setup, and remember to rename it to `.env` locally.

Run with `docker build -t git-auth . && docker run --env-file .env git-auth`
