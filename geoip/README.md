# geoip
Instructions for setting up geoip in Ubuntu 14.04 and apache, including keeping the geoip database up-to-date.

#### Download legacy geoip database from maxmind
```bash
sudo chmod o+w /usr/share/GeoIP/
./geoip_update.sh
crontab cron-job.txt
```
#### Install mod_geoip to apache
```
sudo apt-get install libapache2-mod-geoip
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
<a href='http://dev.maxmind.com/geoip/legacy/codes/iso3166/'>List of Country Codes</a><br/>
<i>Test the changes by blocking your own country and going to your website</i>

#### Piwik Users
You can now track users in Piwik by choosing <b>GeoIP (Apache)</b> under <i>Administration > System > Geolocation</i><br/>
<i>Note: With this method you will only see the country details from new site visitors, not ones which visited your site in the past</i>
