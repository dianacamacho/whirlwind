students = []

while true 
  p "enter name of student:"
  student_name = gets.chomp
  students << student_name
   if student_name == ""
    break
  end
end

students.delete("")

p students




