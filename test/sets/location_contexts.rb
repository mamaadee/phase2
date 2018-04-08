module LocationContexts

  def create_locations
    @doha = FactoryBot.create(:location, street1: "Alwajba", zip:"33432")
    @dubai = FactoryBot.create(:location, name: "Dubai", active: false, street1: "Jumairah", zip: "43535")
    @london = FactoryBot.create(:location, name: "London", street1: "park", zip: "54356")
    @paris = FactoryBot.create(:location, name: "Paris", street1: "Champs", zip: "11234")
    @madrid = FactoryBot.create(:location, name: "Madrid", street1: "Barc", zip: "12345")
  end
  
  def destroy_locations
    @doha.destroy
    @dubai.destroy
    @london.destroy
    @paris.destroy
    @madrid.destroy
  end