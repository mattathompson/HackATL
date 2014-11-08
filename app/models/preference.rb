class Preference < ActiveRecord::Base
  validates_uniqueness_of :client_id, scope: :user_id

  belongs_to :user
  belongs_to :client

end
