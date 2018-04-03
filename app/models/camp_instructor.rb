class CampInstructor < ApplicationRecord
    has_one :instructor, :camp
    belongs_to :instructor
    belongs_to :camp
end
