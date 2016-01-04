class AddProfessionalRoleIdToUsers < ActiveRecord::Migration
  def change

    add_column :users, :professional_role_id, :integer
    add_column :users, :last_name, :text
    remove_column :users, :last_email, :text
    remove_column :users, :job_function, :text
    remove_column :users, :role_id, :integer

  end
end
