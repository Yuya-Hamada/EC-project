class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.integer :address_number
      t.string :address
      t.integer :user_id
      t.timestamps
    end
  end
end
