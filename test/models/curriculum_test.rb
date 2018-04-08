require 'test_helper'

class CurriculumTest < ActiveSupport::TestCase
    #relationships
    should have_many(:camps)
    should validate_presence_of(:name)
    should validate_uniqueness_of(:name)
    should allow_value("C1").for(:name)
    should allow_value(1000).for(:min_rating)
    should allow_value(100).for(:max_rating)
    should allow_value(0).for(:min_rating)
    
    should_not allow_value(-1).for(:min_rating)
    should_not allow_value(3001).for(:max_rating)
    should_not allow_value("bad").for(:min_rating)
    should_not allow_value("bad").for(:max_rating)
    
    #scopes
    context "Creating a curriculum context" do
      setup do 
        create_curriculums
      end
      
      teardown do
        destroy_curriculums
      end
      
      should "Have a scope to select only active Curriculums" do
        assert_equal 2, Curriculum.active.size
        assert_equal ["Calculus", "Java"], Curriculum.active.all.map(&:name).sort, "#{Curriculum.methods}"
      end
      
      should "Have a scope to select only inactive Curriculums" do
        assert_equal 1, Curriculum.inactive.size
        assert_equal ["Ruby"], Curriculum.inactive.all.map(&:name).sort
      end
      
      should "Have a scope to alphabetical Curriculums" do
        assert_equal ["Calculus", "Java", "Ruby"], Curriculum.alphabetical.all.map(&:name), "#{Curriculum.class}"
      end
      
    end
    
    should "shows that max rating is greater than min rating" do
      bad = FactoryBot.build(:curriculum, name: "Bad curriculum", min_rating: 500, max_rating: 500)
      very_bad = FactoryBot.build(:curriculum, name: "Very bad curriculum", min_rating: 500, max_rating: 450)
      deny bad.valid?
      deny very_bad.valid?
    end
    
end



