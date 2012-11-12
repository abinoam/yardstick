# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "yardstick"
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dan Kubb"]
  s.date = "2012-11-12"
  s.description = "Measure YARD documentation coverage"
  s.email = "dan.kubb@gmail.com"
  s.executables = ["yardstick"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rvmrc",
    ".travis.yml",
    "Gemfile",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/yardstick",
    "lib/yardstick.rb",
    "lib/yardstick/cli.rb",
    "lib/yardstick/measurable.rb",
    "lib/yardstick/measurement.rb",
    "lib/yardstick/measurement_set.rb",
    "lib/yardstick/method.rb",
    "lib/yardstick/ordered_set.rb",
    "lib/yardstick/processor.rb",
    "lib/yardstick/rake/measurement.rb",
    "lib/yardstick/rake/verify.rb",
    "lib/yardstick/rule.rb",
    "lib/yardstick/rule_set.rb",
    "lib/yardstick/version.rb",
    "lib/yardstick/yard_ext.rb",
    "spec/public/yardstick/cli_spec.rb",
    "spec/public/yardstick/measurement_set_spec.rb",
    "spec/public/yardstick/measurement_spec.rb",
    "spec/public/yardstick/method_spec.rb",
    "spec/public/yardstick/rake/measurement_spec.rb",
    "spec/public/yardstick/rake/verify_spec.rb",
    "spec/public/yardstick_spec.rb",
    "spec/rcov.opts",
    "spec/semipublic/yardstick/rule_spec.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb",
    "spec/support/config_alias.rb",
    "tasks/ci.rake",
    "tasks/heckle.rake",
    "tasks/jeweler.rake",
    "tasks/metrics.rake",
    "tasks/spec.rake",
    "tasks/yard.rake",
    "tasks/yardstick.rake",
    "yardstick.gemspec"
  ]
  s.homepage = "http://github.com/dkubb/yardstick"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "A tool for verifying YARD documentation coverage"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<backports>, ["~> 2.6.4"])
      s.add_runtime_dependency(%q<yard>, ["~> 0.8.3"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.2"])
    else
      s.add_dependency(%q<backports>, ["~> 2.6.4"])
      s.add_dependency(%q<yard>, ["~> 0.8.3"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_dependency(%q<rspec>, ["~> 1.3.2"])
    end
  else
    s.add_dependency(%q<backports>, ["~> 2.6.4"])
    s.add_dependency(%q<yard>, ["~> 0.8.3"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
    s.add_dependency(%q<rspec>, ["~> 1.3.2"])
  end
end

