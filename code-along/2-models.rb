# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
puts "There are #{Company.all.count} companies" # .all is a method on Company

new_company = Company.new
# puts new_company.inspect # The output of this is very similar to a hash
new_company["name"] = "Apple" # The first square brackets assigns the key and the second gives the value in the hash
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://apple.com"
new_company.save

puts new_company.inspect

puts "There are #{Company.all.count} companies"

company = Company.new
company["name"] = "Amazon" # The first square brackets assigns the key and the second gives the value in the hash
company["city"] = "Seattle"
company["state"] = "WA"
company.save

company = Company.new
company["name"] = "Twitter" # The first square brackets assigns the key and the second gives the value in the hash
company["city"] = "San Francisco"
company["state"] = "CA"
company.save

puts "There are #{Company.all.count} companies" # .all is a method on Company

# puts "What are you #{new_company.class}" # Tells you what class it is

# NOTE: every time we run this there is a Company.destroy_all. Note that even though it is destroyed, the ID is not reused (ex: starts at 7)

# 3. query companies table to find all row with California company

all_companies = Company.all
# puts all_companies.inspect # This outputs an array
# puts all_companies[0]

cali_companies = Company.where({"state" => "CA"}) 
# Equivalent of SELECT * FROM companies WHERE state = "CA"
# puts cali_companies.inspect
puts "There are #{cali_companies.count} california companies"

# 4. query companies table to find single row for Apple

apple = Company.find_by({"name" => "Apple"})
# Looking for multiple rows use WHERE (gives array). When you have a single row use find_by and it returns an array
puts apple.inspect

# 5. read a row's column value
puts apple["url"]

# 6. update a row's column value
amazon = Company.find_by({"name"=> "Amazon"})
puts amazon.inspect # URL is nil
amazon["url"] = "https://amazon.com"
amazon.save
puts amazon.inspect # URL is updated


# 7. delete a row
