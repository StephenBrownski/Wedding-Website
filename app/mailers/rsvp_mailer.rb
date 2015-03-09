class RsvpMailer < ActionMailer::Base
  default from: "stephen@agilestyle.com"

  def confirmation_email(rsvp)
    @rsvp = rsvp
    mail(to: @rsvp.email, subject: 'RSVP for the wedding!')
  end
end
