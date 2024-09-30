FROM lscr.io/linuxserver/webtop:arch-xfce

RUN pacman --noconfirm -Suy base-devel git
# RUN pacman --noconfirm -Rsc chromium

ENV AUR_USER=ab
# can be paru or yay
ENV HELPER=paru

# install helper and add a user for it
ADD add-aur.sh /root
RUN bash /root/add-aur.sh "${AUR_USER}" "${HELPER}"

RUN aur-install pkgfile nmap firefox burpsuite zaproxy \
    && pkgfile -u

RUN sed -i 's|Exec=/usr/local/bin/wrapped-chromium|Exec=/usr/local/bin/wrapped-chromium --use-gl=desktop|g' /usr/share/applications/chromium.desktop

