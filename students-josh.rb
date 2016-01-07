puts "eneter names and ill split into groups"
names = []
entered_name = ""

until entered_name == "done"
  unless entered_name == ""
    names << entered_name
  end
  entered_name = gets.chomp
end

until mixed_up_names.length == 0
  if mixed_up_names.length == 3
    group = mixed_up_names.pop(3)
  else 
    group = mixed_up_names.pop(2)
  end

  print "group:"
  group.each do |member|
    print "#{member} "
  end
end
