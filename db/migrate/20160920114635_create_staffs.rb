class CreateStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :staffs do |t|
      t.integer :Staff_identity
      t.integer :Staff_sys_ip_location

      t.timestamps
    end
	add_foreign_key :staffs, :Patients, column: :Staff_identity, primary_key:Staff_identity
  end
end
