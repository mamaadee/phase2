FactoryBot.define do
  
  # factory blueprint for curriculums
  factory :curriculum do
    name "Calculus"
    description "learn calculus"
    min_rating 450
    max_rating 900
    active true
  end

  # factory blueprint for locations
  factory :location do
    name "Doha"
    street_1 "Alsudair"
    street_2 nil
    city "Alwajba"
    zip "34534"
    max_capacity 20
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
    phone {rand(10 ** 10).to_s.rjust(10,'0')}
    email {|i|"#{i.first_name[0]}#{i.last_name}#{(1..99).to_a.sample}@example.com".downcase}
    active true
  end
end
