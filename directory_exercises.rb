
=begin
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
=end


def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print(students)

  i = 0
  while i < students.length
    puts "#{i+1}. #{students[i][:name]} (#{students[i][:cohort]} cohort, I'm a #{students[i][:hobby]} and I'm from #{students[i][:country]})".center(80, ".")
    i += 1
  end

end

def print_footer(students)
  puts "Overall, we have #{students.count} great students!"
end

def input_students
  puts "Please enter the name and cohort (November or December) of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name and cohort
  answer = gets.chomp.split(" ").map{|e|e.capitalize}
  #while the name is not empty, repeat this code
  while !answer.empty? do
    #add the student hash to the array with a default value of TBC if he hasn't provided a cohort
    answer[1] = "TBC" if answer[1] == nil
    #what if they make a typo
    while answer[1] != "November" && answer[1] != "December" && answer[1] != "TBC"
      puts "Please could you repeat the cohort"
      answer[1] = gets.chomp.capitalize
    end
    students << {name: answer[0], cohort: answer[1].to_sym, country: :italy, hobby: :coder}
    puts "Now we have #{students.count} students"
    answer = gets.chomp.split(" ").map{|e|e.capitalize}
  end
  #return the array 
  students
end

students = input_students
print_header
print(students)
print_footer(students)

