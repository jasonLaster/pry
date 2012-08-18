# Suite of ruby utility libraries
utilities = Dir[File.expand_path('../utilities/*.rb', __FILE__)]
utilities.each {|file| require file }
