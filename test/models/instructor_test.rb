require 'test_helper'

class InstructorTest < ActiveSupport::TestCase
  #relationships
  should have_one(:camp_instructor)
  
  #validations
  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)
  should validate_presence_of(:email)
  should validate_confirmation_of(:phone)
  
  context "Creating a instructors context" do
      setup do 
        create_instructors
      end
      
      should "Have a scope to select only active instructors" do
        assert_equal ["Maryam","Maha", "Aisha", "Amna"], Instructor.active.all.map{|i| i.name}
      end
      
      should "Have a scope to alphabetical instructors" do
        assert_equal ["Aisha","Amna", "Dana", "Maha", "Maryam"], Instructor.alphabetical.all.map{|i| i.name}
      end
      
  end

end
