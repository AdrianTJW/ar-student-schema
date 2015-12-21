# require 'faker'
# Stupid faker doesn't work on Windows!
require_relative '../app/models/todolist'
require_relative '../db/config'

class Seed
	def self.sample
		10.times do
			Todolist.create(tasks: "Abc", complete: "No")
		end
	end
end

# 10.times do
# 	Todolist.create!(tasks: Faker::Lorem.sentence, complete: "No")
# end

# class Seed
# 	def self.sample
# 		Todolist.create(tasks: "Move with Lil to the black mountain hills of Dakota", complete: "No")
# 		Todolist.create(tasks: "Lose Lil to Danny", complete: "No")
# 		Todolist.create(tasks: "Get hit in the eye by Danny", complete: "No")
# 		Todolist.create(tasks: "Walk into town seeking revenge", complete: "No")
# 		Todolist.create(tasks: "Book room at local saloon", complete: "No")
# 		Todolist.create(tasks: "Check into room and read Gideon's bible", complete: "No")
# 		Todolist.create(tasks: "Drink too much gin", complete: "No")
# 		Todolist.create(tasks: "Overhear Lil and Danny in neighboring room", complete: "No")
# 		Todolist.create(tasks: "Burst into neighboring room and declare a showdown", complete: "No")
# 	end
# end