class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :animal, foreign_key: true
      t.references :user, foreign_key: true
      t.string :status
      t.date :starting_date
      t.date :ending_date
      t.integer :total_price

      t.timestamps
    end
  end
end
