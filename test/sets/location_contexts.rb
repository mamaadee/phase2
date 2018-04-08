module Contexts
module LocationContexts

  def create_active_locations
    @doha = FactoryBot.create(:location)
    @london = FactoryBot.create(:location, name: "London", street1: "park", street_2: nil, city: "Baker", zip: "54356")
    @paris = FactoryBot.create(:location, name: "Paris", street1: "Champs", street_2: nil, city: "Opra", zip: "11234")
    @madrid = FactoryBot.create(:location, name: "Madrid", street1: "Barc", street_2: nil, city: "King", zip: "12345")
  end
  
  
  def destroy_active_locations
    @doha.delete
    @london.delete
    @paris.delete
    @madrid.delete
  end
  
  def create_inactive_locations
    @dubai = FactoryBot.create(:location, name: "Dubai", active: false, street1: "Jumairah", street_2: nil, city: "Ahmad", zip: "43535")
  end
  
  def destroy_inactive_locations
    @dubai.delete
  end
  
  def create_locations
    create_active_locations
    create_inactive_locations
  end

  def destroy_locations
    destroy_active_locations
    destroy_inactive_locations
  end
end
end