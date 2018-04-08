require './test/sets/camp_contexts'
require './test/sets/curriculum_contexts'
require './test/sets/location_contexts'
require './test/sets/instructor_contexts'
require './test/sets/camp_instructor_contexts'

module Contexts
  include Contexts::CampContexts
  include Contexts::CurriculumContexts
  include Contexts::InstructorContexts
  include Contexts::CampInstructorContexts
  include Contexts::LocationContexts

  def create_all_contexts
    create_camps
    create_curriculums
    create_instructors
    create_active_locations
    create_more_instructors
    create_camp_instructors
    create_more_curriculums
    create_past_camps
    create_upcoming_camps
    create_more_camp_instructors
  end

  
end