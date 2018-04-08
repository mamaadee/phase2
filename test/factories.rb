FactoryBot.define do
  
  # factory blueprint for curriculums
  factory :curriculum do
    name "A"
    active true
  end

  # factory blueprint for locations
  factory :location do
    name "Doha"
    active true
  end

  # factory blueprint for camps
  factory :camp do
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