#! /bin/bash
# http://dev.maxmind.com/geoip/legacy/install/country/

wget -N http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz -P /tmp
gunzip -k /tmp/GeoIP.dat.gz
mv /tmp/GeoIP.dat /usr/share/GeoIP/




