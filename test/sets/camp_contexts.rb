module CampContexts
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