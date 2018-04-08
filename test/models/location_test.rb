require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  #relationships
  should have_many(:camps)
  
  #validations
  should validate_presence_of(:name)
  should validate_presence_of(:street1)
  should validate_presence_of(:zip)
  should validate_uniqueness_of(:name).case_insensitive
  should validate_presence_of(:max_capacity)
  should allow_value("15217").for(:zip)
  should_not allow_value("location").for(:zip)
  
  #scopes
  context "Creating a location context" do
      setup do 
        create_active_locations
      end
      
      teardown do
        destroy_active_locations
      end
      
      should "Have a scope to select only active Locations" do
        assert_equal ["Doha","London", "Paris", "Madrid"], Location.active.all.map(&:name).sort
      end
      
      should "Have a scope to select only inactive Locations" do
        assert_equal ["Dubai"], Location.inactive.all.map(&:name).sort
      end
      
      should "Have a scope to alphabetical Locations" do
        assert_equal ["Doha","Dubai", "London", "Madrid", "Paris"], Location.alphabetical.all.map(&:name)
      end
      
  end    
end
