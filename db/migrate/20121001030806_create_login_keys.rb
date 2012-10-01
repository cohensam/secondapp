class CreateLoginKeys < ActiveRecord::Migration
  def change
    create_table :login_keys do |t|
      t.string :Name
      t.string :Password
      t.string :Email

      t.timestamps
    end
  end
end
