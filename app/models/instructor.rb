class Instructor < ApplicationRecord
    has_one :camp_instructor
    
    scope :alphabetical, -> {order("first_name", "last_name")}
    scope :active, -> {where(active: true)}
    scope :inactive, -> {where(active: false)}

    
    def name
      first_name+" "+ last_name
    end
    
    def proper_name
        "#{first_name} #{last_name}"
    end
end