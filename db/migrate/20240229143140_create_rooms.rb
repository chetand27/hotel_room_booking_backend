class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :room_number, default: ''
      t.integer :hotel_id, index: true
      t.string :description, default: ''
      t.decimal :charged_per_night, precision: 10, scale: 2
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
