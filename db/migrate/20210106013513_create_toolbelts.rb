class CreateToolbelts < ActiveRecord::Migration[6.1]
  def change
    create_table :toolbelts do |t|
      t.belongs_to :user 
      t.belongs_to :skill
      t.timestamps
    end
  end
end
