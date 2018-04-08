module Contexts
module CampContexts
def create_camps
    @ca1 = FactoryBot.create(:camp, name: "C1", curriculum: @a, location: @doha)
    @ca2 = FactoryBot.create(:camp, name: "C2",curriculum: @c, location: @paris, time_slot: "am", start_date: Date.new(2018,6,12),end_date: Date.new(2018,7,12))
    @ca3 = FactoryBot.create(:camp, name: "C3",curriculum: @a, location: @madrid, start_date: Date.new(2018,5,23),end_date: Date.new(2018,6,23))
    @ca4 = FactoryBot.create(:camp, name: "C4",curriculum: @c, location: @doha, time_slot: "pm", start_date: Date.new(2018,8,15),end_date: Date.new(2018,8,22))
    @ca5 = FactoryBot.create(:camp, name: "C5",curriculum: @a, location: @dubai, start_date: Date.new(2018,5,12),end_date: Date.new(2018,5,25))
    @ca6 = FactoryBot.create(:camp, name: "C6",curriculum: @a, location: @doha, start_date: Date.new(2018,9,31),end_date: Date.new(2018,10,21))
  end
  
  def destroy_camps
    @ca1.destroy
    @ca2.destroy
    @ca3.destroy
    @ca4.destroy
    @ca5.destroy
    @ca6.destroy
    destroy_curriculums
  end
  
  def create_past_camps
    @ca6 = FactoryBot.create(:camp, curriculum: @a, start_date: Date.new(2018,4,1), end_date: Date.new(2018,4,12), time_slot: "pm", location: @doha)
    @ca7 = FactoryBot.create(:camp, curriculum: @b, start_date: Date.new(2018,4,31), end_date: Date.new(2018,5,5), time_slot: "pm", location: @madrid)
    @ca8 = FactoryBot.create(:camp, curriculum: @c, start_date: Date.new(2018,5,10), end_date: Date.new(2018,5,26), time_slot: "pm", location: @paris)
    @ca9 = FactoryBot.create(:camp, curriculum: @a, start_date: Date.new(2018,8,2), end_date: Date.new(2018,8,11), time_slot: "am", location: @doha)
      
    @ca6.update_attributes(:start_date => Date.new(2017,6,12), :end_date => Date.new(2017,6,25))
    @ca7.update_attributes(:start_date => Date.new(2017,5,5), :end_date => Date.new(2017,5,15))
    @ca8.update_attributes(:start_date => Date.new(2017,5,1), :end_date => Date.new(2017,5,13))
    @ca9.update_attributes(:start_date => Date.new(2017,6,12), :end_date => Date.new(2017,6,25))
  end
  
  def destroy_past_camps
    @ca6.destroy
    @ca7.destroy
    @ca8.destroy
    @ca9.destroy
  end
  
  def create_upcoming_camps
    @ca10 = FactoryBot.create(:camp, curriculum: @a, start_date: Date.new(2018,5,2), end_date: Date.new(2018,5,12), time_slot: "pm", location: @madrid)
    @ca11 = FactoryBot.create(:camp, curriculum: @b, start_date: Date.new(2018,5,16), end_date: Date.new(2018,5,21), time_slot: "pm", location: @london)
    @ca12 = FactoryBot.create(:camp, curriculum: @a, start_date: Date.new(2018,6,21), end_date: Date.new(2018,6,31), time_slot: "am", location: @dubai)
    @ca13 = FactoryBot.create(:camp, curriculum: @c, start_date: Date.new(2018,7,13), end_date: Date.new(2018,7,25), time_slot: "am", location: @doha)
  end
  
  def destroy_upcoming_camps
    @ca10.destroy
    @ca11.destroy
    @ca12.destroy
    @ca13.destroy
  end
  
end
end