class Instructor < ApplicationRecord
    #relationships
    has_one :camp_instructor
    
    #validations
    validates_presence_of :first_name, :last_name, :email
    validates_format_of :phone, with: /\A\(?\d{3}\)?[-. ]?\d{3}[-.]?\d{4}\z/, message: "should be only digits"
    validates_uniqueness_of :email
    
    #scopes
    scope :alphabetical, -> {order("first_name", "last_name")}
    scope :active, -> {where(active: true)}
    scope :inactive, -> {where(active: false)}

    #methods
    def name
      last_name+", "+ first_name
    end
    
    def proper_name
        first_name+" "+last_name
    end
end