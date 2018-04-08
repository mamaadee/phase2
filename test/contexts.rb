module Contexts
def create_camps
    @ac1 = FactoryBot.create(:camp, name: "C1", curriculum: @a, location: @doha, camp_instructors: @ci1, time_slot: "12", start_date: "12/4/2018",end_date:"12/5/2018")
    @mc1 = FactoryBot.create(:camp, name: "C2",curriculum: @c, location: @paris, camp_instructors: @ci2, time_slot: "9", start_date: "12/4/2018",end_date:"12/5/2018")
    @ac2 = FactoryBot.create(:camp, name: "C3",curriculum: @a, location: @madrid, camp_instructors: @ci2, time_slot: "10", start_date: "12/4/2018",end_date:"12/5/2018")
    @mc2 = FactoryBot.create(:camp, name: "C4",curriculum: @c, location: @doha, camp_instructors: @ci1, time_slot: "7", start_date: "12/4/2018",end_date:"12/5/2018")
    @ac3 = FactoryBot.create(:camp, name: "C5",curriculum: @a, location: @dubai, camp_instructors: @ci3, time_slot: "8", start_date: "12/4/2018",end_date:"12/5/2018")
    @ac4 = FactoryBot.create(:camp, name: "C6",curriculum: @a, location: @doha, camp_instructors: @ci5, time_slot: "11", start_date: "12/4/2018",end_date:"12/5/2018")
    @mc3 = FactoryBot.create(:camp, name: "C7",curriculum: @c, location: @london, camp_instructors: @ci5, time_slot: "13", start_date: "12/4/2018",end_date:"12/5/2018")
  end
  
  def destroy_camps
    @ac1.destroy
    @ac2.destroy
    @ac3.destroy
    @ac4.destroy
    @mc1.destroy
    @mc2.destroy
    @mc3.destroy
  end
  
    def create_curriculums
    @a = FactoryBot.create(:curriculum)
    @b = FactoryBot.create(:curriculum, name: "B", active: false)
    @c = FactoryBot.create(:curriculum, name: "C")
  end
  
  def destroy_curriculums
    @a.destroy
    @b.destroy
    @c.destroy
  end
  
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
  
  def create_camp_instructors
    @ci1 = FactoryBot.create(:camp_instructor, camp: @ac1, instructor: @maryam)
    @ci2 = FactoryBot.create(:camp_instructor, camp: @mc1, instructor: @maha)
    @ci3 = FactoryBot.create(:camp_instructor, camp: @ac3, instructor: @maryam,)
    @ci4 = FactoryBot.create(:camp_instructor, camp: @mc1, instructor: @dana)
    @ci5 = FactoryBot.create(:camp_instructor, camp: @ac3, instructor: @dana)
    @ci6 = FactoryBot.create(:camp_instructor, camp: @ac1, instructor: @dana)
    @ci7 = FactoryBot.create(:camp_instructor, camp: @mc2, instructor: @aisha)
  end
  
  def destroy_camp_instructors
    @ci1.destroy
    @ci2.destroy
    @ci3.destroy
    @ci4.destroy
    @ci5.destroy
    @ci6.destroy
    @ci7.destroy
  end
  
  
end