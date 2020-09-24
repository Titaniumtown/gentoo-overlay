## Some neat packages I have
- mesa-9999 with support for llvm 9-12 (modified from https://gitlab.com/Perfect_Gentleman/PG_Overlay)
- polly for llvm 11.0.0.9999 and llvm 10.0.1 (modified from https://gitlab.com/Perfect_Gentleman/PG_Overlay)
- updated discord-canary-bin package
- firefox package with support for llvm 11/12

## How to add my overlay
Simply run:
```
$ mkdir -p -- /etc/portage/repos.conf
$ wget "https://raw.github.com/titaniumtown/gentoo-overlay/master/repos.conf" -O /etc/portage/repos.conf/titaniumtown-overlay.conf
```
Then do emerge --sync to fetch my packages!
