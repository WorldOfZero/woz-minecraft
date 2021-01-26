FROM itzg/minecraft-server:1.3.0

ENV VERSION='1.16.1'

# Configure Server with Default Values
ENV   EULA='TRUE' \
      TYPE='SPIGOT' \
      ONLINE_MODE='FALSE' \
      ANNOUNCE_PLAYER_ACHIEVEMENTS='FALSE' \
      MAX_PLAYERS=50 \
      MEMORY='2G'

RUN mkdir /data/world/; chown minecraft:minecraft /data/world/

# Install Datapacks
COPY --chown=minecraft:minecraft resources/world /data/world

# Install Plugins
COPY --chown=minecraft:minecraft resources/plugins /data/plugins

# Configure Spigot Server
COPY --chown=minecraft:minecraft resources/spigot/spigot.yml /data/spigot.yml