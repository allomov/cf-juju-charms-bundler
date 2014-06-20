Description
-----------

This is a tool to create alternaticve [launchpad](https://launchpad.net) branches for charms that are going to deploy CF 

Contents
--------
`official.bundles.yaml` - file with official bundles for CF charms
`my.bundles.yaml`       - file with bundles with my CF charms repositories
`branch_all.rb`         - branches all charm from official bundle (this repos are in `.gitignore`)
`push_all.rb`           - pushes everything to branches that are listed in `my.bundles.yaml` bundle 
`update_all.rb`         - updates all charms from official branches


Motivation
----------
[CF charms](https://launchpad.net/~cf-charmers) are developed rapidly,
broken commits are pushed to `trunk` branch rather often. I use this scripts to have 
bundle with my repositories that will work for sure.
