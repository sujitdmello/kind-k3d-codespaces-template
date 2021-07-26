#!/bin/bash

echo "on-create start" >> ~/status

# clone repos
git clone https://github.com/retaildevcrews/ngsa-app /workspaces/ngsa-app
git clone https://github.com/microsoft/webvalidate /workspaces/webvalidate

# copy grafana.db to /grafana
sudo mkdir -p /grafana
sudo cp deploy/grafanadata/grafana.db /grafana
sudo chown -R 472:472 /grafana

sudo mkdir -p /prometheus
sudo chown -R 65534:65534 /prometheus

# install webv
dotnet tool install -g webvalidate

echo "on-create complete" >> ~/status
