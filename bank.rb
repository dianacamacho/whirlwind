accounts = []

5.times do

  account_hash ={}

  puts "Please enter a first name"
  account_hash[:first_name] = gets.chomp.capitalize

  puts "Please enter a last name"
  account_hash[:last_name] = gets.chomp.capitalize

  puts "Please enter an email address"
  account_hash[:email] = gets.chomp

  random_account_number = rand(9999999999).to_s.center(10, rand(0..9).to_s)
  account_hash[:account_number] = random_account_number


  accounts << account_hash

end

accounts.each do |hash|
  puts "FIRST NAME: #{hash[:first_name]}"
  puts "LAST NAME: #{hash[:last_name]}"
  puts "EMAIL: #{hash[:email]}"
  puts "ACCT #: #{hash[:account_number]}"
  puts "--------------"
end
