https://hub.docker.com/r/sherazarde/belabox-receiver

https://hub.docker.com/r/b3ckontwitch/sls-b3ck-edit

https://github.com/715209/nginx-obs-automatic-low-bitrate-switching#configure-noalbs


GOAT
https://github.com/russelltg/srt-rs

# YOU NEED

* docker
* docker-compose
* make

# SETUP

1. create secrets.local.json in config/ and add {"publish/live/feed1": "password123", ...}
2. setup obs websocket and set host, port and password in config/config.json
3. run: make dev
4. create obs scenes named: Live, Low, Disconnected
5. add video source in obs srt://localhost:34597?streamid=play/live/feed1
6. add stream connexion in larix boradcaster: 
    - url: srt://YOUR_IP:34597
    - streamid: play/live/feed1
    - password: the one in secrets.json

ET VOILA !
