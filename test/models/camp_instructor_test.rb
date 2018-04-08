require 'test_helper'

class CampInstructorTest < ActiveSupport::TestCase
  #relationships
  should belong_to(:instructor)
  should belong_to(:camp)
  
  #validations
  should validate_presence_of(:camp_id)
  should validate_presence_of(:instructor_id)
  
  
end
