class CreateJoinTableUsersSkills < ActiveRecord::Migration[6.1]
  def change
    create_join_table :users, :skills do |t|
       t.references :users, foreign_key: true
       t.references :skills, foreign_key: true
    end
  end
end
