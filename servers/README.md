# Servers Setup

## environment config

Many of the `docker-compose.yml` files make use of environment variables for configuration. In order to maintain consistency a bit more easily they are created as symbolic-links to the parent [`.env`](.env) file. Because of this edits to one of the `.env` files *will* impact other configurations.