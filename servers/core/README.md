# Core Services

A collection of shared prerequisites for setting up things like a world proxy server, metrics agent etc.

Also defines a docker network for all other components to join.

## Bungeecord Plugins

[`bungeecord/plugins`](./bungeecord/plugins/) includes a set of plugins that are used on the bungeecord server. Add any additional plugins here.

## Auto Provisioned Grafana Data Sources

[`grafana/provisioning/datasources`](./grafana/provisioning/datasources/) includes multiple yaml configurations that will automatically connect grafana to the Prometheus (`mc_prometheus`) and MySQL (`mc_mysql`) datasources. You may introduce additional data sources by adding additional
provisioning `.yml` files.