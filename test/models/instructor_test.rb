require 'test_helper'

class InstructorTest < ActiveSupport::TestCase
  #relationships
  should have_many(:camp_instructors)
  should have_many(:camps).through(:camp_instructors)
  
  #validations
  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)
  should validate_presence_of(:email)
  should allow_value("mamaadee@qatar.edu").for(:email)
  
  context "Creating a instructors context" do
      setup do 
        create_instructors
      end
      
      teardown do
        destroy_instructors
      end
      
      should "Have a scope to select only active instructors" do
        assert_equal 4, Instructor.active.size
        assert_equal ["Maryam","Maha", "Aisha", "Amna"], Instructor.active.all.map(&:first_name).sort
      end
      
      should "Have a scope to select only inactive instructors" do
        assert_equal 1, Instructor.inactive.size
        assert_equal ["Dana"], Instructor.inactive.all.map(&:first_name).sort
      end
      
      should "Have a scope to alphabetical instructors" do
        assert_equal ["Aisha","Amna", "Dana", "Maha", "Maryam"], Instructor.alphabetical.all.map(&:first_name)
      end
      
  end

end
