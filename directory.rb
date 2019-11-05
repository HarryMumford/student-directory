def print_header
  puts "The students of Villains Academy \n-------------"
end

def print_students(names)
  names.each do |student| 
    puts "#{student[:name]} (#{student[:cohort]} cohort)" 
  end
end

def print_footer(names)
  puts "\nOverall, we have #{names.count} great students"
end

def input_students 
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

students = input_students

# Calling the methods
print_header
print_students(students)
print_footer(students)