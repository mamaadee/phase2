class Location < ApplicationRecord
    has_many :camps
    
    validates_uniqueness_of :name
    
    scope :alphabetical, -> {order("name")}
    scope :active, -> {where(active: true)}
    scope :inactive, -> { where(active: false) }
end
