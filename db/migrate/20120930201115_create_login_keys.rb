class CreateLoginKeys < ActiveRecord::Migration
  def change
    create_table :login_keys do |t|
      t.String :Name
      t.String :Password
      t.String :Email
      t.String :Security_Question

      t.timestamps
    end
  end
end
