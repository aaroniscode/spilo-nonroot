# spilo-nonroot
Existing spilo (https://github.com/zalando/spilo) container modified to run as non-root.

Changes are minimal:

* Run as the `postgres` user instead of `root`.

* Change permissions on the `launch.sh` script so the `postgres` user can run it.

* Change permissions on directories so the `postgres` user can untar or "decompress the spilo" image that is performed during the `launch.sh` script.

* Remove `cron` from the `supervisord` services as it fails to run as non-root. Also it's an optional service and doens't have any cron jobs configured by default.