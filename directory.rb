@students = [] # an empty array accessible to all methods

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer   
  puts "Overall, we have #{@students.length} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do    
    # add the student hash to the array
    @students << {:name => name, :cohort => :May}    
    puts "Now we have #{@students.length} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  @students
end

def process(selection)
	case selection
			when "1"
				# input the students
				input_students
			when "2"
				# show the students
				show_students
			when "9"
				exit # this will cause the program to terminate
			else 
				puts "I don't know what you meant, try again"
		end
end

def save_students
	# open the file for writing 
	file = File.open("students.csv", "w")
	# iterate over the array of students
	@students.each do |student|
		sutdent_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end


def print_menu
	puts "Please choose a menu option from the list below"
		puts "1. Input the students"
		puts "2. Show the students"
		puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
	print_header
	print_students_list
	print_footer
end

def interactive_menu
	loop do
		# 1. print the menu and ask the user what to do
		print_menu
		# 2. read the input and save it into a variable
		process(gets.chomp)
	end
end

interactive_menu
