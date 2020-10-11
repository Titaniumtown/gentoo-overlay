## Some neat packages I have
- Newer openjdk versions! openjdk & openjdk-bin 15,15-9999 (I worked hard on getting these working)
- polly for llvm 11.0.0_rc6
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
