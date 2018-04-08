require 'test_helper'

class CampTest < ActiveSupport::TestCase
  #relationships
  should belong_to(:curriculum)
  should belong_to(:location)
  should have_many(:camp_instructors)
  should have_many(:instructors).through(:camp_instructor)
  should allow_value(Date.today).for(:start_date)
  should allow_value(1.day.from_now.to_date).for(:start_date)
  should allow_value(1.day.ago.to_date).for(:start_date)
  should_not allow_value("bad").for(:start_date)
  should_not allow_value(2).for(:start_date)
  should_not allow_value(3.14159).for(:start_date)
  should_not allow_value("bad").for(:end_date)
  should_not allow_value(2).for(:end_date)
  should_not allow_value(3.14159).for(:end_date)
  
  #validations
  should validate_presence_of(:curriculum_id)
  should validate_presence_of(:location_id)
  should validate_presence_of(:start_date)
  should validate_presence_of(:time_slot)
  
  #scopes
  context "Creating a set of Camps" do
    setup do
      create_curriculums
      create_camps
      create_active_locations
    end

    should "Have a scope to select only active Camps" do
      assert_equal 5, Camp.active.size
      assert_equal ["C1","C3", "C4","C5", "C6"], Camp.active.all.map{|c| c.curriculum.name}.sort
    end
    
    should "Have a scope to select only inactive Camps" do
      assert_equal 1, Camp.active.size
      assert_equal ["C2"], Camp.inactive.all.map{|c| c.curriculum.name}.sort
    end
      
    should "have a scope to order alphabetically by camp name" do
      assert_equal ["C1","C2","C3", "C4","C5", "C6","C7"], Camp.alphabetical.all.map{|c| c.curriculum.name}
    end

    should "have a scope to order chronologically by due_on date" do
      assert_equal ["C1","C2","C3", "C4","C5", "C6","C7"], Camp.chronological.all.map{|c| "#{c.name}-#{c.start_date.strftime("%b %d")}"}
    end

  end
end
