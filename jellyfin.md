# Jellyfin

## Hiding Favourites icon

Dashboard => General => Custom CSS code

```
/* UI Settings */
button.cardOverlayButton>span.favorite,button.detailButton.btnUserRating[is="emby-ratingbutton"][title="Add to Favourites"] {display: none;}
/* Player Settings */
div.osdTimeText>span.endsAtText,div.osdRatingsText>div.starRatingContainer,div.osdControls button.btnUserRating[is="emby-ratingbutton"] {display: none;}
```

## Pi Hole
https://discourse.pi-hole.net/t/pi-hole-and-ufw/64224

Open Pi-Hole's Web Dashboard (Port 80 by default) to the local network only:

```
sudo ufw allow from 192.168.0.0/24 to any port 80 proto tcp
```

Open Pi-Hole's DNS (Port 53) to the local network only:

```
sudo ufw allow from 192.168.0.0/24 to any port 53 proto tcp
sudo ufw allow from 192.168.0.0/24 to any port 53 proto udp
```

Open Port 4711 for Pi-Hole's FTL (from localhost only):

```
sudo ufw allow from 127.0.0.0/8 to any port 4711 proto tcp
```
