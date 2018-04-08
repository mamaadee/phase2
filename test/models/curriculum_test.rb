require 'test_helper'

class CurriculumTest < ActiveSupport::TestCase
    #relationships
    should have_many(:camps)
    should allow_value("C1").for(:name)
    should allow_value(10).for(:min_rating)
    should allow_value(10).for(:max_rating)
    should_not allow_value(-1).for(:min_rating)
    should_not allow_value(3001).for(:max_rating)
    should_not allow_value("bad").for(:min_rating)
    should_not allow_value("bad").for(:max_rating)
    
    #scopes
    context "Creating a curriculum context" do
      setup do 
        create_curriculums
      end
      
      should "Have a scope to select only active Curriculums" do
        assert_equal ["A","C"], Curriculum.active.all.map{|t| t.name}
      end
      
      should "Have a scope to alphabetical Curriculums" do
        assert_equal ["A", "B", "C"], Curriculum.alphabetical.all.map{|t| t.name}
      end
      
      should "Have a scope for ratings" do
        assert_equal ["A", "B", "C"], Curriculum.for_rating.all.map{|t| t.name}
      end
    end
    
end
