
Add to /etc/portage/repos.conf

	[pal-overlay]
	
	# Peter Luick's overlay
	
	location = /var/db/repos/pal-overlay
	sync-type = git
	sync-uri = https://github.com/pluick/ebuilds.git
	priority = 50
	auto-sync = Yes
