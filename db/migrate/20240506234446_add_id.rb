class AddId < ActiveRecord::Migration[7.1]
  def change
    add_column :participations, :user_id, :integer
    add_column :participations, :event_id, :integer
  end
end
