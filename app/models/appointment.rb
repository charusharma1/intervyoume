class Appointment < ActiveRecord::Base
  
  belongs_to :jobseeker, foreign_key: "jobseeker_id", class_name: "User"
  belongs_to :expert, foreign_key: "expert_id", class_name: "User"

  def self.get_web_dev
    Appointment.where("job_function", "web dev")
  end

  def self.get_design
    Appointment.where("job_function", "design")
  end

  def self.get_sales
    Appointment.where("job_function", "sales")
  end

end
