class Client < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name, :email, :address, :city, :state,
                        :zip, :phone, :phone
  has_many :preferences
  has_many :user_preferences, through: :preferences, source: :users                      

end
