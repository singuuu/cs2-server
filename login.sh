sudo docker run -it --rm \
    -v "steamcmd_login_volume:/home/steam/Steam" \
    cm2network/steamcmd \
    bash /home/steam/steamcmd/steamcmd.sh +login $1 $2 +quit
