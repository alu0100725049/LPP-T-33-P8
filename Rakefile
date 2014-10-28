require "bundler/gem_tasks"
task :default => :spec

desc "Run RSpec code examples"
task :spec do 
	sh 'rspec spec/lib/question_spec.rb'
	sh 'rspec spec/lib/node_spec.rb'
	sh 'rspec spec/lib/list_spec.rb'
end