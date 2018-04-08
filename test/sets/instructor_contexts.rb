module InstructorContexts

  def create_instructors
    @maryam = FactoryBot.create(:instructor)
    @dana = FactoryBot.create(:instructor, first_name: "Dana", last_name: "AlSheeb", active: false, email: "dshdjh@gmail.com")
    @maha = FactoryBot.create(:instructor, first_name: "Maha", last_name: "Almarri", email: "fdhj@mail.com")
    @aisha = FactoryBot.create(:instructor, name: "Aisha", last_name: "Almisnad", email: "dhsjhf@gmail.com")
    @amna = FactoryBot.create(:instructor, name: "Amna", last_name: "alhaj", email: "jfhj@hotmiail.com")
  end
  
  def destroy_instructors
    @maryam.destroy
    @dana.destroy
    @maha.destroy
    @aisha.destroy
    @amna.destroy
  end
end