class CampInstructor < ApplicationRecord
    #relationships
    belongs_to :instructor
    belongs_to :camp
    
    #validations
    validates_presence_of :camp_id, :instructor_id
end
