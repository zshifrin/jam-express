class CreateParties < ActiveRecord::Migration[5.0]
  def change
    create_table :parties do |t|
      t.string :when
      t.datetime :time
      t.string :location
      t.text :details
      t.string :cover

      t.timestamps
    end
  end
end
