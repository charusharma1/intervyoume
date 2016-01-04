class CreateProfessionalRoles < ActiveRecord::Migration
  def change
    create_table :professional_roles do |t|
      t.string :title
      t.integer :years_of_experience
      t.string :company

      t.timestamps null: true
    end
  end
end
