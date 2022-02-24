Company.destroy_all
Contact.destroy_all
Activity.destroy_all

apple = Company.new({ name: "Apple", city: "Cupertino", state: "CA" })
apple.save
tim = Contact.new({ 
  first_name: "Tim", 
  last_name: "Cook", 
  email: "tim@apple.com", 
  phone_number: "777-777-7777", 
  company_id: apple.id
})
tim.save

activity = Activity.new({ activity_type: "email", contact_id: tim.id, note: "Emailed to set up a time to chat." })
activity.save
activity = Activity.new({ activity_type: "call", contact_id: tim.id, note: "Good initial chat. Will follow up." })
activity.save

craig = Contact.new({ 
  first_name: "Craig", 
  last_name: "Federighi", 
  email: "craig@apple.com", 
  phone_number: "888-888-8888", 
  company_id: apple.id 
})
craig.save

amazon = Company.new({ name: "Amazon", city: "Seattle", state: "WA" })
amazon.save
andy = Contact.new({ 
  first_name: "Andy", 
  last_name: "Jassy", 
  email: "andy@amazon.com", 
  phone_number: "666-666-6666", 
  company_id: amazon.id 
})
andy.save

tesla = Company.new({ name: "Tesla", city: "Palo Alto", state: "CA" })
tesla.save
elon = Contact.new({ 
  first_name: "Elon", 
  last_name: "Musk", 
  email: "elon@tesla.com", 
  phone_number: "555-555-5555", 
  company_id: tesla.id 
})
elon.save

puts "There are now #{Company.all.count} companies, #{Contact.all.count} contacts, and #{Activity.all.count} activities."
