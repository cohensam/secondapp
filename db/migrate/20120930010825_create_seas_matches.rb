class CreateSeasMatches < ActiveRecord::Migration
  def change
    create_table :seas_matches do |t|
      t.string :Name
      t.string :Graduation_Year
      t.string :Major
      t.string :Minor
      t.string :Description
      t.string :Interests

      t.timestamps
    end
  end
end
