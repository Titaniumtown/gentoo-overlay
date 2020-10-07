## Some neat packages I have
- polly for llvm 11.0.0.9999 and llvm 10.0.1 (modified from https://gitlab.com/Perfect_Gentleman/PG_Overlay)
- updated discord-canary-bin package
- updated sys-kernel/raspberrypi-sources package for branches 5.5.y, 5.6.y, 5.7.y, 5.8.y, and 5.9.y
- Lowdown package

## How to add my overlay
Simply run:
```
$ mkdir -p -- /etc/portage/repos.conf
$ wget "https://raw.github.com/titaniumtown/gentoo-overlay/master/repos.conf" -O /etc/portage/repos.conf/titaniumtown-overlay.conf
```
Then do emerge --sync to fetch my packages!
