#To-do List Maker

# Gems needed
require 'sqlite3'
require 'faker'



# SQLite3 database
db = SQLite3::Database.new("todolist.db")
db.results_as_hash = true

# make table if it doesn't exist
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS todolist(
		id INTEGER PRIMARY KEY,
		task VARCHAR(255),
		time_left_days INTEGER
	)
SQL

db.execute(create_table_cmd)

# Test code to make sure database works
# db.execute("INSERT INTO todolist (task, time_left_days) VALUES ('get a haircut', 3)")

# Method to add stuff to the database by user
def list_maker(db, task, time)
	# db.execute(create_table_cmd)
	db.execute("INSERT INTO todolist (task, time_left_days) VALUES (?, ?)", [task, time])
end

# Prompt user for task number, tasks, and days left to complete.
puts "How many tasks do you have to do?"
task_number = gets.chomp.to_i

task_number.times do 
	puts "What do you have to do?"
	task = gets.chomp
	puts "How many days do you have to do it?"
	days = gets.chomp.to_i

	list_maker(db, task, days)
end

# Display the tasks
display_list = db.execute("SELECT * FROM todolist")
puts "Here is the updated list:"
display_list.each do |tasks|
	puts "You have #{tasks['time_left_days']} days to do #{tasks['task']}"
end

# Code to delete items that are completed
puts "If you're done with a task and need to delete it from the list, type 'delete'. Otherwise press ENTER to exit."
changes = gets.chomp

if changes == "delete"
	puts "Which task did you get done with?"
	done_task = gets.chomp
	list_deletion = db.execute("DELETE FROM todolist WHERE task=?", [done_task])
end

# Prints updated list then exits.
puts "Here is the updated list:"
display_list.each do |tasks|
	puts "You have #{tasks['time_left_days']} days to do #{tasks['task']}"
end





