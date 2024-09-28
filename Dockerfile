FROM lscr.io/linuxserver/webtop:arch-xfce

RUN pacman --noconfirm -Suy base-devel git
RUN pacman --noconfirm -Rsc chromium

# NOTE: Installing AUR helper
RUN useradd -r -G wheel builder \
    && echo "builder ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers \
    && mkdir -p /tmp/builder \
    && chown builder:builder /tmp/builder \
    && cd /tmp/builder \
    && sudo -u builder git clone https://aur.archlinux.org/paru-bin.git \
    && cd /tmp/builder/paru-bin \
    && HOME=/tmp/builder/ sudo -u builder makepkg -si --noconfirm \
    && pacman -Qtdq | xargs -r pacman --noconfirm -Rcns \
    && userdel -rf builder \
    && sed -i '/builder ALL=(ALL) NOPASSWD: ALL/d' /etc/sudoers \
    && rm -rf /var/cache/pacman/pkg/* \
    && cd / && rm -rf /tmp/*

# NOTE: Add more packages as needed.
RUN paru --noconfirm -Suy neovim pkgfile nmap firefox \
    && rm -rf /var/cache/pacman/pkg/* \
    && pkgfile -u

