# require 'faker'

require_relative '../app/models/todolist'
require_relative '../db/config'

class Seed
	def self.sample
		10.times do
			Todolist.create(tasks: "Abc", complete: "No")
		end
	end
end