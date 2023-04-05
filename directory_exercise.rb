def input_students
  puts "Please enter the name, cohort, age, country and country of birth of the student. Seperated by a comma ','".center(50)
  puts "To finish, just hit return twice".center(50)
  # create an empty array
  students = []
  # getting more information from the user
  information = gets.chomp.split(",")
  name, cohort, age, country, birth = information
  # while the name is not empty, repeat this code
  while !name.empty?
    # add the student hash to the array
    students << { name: name, age: age, country: country, birth: birth, cohort: cohort }
    puts "Now we have #{students.count} students".center(50)
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

# This while loop now takes more information from the users input
def print(students)
  count = 0
  while count < students.length
    puts "#{count + 1}. #{students[count][:name]} is#{students[count][:age]} years old from#{students[count][:country]} and is born in#{students[count][:birth]} and is a#{students[count][:cohort]} cohort".center(50)
    count += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
