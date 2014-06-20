require 'yaml'

bundle = YAML.load_file('old.bundles.yaml')

# branch helpers if not already
# update helpers 
# sync helpers with all charms

puts bundle['base'].inspect
puts bundle['base']['services'].inspect

bundle['base']['services'].each_pair do |key, service|
	puts service['charm']
	system("charm-helpers/charmhelpers/sync ")

	# Dir.chdir(service['charm']) do
	# 	system("bzr pull #{service['branch']}")
	# end
end
