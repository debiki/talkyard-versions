
Talkyard versions
===============

This repository:

 - Lists version numbers of Talkyard — see version-tags.log. Currently used by
	 https://github.com/debiki/talkyard-prod-one — which does automatic upgrades,
	 via a Cron script that polls this repository for new version numbers, and
	 downloads the related images, and restarts.

 - Provides Docker Compose config files that you
	 can use to integrate Talkyard into your own Docker Compose
	 installation.

   Maybe not:
   To upgrade Talkyard, you then `git pull` the latest version of
	 this repository, and redeploy your stack (without deleting any data volumes
	 in between).



License
---------------

```
Copyright (c) 2019–2025 Kaj Magnus Lindberg

License: MIT (this repository only — the Talkyard source code is
elsewhere under a different license)
```

