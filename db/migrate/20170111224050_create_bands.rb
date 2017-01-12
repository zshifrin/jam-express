class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :logo
      t.integer :concert_id

      t.timestamps
    end
  end
end
