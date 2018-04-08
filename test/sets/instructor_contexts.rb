module Contexts
module InstructorContexts

  def create_instructors
    @maryam = FactoryBot.create(:instructor)
    @dana = FactoryBot.create(:instructor, first_name: "Dana", last_name: "AlSheeb", active: false)#, email: "dshdjha@example.com")
    @maha = FactoryBot.create(:instructor, first_name: "Maha", last_name: "Almarri")#, email: "fdhj@example.com")
    @aisha = FactoryBot.create(:instructor, first_name: "Aisha", last_name: "Almisnad")#, email: "dhsjhf@example.com")
    @amna = FactoryBot.create(:instructor, first_name: "Amna", last_name: "alhaj")#, email: "jfhj@example.com")
  end
  
  def destroy_instructors
    @maryam.destroy
    @dana.destroy
    @maha.destroy
    @aisha.destroy
    @amna.destroy
  end
end
end