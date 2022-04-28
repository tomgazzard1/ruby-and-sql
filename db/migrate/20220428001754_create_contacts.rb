class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.integer "company_id" # The value in the rows is integers, but the name of the column is a string.

      t.timestamps
    end
  end
end

