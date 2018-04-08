class Curriculum < ApplicationRecord
    #relationship
    has_many :camps
    
    #validations
    validates_uniqueness_of :name
    
    #scopes
    scope :alphabetical, -> {order("name")}
    scope :active, -> {where(active: true)}
    scope :inactive, -> { where(active: false) }
    scope :for_rating, includes(:ratings)
end
