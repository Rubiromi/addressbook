class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :description
      t.string :zip
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :country
      t.string :phone
      t.timestamps null: false
    end
  end
end
