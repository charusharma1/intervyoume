class Appointment < ActiveRecord::Base
  has_many :users

  def self.get_software_engineering
    Appointment.where("job_function", "software engineering")
  end

  def self.get_consulting
    Appointment.where("job_function", "consulting")
  end

  def self.get_investment_banking
    Appointment.where("job_function", "investment banking")
  end

end
