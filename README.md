# Setup

## First steps

1. Install Manjaro Architect with BSPWM.
2. Install pamac.
3. Install and enable SDDM.
4. Generate SSH key and clone this repository.
5. Install packages.
6. Stow dotfiles.
7. Add files to /etc and /usr.
8. Set battery charge threshold 80/85 in /etc/tlp.conf.
9. Set username: `usermod -c "Christoph Schmatzler" cschmatzler`

## Packages

```
pamac install \
    acpi_call \
    alacritty \
    bat \
    bluez \
    bluez-utils \
    chromium \
    docker \
    exa \
    nvim \
    pavucontrol \
    picom \
    polybar \
    pulseaudio \
    pulseaudio-alsa \
    rofi \
    sddm \
    signal-desktop \
    stow \
    thunar \
    tlp \
    ttf-font-awesome \
    ttf-roboto \
    ttf-roboto-mono \
    unzip \
    vivaldi \
    vivaldi-ffmpeg-codecs \
    vscode 
```


```
pamac build \
    chili-sddm-theme \
    spotify
```

## Docker
```
sudo usermod -a -G docker cschmatzler
sudo systemctl enable docker
docker run -d -e PUID=1000 -e PGID=1000 -p 3478:3478/udp -p 10001:10001/udp -p 8080:8080 -p 8443:8443 -v ~/.unifi:/config ghcr.io/linuxserver/unifi-controller
```
