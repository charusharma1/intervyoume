class CreateProfessionalRoleSkills < ActiveRecord::Migration
  def change
    create_table :professional_role_skills do |t|
      t.integer :professional_role_id
      t.integer :skill_id

      t.timestamps null: true 
    end
  end
end
