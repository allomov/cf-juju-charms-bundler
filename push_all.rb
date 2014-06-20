require 'yaml'

bundle = YAML.load_file('my.bundles.yaml')

bundle['base']['services'].each do |service|
	puts service['charm']
	puts service['branch']
	Dir.chdir(service['charm']) do
		system("bzr branch #{service['branch']}")
	end
end
