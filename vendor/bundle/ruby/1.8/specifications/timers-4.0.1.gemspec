# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{timers}
  s.version = "4.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tony Arcieri"]
  s.date = %q{2014-09-10}
  s.description = %q{Pure Ruby one-shot and periodic timers}
  s.email = ["tony.arcieri@gmail.com"]
  s.files = [".coveralls.yml", ".gitignore", ".rspec", ".travis.yml", "AUTHORS.md", "CHANGES.md", "Gemfile", "LICENSE", "README.md", "Rakefile", "lib/timers.rb", "lib/timers/events.rb", "lib/timers/group.rb", "lib/timers/timer.rb", "lib/timers/version.rb", "lib/timers/wait.rb", "spec/cancel_spec.rb", "spec/events_spec.rb", "spec/every_spec.rb", "spec/group_spec.rb", "spec/performance_spec.rb", "spec/spec_helper.rb", "spec/strict_spec.rb", "spec/timeout_spec.rb", "timers.gemspec"]
  s.homepage = %q{https://github.com/celluloid/timers}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Schedule procs to run after a certain time, or at periodic intervals, using any API that accepts a timeout}
  s.test_files = ["spec/cancel_spec.rb", "spec/events_spec.rb", "spec/every_spec.rb", "spec/group_spec.rb", "spec/performance_spec.rb", "spec/spec_helper.rb", "spec/strict_spec.rb", "spec/timeout_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hitimes>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0.0"])
    else
      s.add_dependency(%q<hitimes>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.0.0"])
    end
  else
    s.add_dependency(%q<hitimes>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.0.0"])
  end
end
