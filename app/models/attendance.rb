class Attendance < ApplicationRecord
    #Relation
    belongs_to :admin, class_name: "User"
    belongs_to :customer, class_name: "User"
    belongs_to :event

    #Mailer

    after_create :attendance_send

    def attendance_send
      UserMailer.attendance_email(self).deliver_now
    end
end
