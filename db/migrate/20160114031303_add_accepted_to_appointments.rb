class AddAcceptedToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :accepted, :boolean
  end
end
