class Location < ApplicationRecord
    #relationships
    has_many :camps
    
    #validations
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    validates_presence_of :street1, :zip
    validates_format_of :zip, with: /\A\d{5}\z/, message: "should be five digits long"
    validates :max_capacity, presence: true, numericality: {only_integer: true, greater_than: 0, allow_blank: true}
    
    #scopes
    scope :alphabetical, -> {order("name")}
    scope :active, -> {where(active: true)}
    scope :inactive, -> { where(active: false) }
end
