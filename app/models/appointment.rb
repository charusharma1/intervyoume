class Appointment < ActiveRecord::Base
  has_many :users

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
