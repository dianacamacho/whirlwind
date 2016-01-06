students = []
name = nil

while name != "" 
  puts "enter name of student, press enter when done:"
  name = gets.chomp
  students << name unless name == ""
end

shuffled_names = students.shuffle!

number_of_students = shuffled_names.size
loop_times = number_of_students / 2

loop_times.times do 
  if shuffled_names.size != 3
    group_names = shuffled_names.shift(2)
    puts "Group: #{group_names[0]}, #{group_names[1]}"
  else
    group_names = shuffled_names.shift(3)
    puts "Group: #{group_names[0]}, #{group_names[1]}, #{group_names[2]}"
  end
end



