class Instructor < ApplicationRecord
    before_save :reformat_phone
    #relationships
    has_many :camp_instructors
    has_many :camps, through: :camp_instructors
    
    #validations
    validates_presence_of :first_name, :last_name, :email
    validates_format_of :phone, with: /\A\(?\d{3}\)?[-. ]?\d{3}[-.]?\d{4}\z/, message: "should be only digits"
    validates_uniqueness_of :email
    
    #scopes
    scope :alphabetical, -> {order("first_name", "last_name")}
    scope :active, -> {where(active: true)}
    scope :inactive, -> {where(active: false)}
    scope :needs_bio, -> { where(bio: nil) }

    #methods
    def self.for_camp(camp)
        CampInstructor.where(camp_id: camp.id).map{ |ci| ci.instructor }
    end
  
    def name
      last_name+", "+ first_name
    end
    
    def proper_name
        first_name+" "+last_name
    end
    
    def reformat_phone
        phone = self.phone.to_s 
        phone.gsub!(/[^0-9]/,"") 
        self.phone = phone       
  end
end