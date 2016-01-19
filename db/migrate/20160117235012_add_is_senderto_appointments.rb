class AddIsSendertoAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :sender, :boolean

  end
end
