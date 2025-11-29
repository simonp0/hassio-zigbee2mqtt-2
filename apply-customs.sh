#!/bin/bash
# Reapply custom name, slug, data_path in config.json
sed -i 's/"name": "Zigbee2MQTT"/"name": "Zigbee2MQTT-2"/g' zigbee2mqtt/config.json  # Replace with your exact custom
sed -i 's/"slug": "zigbee2mqtt"/"slug": "zigbee2mqtt-2"/g' zigbee2mqtt/config.json
sed -i 's/"data_path": "\/config\/zigbee2mqtt"/"data_path": "\/config\/zigbee2mqtt-2"/g' zigbee2mqtt/config.json
git add zigbee2mqtt/config.json
git commit -m "Reapply custom changes post-merge" || echo "No changes to commit"
