class User < ActiveRecord::Base
  belongs_to :role 
  has_many :appointments
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

