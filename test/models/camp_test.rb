require 'test_helper'

class CampTest < ActiveSupport::TestCase
  #relationships
  should belong_to(:curriculum)
  should belong_to(:location)
  should have_many(:camp_instructors)
  should have_many(:instructors).through(:camp_instructor)
  
  #validations
  should validate_presence_of(:curriculum_id)
  should validate_presence_of(:location_id)
  should validate_presence_of(:start_date)
  should validate_presence_of(:end_date)
  should validate_presence_of(:time_slot)
  
  #scopes
  context "Creating a set of Camps" do
    setup do
      create_locations
      create_curriculums
      create_camps
      create_camp_instructors
    end

    should "Have a scope to select only active Camps" do
        assert_equal ["C1","C2","C3", "C4","C5", "C6","C7"], Camp.active.all.map{|c| c.name}
    end
      
    should "have a scope to order alphabetically by camp name" do
      assert_equal ["C1","C2","C3", "C4","C5", "C6","C7"], Camp.alphabetical.all.map{|c| c.name}
    end

    should "have a scope to order chronologically by due_on date" do
      assert_equal ["C1","C2","C3", "C4","C5", "C6","C7"], Camp.chronologicalalphabetical.map{|c| c.name}
    end

    should "have a scope for upcoming Camps" do
      assert_equal 6, Camp.upcoming.size
    end

    should "have a scope for past Camps" do
      assert_equal 1, Camp.past.size
    end
  end
end
