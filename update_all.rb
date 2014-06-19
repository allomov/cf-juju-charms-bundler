require 'yaml'

bundle = YAML.load_file('old.bundles.yaml')

puts bundle['base'].inspect
puts bundle['base']['services'].inspect

bundle['base']['services'].each_pair do |key, service|
	puts service['charm']
	Dir.chdir(service['charm']) do
		system("bzr pull #{service['branch']}")
	end
end
