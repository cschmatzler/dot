# Setup

## First steps

1. Install Manjaro Architect with BSPWM.
2. Install and enable SDDM.
3. Generate SSH key and clone this repository.
4. Install packages.
5. Stow dotfiles.
6. Add files to /etc.
7. Set battery charge threshold 80/85 in /etc/tlp.conf.

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
    vscode
```


```
pamac build \
    chili-sddm-theme \
    starship-bin \
```
