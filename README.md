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
    chromium \
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
    vscode \
    wmname
```


```
pamac build \
    chili-sddm-theme \
    dotnet-sdk-bin \
    rider \
    starship-bin \
```
