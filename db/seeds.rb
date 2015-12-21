require 'faker'
# Stupid faker doesn't work on Windows!
# require_relative '../app/models/todolist'
# require_relative '../db/config'

# class Seed
# 	def self.sample
# 		10.times do
# 			Todolist.create(tasks: "Abc", complete: "No")
# 		end
# 	end
# end

10.times do
	Todolist.create!(tasks: Faker::Lorem.sentence, complete: "No")
end