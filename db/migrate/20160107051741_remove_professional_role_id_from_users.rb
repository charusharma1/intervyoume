class RemoveProfessionalRoleIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :professional_role_id, :integer

  end
end
