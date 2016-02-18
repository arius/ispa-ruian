require "bundler/gem_tasks"

task :default => :spec


task :console do
  require 'irb'
  require 'irb/completion'
  require 'ispa_ruian' # You know what to do.

  def reload!
    # Change 'my_gem' here too:
    files = $LOADED_FEATURES.select { |feat| feat =~ /\/ispa_ruian\// }
    files.each { |file| load file }
  end

  ARGV.clear
  IRB.start
end