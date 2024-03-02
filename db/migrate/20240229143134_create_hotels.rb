class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name, default: ''
      t.string :email, null: false, default: ''
      t.integer :location, index: true
      t.string :phone_number, limit: 10
      t.integer :stars
      t.timestamps
    end

    add_index :hotels, :email, unique: true
  end
end
