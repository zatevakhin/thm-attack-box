# TryHackMe Attack Box

Getting the OpenVPN config. ~~why these ppl don't have Wiregurad?~~
- Go to the `https://tryhackme.com/r/access` -> `Download configuration file` -> `Save file into directory with container`.


Run container:
```bash
REMOTE_CONFIG=<FILENAME>.ovpn docker compose up
```

Enter your local instance of attack box:
- http://localhost:3000


On TryHackMe, open `https://tryhackme.com/r/room/tutorial` and press `Start Machine`. Wait until the machine boots, and use the provided IP in your local attack box browser.

