FactoryBot.define do
  
  # factory blueprint for curriculums
  factory :curriculum do
    name "Calculus"
    description "learn calculus"
    min_rating 250
    max_rating 800
    active true
  end

  # factory blueprint for locations
  factory :location do
    name "Doha"
    active true
  end

  # factory blueprint for camps
  factory :camp do
    start_date Date.new(2018,5,16)
    end_date Date.new(2018,6,16)
    time_slot "am"
    active true
    association :curriculum
    association :location
  end
  
  # factory blueprint for camp instructors
  factory :camp_instructor do
    association :camp
    association :instructor
  end
  
  # factory blueprint for instructors
  factory :instructor do
    first_name "Maryam"
    last_name "AlMaadeed"
    email "mamaadee@qatar.cmu.edu"
    active true
  end
end
