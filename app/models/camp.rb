class Camp < ApplicationRecord
    #relationships
    belongs_to :curriculum
    belongs_to :location
    has_many :camp_instructors
    has_many :instructors, through: :camp_instructor
    
    #validations
    validates_uniqueness_of :name
    validates_presence_of :start_date, :end_date, :time_slot
    validate :curriculum_is_active_in_system, on: :create
    validate :location_is_active_in_system, on: :create
    validates_presence_of :curriculum_id, on: :update
    validates_presence_of :location_id, on: :update
    validates_date :start_date, on_or_before: lambda {Date.current}, on_or_before_message: "This is the future"
    
    #scopes
    scope :alphabetical, -> {order("name")}
    scope :active, -> {where(active: true)}
    scope :inactive, -> { where(active: false) }
    validates_date(:due_on)
    scope :chronological, -> {order('start_date DESC, end_date DESC')}
    scope :past, -> {where("due_on < ?", Date.today)}
    scope :upcoming, -> {where("due_on >= ?", Date.today)}
    scope :for_curriculum, ->(curriculum_id) {where("curriculum_id = ", curriculum_id) }
    
    #methods
    def curriculum_is_active_in_system
        all_active_curriculums = Curriculum.active.all.map{|e| e.id}
        unless all_active_curriculums.include?(self.curriculum_id)
            errors.add(:curriculum_id, "is not an active curriculum")
        end
    end
    
    def location_is_active_in_system
        all_active_locations = Location.active.all.map{|a| a.id}
        unless all_active_locations.include?(self.location_id)
            errors.add(:location_id, "is not an active location")
        end
    end

end
