**Application**

[Jackett](https://github.com/Jackett/Jackett)

**Description**

Jackett works as a proxy server: it translates queries from apps (Sonarr, Radarr, SickRage, CouchPotato, Mylar, DuckieTV, etc) into tracker-site-specific http queries, parses the html response, then sends results back to the requesting software. This allows for getting recent uploads (like RSS) and performing searches. Jackett is a single repository of maintained indexer scraping & translation logic - removing the burden from other apps.

**Build notes**

Latest stable Jackett release from Arch Linux AUR.

**Usage**
```
docker run -d \
    -p 9117:9117 \
    --name=<container name> \
    -v <path for config files>:/config \
    -v <path for data files>:/data \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \
    binhex/arch-jackett
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

`http://<host ip>:9117`

**Example**
```
docker run -d \
    -p 9117:9117 \
    --name=jackett \
    -v /apps/docker/jackett:/config \
    -v /apps/docker/sabnzbd/watched:/data \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \
    binhex/arch-jackett
```

**Notes**

User ID (PUID) and Group ID (PGID) can be found by issuing the following command for the user you want to run the container as:-

```
id <username>
```
___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Documentation](https://github.com/binhex/documentation) | [Support forum](https://forums.lime-technology.com/topic/61433-support-binhex-jackett/)