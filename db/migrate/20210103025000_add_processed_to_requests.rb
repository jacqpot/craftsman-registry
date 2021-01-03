class AddProcessedToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :processed, :boolean, default: false
  end
end
