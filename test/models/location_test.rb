require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  #relationships
  should have_many(:camps)
  
  #validations
  should validate_presence_of(:street1)
  should validate_presence_of(:zip)
  
  #scopes
  context "Creating a location context" do
      setup do 
        create_locations
      end
      
      should "Have a scope to select only active Locations" do
        assert_equal ["Doha","London", "Paris", "Madrid"], Location.active.all.map{|l| l.name}
      end
      
      should "Have a scope to alphabetical Locations" do
        assert_equal ["Doha","Dubai", "London", "Madrid", "Paris"], Location.alphabetical.all.map{|l| l.name}
      end
      
  end    
end
