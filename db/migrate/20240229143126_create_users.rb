class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ''
      t.string :first_name, default: ''
      t.string :last_name, default: ''
      t.string :phone_number, limit: 10
      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
