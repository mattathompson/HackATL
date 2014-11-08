class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name, :email,
                        :encrypted_password, :address, :city,
                        :state, :zip
  has_many :preferences
  has_many :prefered_clients, through: :preferences, source: :client
  has_many :redemptions
end
