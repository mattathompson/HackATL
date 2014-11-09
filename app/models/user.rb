class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable,
         :omniauth_providers => [:google_oauth2]

  validates_presence_of :first_name, :last_name, :email,
                        :encrypted_password, :address, :city,
                        :state, :zip
  has_many :preferences
  has_many :prefered_clients, through: :preferences, source: :client
  has_many :redemptions

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:email => data["email"]).first

    #Uncomment the section below if you want users to be created if they don't exist
     unless user
         user = User.create(name: data["name"],
            email: data["email"],
            password: Devise.friendly_token[0,20]
            )
     end
    user
  end

end
