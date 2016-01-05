puts "How many recipes does Sam cook?"
sam_recipes = gets.chomp.to_i

puts "How many languages does Sally speak?"
sally_languages = gets.chomp.to_i

if sam_recipes > 10 && sally_languages > 5
  puts "Sam should date sally"
else
  puts "Sam needs to find another girl"

end

puts "Can Sam make crepes?"
sam_crepes = gets.chomp.downcase

puts "Can Sally speak French?"
sally_language = gets.chomp.downcase
  
if sam_crepes == "yes" || sally_language == "yes"
  puts "Sam should marry sally"
else
  puts "Sam is in the friend-zone"
end

