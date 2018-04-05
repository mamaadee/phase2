class CampInstructor < ApplicationRecord
    has_many :instructors, :camps
    belongs_to :instructor
    belongs_to :camp
end
