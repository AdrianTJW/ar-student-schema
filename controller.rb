require_relative 'db/config'
require_relative 'app/models/todolist'

class Task < Todolist
attr_accessor :add, :delete, :complete, :list
	def self.add
		new_task = ARGV[1..-1].join(" ")
		Todolist.create(tasks: new_task, complete: "No")
		puts "Appended <#{new_task}> to your TODO list."
	end

	def self.delete
		delete_task = ARGV[1..-1].join(" ")
		task_id = Todolist.find_by(tasks: delete_task).id
		Todolist.find(task_id).destroy
		puts "Deleted <#{delete_task}> from your TODO list."
	end

	def self.complete
		complete_task = ARGV[1..-1].join(" ")
		task_id = Todolist.find_by(tasks: complete_task).id
		Todolist.find(task_id).update(complete: "Yes")
		puts "Your task <complete_task> has been completed."
	end

	def self.list
		puts "Status of your tasks are:"
		list = Todolist.all
		list.each do |x|
			puts "#{x.tasks} ---- Completed? #{x.complete}"
		end
	end
end


case ARGV[0]
	when "add" then Task.add
	when "delete" then Task.delete
	when "complete" then Task.complete
	when "list" then Task.list
	else puts "Invalid command."
end

