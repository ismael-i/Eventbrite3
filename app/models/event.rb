class Event < ApplicationRecord
    #Validation
    validates_with EventValidator
    validates :start_date, :duration, :title, :description, :price, :location, presence: true

    #Relation
    has_many :attendances
    has_many :customers, through: :attendances, class_name: "User"
    belongs_to :admin, class_name: "User"
end
