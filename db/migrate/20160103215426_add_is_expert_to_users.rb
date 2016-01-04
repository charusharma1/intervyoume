class AddIsExpertToUsers < ActiveRecord::Migration
  def change
    add_column :users, :if_expert, :boolean
  end
end
