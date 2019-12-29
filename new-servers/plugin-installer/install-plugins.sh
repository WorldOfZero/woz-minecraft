#!/bin/bash
cp /white-list.txt /data/white-list.txt

mkdir -p /data/world/datapacks

echo "Installing Datapacks"
ls /resources/datapacks
cp /resources/datapacks/* /data/world/datapacks
echo "Installed Datapacks"
ls /data/world/datapacks

mkdir -p /data/plugins

echo "Installing Plugins"
ls /resources/plugins
cp /resources/plugins/* /data/plugins
echo "Installed Plugins"
ls /data/plugins