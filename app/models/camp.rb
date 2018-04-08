class Camp < ApplicationRecord
    #callback
    before_update :remove_instructors_from_inactive_camp
    
    #relationships
    belongs_to :curriculum
    belongs_to :location
    has_many :camp_instructors
    has_many :instructors, through: :camp_instructor
    
    #validations
    validates_uniqueness_of :name
    validates_presence_of :curriculum_id, :location_id, :start_date, :time_slot
    validates_numericality_of :max_students, only_integer: true, greater_than: 0, allow_blank: true
    validate :curriculum_is_active_in_system, on: :create
    validate :location_is_active_in_system, on: :create
    validate :camp_is_not_a_duplicate, on: :create
    validate :max_students_not_greater_than_capacity, on: :create
    validates_numericality_of :cost, greater_than_or_equal_to: 0
    validates_date :start_date, :on_or_after => lambda {Date.today}, :on_or_after_message => "This is the past" on: :create
    validates_date :end_date, :on_or_after => :start_date
    validates_inclusion_of :time_slot, in: %w[am pm], message: "try a different time slot"
    
    #scopes
    scope :alphabetical, -> {order("name")}
    scope :active, -> {where(active: true)}
    scope :inactive, -> { where(active: false) }
    validates_date(:due_on)
    scope :chronological, -> {order('start_date', 'end_date')}
    scope :past, -> {where("due_on < ?", Date.today)}
    scope :upcoming, -> {where("due_on >= ?", Date.today)}
    scope :morning, -> {where('time_slot = ?','am')}
    scope :afternoon, -> {where('time_slot = ?','pm')}
    scope :for_curriculum, ->(curriculum_id) {where("curriculum_id = ?", curriculum_id) }
    
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
    
    def max_students_not_greater_than_capacity
        return true if self.max_students.nil? || self.location_id.nil?
        if self.max_students > self.location.max_capacity
            errors.add(:max_students, "No space camp already full")
        end
    end

    def remove_instructors_from_inactive_camp
        if !self.active
            self.camp_instructors.each{|ci| ci.destroy}
        end
    end
  
    def camp_is_not_a_duplicate
        return true if self.time_slot.nil? || self.start_date.nil? || self.location_id.nil?
        if self.already_exists?
            errors.add(:time_slot, "this exists")
        end
    end
    
    def already_exists?
        Camp.where(time_slot: self.time_slot, start_date: self.start_date, location_id: self.location_id).size == 1
    end

end
