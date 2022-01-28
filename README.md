
Add to /etc/portage/repos.conf

	[pal-overlay]
	location = /var/db/repos/pal-overlay
	sync-type = git
	sync-uri = https://github.com/pluick/ebuilds.git
	priority = 50
	auto-sync = Yes

I don't think any of these are up to Gentoo's ebuild standards.

NOTE: for generating the manifest, `ebuild <ebuildfile> manifest`
but need to be in /var/db/repos/... directory not any other directory

Can try `repoman manifest` and see if that works
