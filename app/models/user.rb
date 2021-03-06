class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    #Relation
    has_many :attendances
    has_many :customer_s_attendances, foreign_key: "customer_id",class_name: "Attendance"
    has_many :admin_s_attendances, foreign_key: "admin_id",class_name: "Attendance"

    #mailer
    after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
