# geoip
Instructions for setting up geoip in Ubuntu 14.04 and apache

#### Download legacy geoip database from maxmind
```bash
sudo chmod o+w /usr/share/GeoIP/
./geoip_update.sh
crontab cron-job.txt
```
#### Block countries
Add to .htaccess in your www directory
```
<IfModule mod_geoip.c>
  GeoIPEnable On

  SetEnvIf GEOIP_COUNTRY_CODE BQ BlockCountry
  SetEnvIf GEOIP_COUNTRY_CODE CC BlockCountry
  Deny from env=BlockCountry
</IfModule>
```
<a href='http://dev.maxmind.com/geoip/legacy/codes/iso3166/'>List of Country Codes</a>
