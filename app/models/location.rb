class Location < ApplicationRecord
    has_many :camps
    
    scope :alphabetical, -> {order("name")}
    scope :active, -> {where(active: true)}
end
