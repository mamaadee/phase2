class CampInstructor < ApplicationRecord
    #relationships
    has_many :instructors, :camps
    belongs_to :instructor
    belongs_to :camp
    
    #validations
    validates_presence_of :camp_id, :instructor_id
end
