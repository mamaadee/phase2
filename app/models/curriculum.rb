class Curriculum < ApplicationRecord
    has_many :camps
    
    validates_uniqueness_of :name
    
    #scopes
    scope :alphabetical, -> {order("name")}
    scope :active, -> {where(active: true)}
    scope :inactive, -> { where(active: false) }
    scope :for_rating, includes(:ratings)
end
