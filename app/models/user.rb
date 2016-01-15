class User < ActiveRecord::Base
  attr_accessor :password
  has_many :jobseeker_appointments, foreign_key: :expert_id, class_name: "Appointment"
  has_many :jobseekers, through: :jobseeker_appointments

  has_many :expert_appointments, foreign_key: :jobseeker_id, class_name: "Appointment"
  has_many :experts, through: :expert_appointments

  has_many :professional_roles
  # Include default devise modules. Others available are:
  # :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable



  def full_name
    "#{first_name} #{last_name}"
  end


end

