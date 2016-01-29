exrm-docker
===========

This is a really simple container that has Elixir installed, so you can do 
builds for the correct environment (for us, that's Ubuntu 14.04). Exrm
is cool, but doesn't do cross-builds so building a release on MacOS is
quite useless if your target platform is Linux. 

So either get a CI system that does the packaging for you, or - especially
when in experimental mode - use this container and the wrapper script
included.
