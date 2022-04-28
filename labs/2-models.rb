# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new # Creates a new row

new_salesperson["first_name"] = "Tom" # Adds content to a column in a row
new_salesperson["last_name"] = "Gazzard"
new_salesperson["email"] = "gazzard.thomas@gmail.com"
new_salesperson.save

new_salesperson2 = Salesperson.new 

new_salesperson2["first_name"] = "Biruk" # Adds content to a column in a row
new_salesperson2["last_name"] = "Bikele"
new_salesperson2["email"] = "myguy@gmail.com"
new_salesperson2.save

# 3. write code to display how many salespeople rows are in the database

puts "There are #{Salesperson.all.count} salespeople"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

tom_gazzard = Salesperson.find_by({"first_name" => "Tom", "last_name" => "Gazzard"})
tom_gazzard["email"] = "tom.gazzard@kellogg.northwestern.edu"
tom_gazzard.save

puts tom_gazzard.inspect

# CHALLENGE:
# 5. write code to display each salesperson's full name

salespeople = Salesperson.all
for sp in salespeople
    first_name = Salesperson["first_name"]
    last_name = Salesperson["last_name"]
    puts "#{first_name} #{last_name}"
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
