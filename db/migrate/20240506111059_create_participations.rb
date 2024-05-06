class CreateParticipations < ActiveRecord::Migration[7.1]
  def change
    create_table :participations do |t|
      t.string :stripe_customer_id

      t.timestamps
    end
  end
end
