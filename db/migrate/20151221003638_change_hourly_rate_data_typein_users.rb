class ChangeHourlyRateDataTypeinUsers < ActiveRecord::Migration
  def change
    change_column :users, :hourly_rate, :decimal, precision: 6, scale: 2

  end
end
