class Invite < ActiveRecord::Base

  RSVP_STATUSES = ['Accepted', 'Declined']
  
  attr_readonly :token
  validates_presence_of :token
  validates_uniqueness_of :token

  before_validation :generate_token, on: :create

  # A token that needs to be matched in a url to submit a reference
  def generate_token
    self.token = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless Invite.exists?(token: random_token)
    end
  end

end
