accounts = []

2.times do

  account_hash ={}

  puts "Please enter a first name"
  account_hash[:first_name] = gets.chomp.capitalize

  puts "Please enter a last name"
  account_hash[:last_name] = gets.chomp.capitalize

  puts "Please enter an email address"
  email_address = gets.chomp

    while true
      if
        email_address.include?("@") && email_address.end_with?(".com", ".edu", ".net")
        account_hash[:email] = email_address
        break
      else 
        puts "please try entering email address again"
        email_address = gets.chomp
        account_hash[:email] = email_address
      end
    end

    puts "--------------------------------"

  random_account_number = rand(9999999999).to_s.center(10, rand(0..9).to_s)
  account_hash[:account_number] = random_account_number

  accounts << account_hash

end

puts "ACCOUNTS INFORMATION:"
puts "--------------------------------"

accounts.each do |account|
  puts "FIRST NAME: #{account[:first_name]}"
  puts "LAST NAME: #{account[:last_name]}"
  puts "EMAIL: #{account[:email]}"
  puts "ACCT #: #{account[:account_number]}"
  puts "--------------------------------"
end

puts "Enter your account number"
account_input = gets.chomp

puts "--------------------------------"

puts "ACCOUNT: #{account_input} INFORMATION:"
puts "--------------------------------"

accounts.each do |account|
  if account.has_value?(account_input)
    puts "FIRST NAME: #{account[:first_name]}"
    puts "LAST NAME: #{account[:last_name]}"
    puts "EMAIL: #{account[:email]}"
    puts "ACCT #: #{account[:account_number]}"
  end
end