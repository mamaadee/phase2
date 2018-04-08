require 'test_helper'

class InstructorTest < ActiveSupport::TestCase
  #relationships
  should have_many(:camp_instructors)
  should have_many(:camps).through(:camp_instructors)
  
  #validations
  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)
  should validate_uniqueness_of(:email).case_insensitive
  should validate_presence_of(:email)
  should allow_value("mamaadee@qatar.edu").for(:email)
  #should_not allow_value("mamaadee@qatar,com").for(:email)
  should allow_value("6600116121").for(:phone)
  #should_not allow_value("MA-R-YAM").for(:phone)
  
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
      
    should "name method" do
      assert_equal "AlMaadeed, Maryam", @maryam.name
      assert_equal "AlSheeb, Dana", @dana.name
    end
    
    should "proper_name method " do
      assert_equal "AlMaadeed, Maryam", @maryam.proper_name
      assert_equal "AlSheeb, Dana", @dana.proper_name
    end

    should "phone " do
      assert_equal "66001161", @maryam.phone
    end

      
  end

end
