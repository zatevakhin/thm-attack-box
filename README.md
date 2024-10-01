# TryHackMe Attack Box

Getting the OpenVPN config. ~~why these ppl don't have Wiregurad?~~
- Go to the `https://tryhackme.com/r/access` -> `Download configuration file` -> `Save file into directory with container`.


Run container:
```bash
REMOTE_CONFIG=<FILENAME>.ovpn docker compose up
```

Enter your local instance of attack box:
- http://localhost:3080


On TryHackMe, open `https://tryhackme.com/r/room/tutorial` and press `Start Machine`. Wait until the machine boots, and use the provided IP in your local attack box browser.


### References:
- Using [`add-aur.sh`](https://github.com/greyltc-org/docker-archlinux-aur/blob/66e30122533f6a1f0333c8b46661aca3c38eb330/add-aur.sh) from https://github.com/greyltc-org/docker-archlinux-aur.git

