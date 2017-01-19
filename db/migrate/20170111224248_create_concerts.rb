class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.integer :band_id
      t.datetime :date
      t.string :location
      t.string :venue

      t.timestamps
    end
  end
end
