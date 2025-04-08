Skip setup if setup is already done.

```
$ [[ "\${BBPATH}" ]] && return 0
```

Setup yocto build environment.

```
$ . intel-embedded-system-enabling/oe-init-build-env build
```

Create auto.conf for our build environment.

```
$ rm -f conf/auto.conf
$ [[ "${YOCTO_MACHINE}" ]] && echo "MACHINE = \"${YOCTO_MACHINE}\"" >> conf/auto.conf
$ [[ "${YOCTO_CCACHE_DIR}" ]] \
  && echo 'CCACHE_TOP_DIR = "${YOCTO_CCACHE_DIR}"' >> conf/auto.conf \
  && echo 'INHERIT += "ccache"' >> conf/auto.conf
$ [[ "${YOCTO_DL_DIR}" ]] && echo 'DL_DIR = "${YOCTO_DL_DIR}"' >> conf/auto.conf
$ [[ "${YOCTO_SSTATE_DIR}" ]] && echo 'SSTATE_DIR = "${YOCTO_SSTATE_DIR}"' >> conf/auto.conf
```
