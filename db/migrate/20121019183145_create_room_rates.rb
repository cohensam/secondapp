class CreateRoomRates < ActiveRecord::Migration
  def change
    create_table :room_rates do |t|
      t.string :Name
      t.string :Condition
      t.string :RoomNumber
      t.string :Floor
      t.string :Layout
      t.string :Building
      t.string :Roommate

      t.timestamps
    end
  end
end
