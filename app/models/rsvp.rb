class Rsvp < ActiveRecord::Base

  RSVP_STATUSES = [
    { :text => 'I will celebrate in person', :value => 'accepted' },
    { :text => 'I will celebrate in spirit', :value => 'declined' }
  ]
  
  # attr_readonly :token
  # validates_presence_of :token
  # validates_uniqueness_of :token

  # before_validation :generate_token, on: :create

  # # A token that needs to be matched in a url to submit a reference
  # def generate_token
  #   self.token = loop do
  #     random_token = SecureRandom.urlsafe_base64(nil, false)
  #     break random_token unless Rsvp.exists?(token: random_token)
  #   end
  # end

end
