# This does not create the table. Still need to run it
# Rails automatically adds an id (primary key) in the table
# To run this code, type into the terminal rails db:migrate
class CreateCompanies < ActiveRecord::Migration[7.0] # Models are singular (factory). Builds cars (companies) which are rows in table. Rails made it plural on its own
  def change
    create_table :companies do |t|
      t.string "name"
      t.string "city"
      t.string "state"
      t.string "url"

      t.timestamps
    end
  end
end
