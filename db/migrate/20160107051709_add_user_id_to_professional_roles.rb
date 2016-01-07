class AddUserIdToProfessionalRoles < ActiveRecord::Migration
  def change
    add_column :professional_roles, :user_id, :integer

  end
end
