class Curriculum < ApplicationRecord
    has_many :camps
    
    #scopes
    scope :alphabetical, -> {order("name")}
    scope :active, -> {where(active: true)}
    scope :for_rating, includes(:ratings)
end
