students = []

while true 
  p "enter name of student:"
  student_name = gets.chomp
  students << student_name
   if student_name == "done"
    break
  end
end

students.delete("done")

p students



