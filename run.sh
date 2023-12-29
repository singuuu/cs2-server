mkdir -p $(pwd)/cs2-data
sudo chmod 777 $(pwd)/cs2-data
sudo docker run -d \
    -p "27015:27015/tcp" \
    -p "27015:27015/udp" \
    -v $(pwd)/cs2-data:/home/steam/cs2-dedicated/ \
    -v "steamcmd_login_volume:/home/steam/Steam" \
    --name=cs2-dedicated \
    -e STEAMUSER=srgkane@hotmail.com \
    -e CS2_SERVERNAME="Singu.DEV" \
    -e CS2_PW="pracc" \
    -e CS2_PORT=27015 \
    -e CS2_LAN="0" \
    -e CS2_RCONPW="rc0npw" \
    -e CS2_MAXPLAYERS=16 \
    -e CS2_GAMETYPE=0 \
    -e CS2_GAMEMODE=1 \
    -e CS2_MAPGROUP="mg_active" \
    -e CS2_STARTMAP="de_inferno" \
    -e CS2_ADDITIONAL_ARGS="" \
    -e CS2_BOT_DIFFICULTY="3" \
    -e CS2_BOT_QUOTA="0" \
    -e CS2_BOT_QUOTA_MODE="competitive" \
    cm2network/cs2
