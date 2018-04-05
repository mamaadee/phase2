class Instructor < ApplicationRecord
    has_one :camp_instructor
    
    def name
      first_name+" "+ last_name
    end
    
    scope :alphabetical, -> {order("name")}
    scope :active, -> {where(active: true)}
    
    
end