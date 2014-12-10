class InvitationMailer < ActionMailer::Base
  default :from => "#{Rails.application.name} " <<
    "<noreply@forwoodworkers.com>"

  def invitation(invitation)
    @invitation = invitation

    mail(
      :to => invitation.email,
      subject: "[#{Rails.application.name}] You have been invited to " <<
        Rails.application.name
    )
  end
end
