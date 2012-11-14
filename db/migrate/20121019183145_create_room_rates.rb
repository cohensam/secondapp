class CreateRoomRates < ActiveRecord::Migration
  def change
    create_table :room_rates do |t|
      t.string :name
      t.string :condition
      t.integer :roomnumber
      t.integer :floor
      t.string :layout
      t.string :building
      t.string :roommate

      t.timestamps
    end
  end
end
