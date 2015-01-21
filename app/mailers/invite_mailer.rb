class InviteMailer < ActionMailer::Base
  default from: "stephen@agilestyle.com"

  def confirmation_email(invite)
    @invite = invite
    mail(to: @invite.email, subject: 'RSVP for the wedding!')
  end
end
