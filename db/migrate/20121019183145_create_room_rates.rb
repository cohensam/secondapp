class CreateRoomRates < ActiveRecord::Migration
  def change
    create_table :room_rates do |t|
      t.string :name
      t.string :condition
      t.string :roomnumber
      t.string :floor
      t.string :layout
      t.string :building
      t.string :roommate

      t.timestamps
    end
  end
end
