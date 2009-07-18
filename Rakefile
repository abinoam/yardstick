require 'rubygems'
require 'rake'
require 'pathname'

Pathname.glob('tasks/**/*.rake').each { |task| load task.expand_path }

begin
  require 'jeweler'

  Jeweler::Tasks.new do |gem|
    gem.name              = 'yardstick'
    gem.summary           = %Q{TODO}
    gem.email             = 'dan.kubb@gmail.com'
    gem.homepage          = 'http://github.com/dkubb/yardstick'
    gem.authors           = [ 'Dan Kubb' ]
    gem.rubyforge_project = 'yardstick'

    gem.add_dependency('yard', '~>0.2')
  end

  Jeweler::RubyforgeTasks.new
rescue LoadError
  puts 'Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler'
end
