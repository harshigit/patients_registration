class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :Patient_name
      t.date :DOB
      t.string :Identity_card_type
      t.integer :Identity_card_number
      t.integer :Staff_identity, foreign_key = true
	  

      t.timestamps
    end
  end
end
