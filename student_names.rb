students = []
name = nil
x = 0
#p "enter 'done' when done"

while name != "" 
  p "enter student names"
  name = gets.chomp
  students << name unless name == ""
end

students.shuffle!
size = students.size

if size.even?
  (size/2).times do
    p "Group: #{students[x]} #{students[x+1]}"
    x  = x + 2
  end

else
  (size/2).times do
    if x == 0
      p "Group: #{students[x]} #{students[x+1]} #{students[x+2]}"
      x = x + 3
    else
      p "Group: #{students[x]} #{students[x+1]}"
      x = x +2
    end
  end
end
