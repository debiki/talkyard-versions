
Talkyard versions
===============

The `version-tags.log` file lists version numbers used in Talkyard's
`docker-compose.yml` to fetch the right version of the container images.

This repo is a Git submodule of  https://github.com/debiki/talkyard-prod-one.
That project does automatic upgrades, via a cron script that polls this
repository for new revisions. When there's a new revision with a new Talkyard
version number, it downloads the Talkyard images of that version, and restarts.


License
---------------

```
Copyright (c) 2019–2026 Kaj Magnus Lindberg

License: MIT (this repository only — the Talkyard source code is
elsewhere under a different license)
```

