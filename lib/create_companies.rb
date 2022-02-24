Company.destroy_all

apple = Company.new
apple.name = "Apple, Inc."
apple.city = "Cupertino"
apple.state = "CA"
apple.save

amazon = Company.new
amazon.name = "Amazon.com, Inc."
amazon.city = "Seattle"
amazon.state = "WA"
amazon.save

tesla = Company.new
tesla.name = "Tesla, Inc."
tesla.city = "Palo Alto"
tesla.state = "CA"
tesla.save

puts "There are now #{Company.all.count} companies."
