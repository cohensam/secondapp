class CreateRoomRates < ActiveRecord::Migration
  def change
    create_table :room_rates do |t|
      t.string :Name
      t.string :Roommate
      t.string :Building
      t.string :Floor
      t.string :RoomNumber
      t.string :Layout
      t.string :Condition

      t.timestamps
    end
  end
end
