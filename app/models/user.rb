class User < ApplicationRecord
    has_many :attendances
    has_many :customers_attendences, foreign_key: "customer_id", class_name: "Attendence"
    has_many :admins_attendens, foreign_key: "admin_id", class_name: "Attendence"
end
