## Some neat packages I have
- Newer openjdk versions! openjdk & openjdk-bin 13,14,15,15-9999 (I worked hard on getting these working)
- Polly for llvm 11.0.0 with fixes to properly compile
- Updated discord-canary-bin package
- Updated sys-kernel/raspberrypi-sources package for branches 5.5.y, 5.6.y, 5.7.y, 5.8.y, and 5.9.y
- Lowdown package
- Updated glib-networking and webkit-gtk from lanodanOverlay sans the lua overlay
- Servo webengine (www-client/servo) Note, you have to have `FEATURES="-network-sandbox"`
- updated x11-libs/gtk+ (modified from lanodanOverlay)

## How to add my overlay
Simply run:
```
$ mkdir -p -- /etc/portage/repos.conf
$ wget "https://raw.github.com/titaniumtown/gentoo-overlay/master/repos.conf" -O /etc/portage/repos.conf/titaniumtown-overlay.conf
```
Then do `emerge --sync titaniumtown-overlay` to fetch my packages!
