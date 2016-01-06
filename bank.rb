accounts = []

5.times do

  account_hash ={}

  puts "Please enter a first name"
  account_hash[:first_name] = gets.chomp.capitalize

  puts "Please enter a last name"
  account_hash[:last_name] = gets.chomp.capitalize

  puts "Please enter an email address"
  email_address = gets.chomp
    while true
      if
        email_address.include?("@") && email_address.end_with?(".com")
        account_hash[:email] = email_address
        break
      else 
        puts "please try entering email address again"
        email_address = gets.chomp
        account_hash[:email] = email_address
      end
    end

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

puts "Enter your account number"
account_input = gets.chomp


accounts.each do |hash|
  if hash.has_value?(account_input)
    puts "FIRST NAME: #{hash[:first_name]}"
    puts "LAST NAME: #{hash[:last_name]}"
    puts "EMAIL: #{hash[:email]}"
    puts "ACCT #: #{hash[:account_number]}"
  end
end