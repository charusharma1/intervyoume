class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :jobseeker_id
      t.integer :expert_id
      t.datetime :appointment_time
      t.string :appointment_channel

      t.timestamps null: true
    end
  end
end
