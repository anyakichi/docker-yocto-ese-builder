Git clone the repo manifest.

```
$ repo init -u https://github.com/intel/iotg-yocto-ese-manifest.git \
    -b ${REPO_REF} -g ${REPO_GROUP}
```

Pull the repository meta-layers.

```
$ repo sync -c -j$(nproc) --force-sync
```

Make a branch:

```
$ repo forall managed/* -c git branch -f BUILD HEAD
```
