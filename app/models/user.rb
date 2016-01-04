class User < ActiveRecord::Base
  belongs_to :role 
  has_many :appointments
  attr_accessor :login
  # Include default devise modules. Others available are:
  # :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable
end
