## How to compile llvm and clang with polly:
1. Install the polly package
2. Create a file /etc/portage/env/ld_polly
3. Put the following in that file
```
LDFLAGS="${LDFLAGS} -lPolly -lPollyISL -lPollyPPCG"
```
4. Add the following to the end of /etc/portage/package.env
```
sys-devel/llvm ld_polly
sys-devel/clang ld_polly
```
5. Rebuild llvm and clang
6. It should work!
