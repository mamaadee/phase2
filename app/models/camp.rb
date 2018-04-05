class Camp < ApplicationRecord
    has_one :location, :curriculum
    belongs_to :curriculum
    belongs_to :location
    
    scope :alphabetical, -> {order("name")}
    scope :active, -> {where(active: true)}
    validates_date(:due_on)
    scope :chronological, -> {order("due_on")}
    scope :past, -> {where("due_on < ?", Date.today)}
    scope :upcoming, -> {where("due_on >= ?", Date.today)}

end
