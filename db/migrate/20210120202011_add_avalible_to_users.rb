class AddAvalibleToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :avalible, :boolean 
  end
end
