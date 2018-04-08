class Location < ApplicationRecord
    #relationships
    has_many :camps
    
    #validations
    validates_uniqueness_of :name
    validates_presence_of :street1, :zip
    validates_format_of :zip, with: /\A\d{5}\z/, message: "should be five digits long"
    
    #scopes
    scope :alphabetical, -> {order("name")}
    scope :active, -> {where(active: true)}
    scope :inactive, -> { where(active: false) }
end
