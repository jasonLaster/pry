# Default commands used by Pry.
Pry::Commands = Pry::CommandSet.new

commands = Dir[File.expand_path('../commands/*.rb', __FILE__)]
commands.each {|file| require file}
