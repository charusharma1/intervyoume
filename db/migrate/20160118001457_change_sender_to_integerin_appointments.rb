class ChangeSenderToIntegerinAppointments < ActiveRecord::Migration
  def change
    change_column :appointments, :sender, :integer

  end
end
