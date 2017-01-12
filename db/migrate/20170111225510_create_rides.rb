class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.string :seat_type
      t.string :destination
      t.string :start_point
      t.text :notes
      t.string :payment

      t.timestamps
    end
  end
end
