require "bundler/gem_tasks"
task :default => :spec

desc "Run RSpec code examples"
task :spec do
	sh 'bundle exec rspec spec/lib/question_spec.rb'
	sh 'bundle exec rspec spec/lib/simplechoice_spec.rb'
	sh 'bundle exec rspec spec/lib/truefalse_spec.rb'
	sh 'bundle exec rspec spec/lib/node_spec.rb'
	sh 'bundle exec rspec spec/lib/list_spec.rb'
end
