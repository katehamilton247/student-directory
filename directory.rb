students = [
	{:name => "Nadav Matalon", :cohort => :May},
	{:name => "Fitsum Teklehaimanot", :cohort => :May},
	{:name => "Roi Driscoll", :cohort => :May},
	{:name => "James Whyte", :cohort => :May},
	{:name => "Margherita Serino", :cohort => :May},
	{:name => "Vaidas Mykolaitis", :cohort => :May},
	{:name => "Johann Bornman", :cohort => :May},
	{:name => "Kate Hamilton", :cohort => :May},
	{:name => "James Keap", :cohort => :May},
	{:name => "Nic Yeeles", :cohort => :May},
	{:name => "Julie Walker", :cohort => :May},
	{:name => "Will Allen", :cohort => :May},
	{:name => "Julia Tan", :cohort => :May},
	{:name => "Federico Maffei", :cohort => :May},
	{:name => "Jamie Patel", :cohort => :May},
	{:name => "Faezrah Rizalman", :cohort => :May},
	{:name => "Josh Fail-Brown", :cohort => :May},
	{:name => "Sasha Cooper", :cohort => :May},
	{:name => "Nicolai DTH", :cohort => :May}
]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------------------------------------"
end

def print(students)
	students.each do |students|
		puts "#{students[:name]} (#{students[:cohort1]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

print_header
print(students)
print_footer(students)
