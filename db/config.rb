require 'active_record'
# require 'sdoc'
ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/../db/ar-todolists.sqlite3")
