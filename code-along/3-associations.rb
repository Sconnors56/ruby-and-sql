# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

puts "Companies: #{Company.all.count}"
puts "Contacts: #{Contact.all.count}"


# 1. insert new rows in the contacts table with relationship to a company
contact = Contact.new
contact["first_name"] = "Tim"
contact["last_name"] = "Cook"
contact["email"] = "tim@apple.com"
contact["company_id"] = apple["id"]
contact.save

contact = Contact.new
contact["first_name"] = "Sean"
contact["last_name"] = "Con"
contact["email"] = "sean@apple.com"
contact["company_id"] = apple["id"]
contact.save
p contact


# 2. How many contacts work at Apple?

contacts = Contact.where({"company_id" => apple["id"]}) #foreign key primary key relationship
p "Apple people: #{contacts.count}"


# 3. What is the full name of each contact who works at Apple?
for contact in contacts
    puts"#{contact["first_name"]} #{contact["last_name"]}
end