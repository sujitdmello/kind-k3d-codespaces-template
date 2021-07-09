#!/bin/sh

# clone repos
pushd ..
git clone https://github.com/retaildevcrews/ngsa-app
git clone https://github.com/retaildevcrews/loderunner
popd

# copy grafana.db to /grafana
sudo mkdir -p /grafana
sudo  cp deploy/grafanadata/grafana.db /grafana
sudo  chown -R 472:472 /grafana

# install webv
dotnet tool install -g webvalidate
