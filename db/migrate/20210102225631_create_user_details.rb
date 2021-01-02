class CreateUserDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :user_details do |t|
      t.string :name
      t.string :phone_number
      t.string :state
      t.string :city
      t.integer :user_id

      t.timestamps
    end
  end
end
