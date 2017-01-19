class CreateConcertsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts_users do |t|
      t.integer :user_id
      t.integer :concert_id
    end

    add_foreign_key :concerts_users, :users, on_delete: 'cascade'
    add_foreign_key :concerts_users, :concerts, on_delete: 'cascade'
  end
end
