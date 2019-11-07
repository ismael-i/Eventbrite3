class UserMailer < ApplicationMailer
    default from: 'tsiory.rktmhnn@gmail.com'
 
  def welcome_email(user)
    @user = user 
    @url  = 'http://eventbrite.mg/login' 
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def attendance_email(attendance) 
    @attendance = attendance
    @url  = 'http://eventbrite.mg/login' 
    mail(to: @attendance.customer.email, subject: 'Vous etes invité !') 
  end
  
end
