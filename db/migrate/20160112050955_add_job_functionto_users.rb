class AddJobFunctiontoUsers < ActiveRecord::Migration
  def change
    add_column :users, :job_function, :string
  end
end
