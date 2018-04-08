module Contexts
module CampContexts
def create_camps
    @ca1 = FactoryBot.create(:camp, curriculum: @java, location: @doha)
    @ca2 = FactoryBot.create(:camp, curriculum: @calc, location: @paris, time_slot: "am", start_date: Date.new(2018,6,12),end_date: Date.new(2018,7,12))
    @ca3 = FactoryBot.create(:camp, curriculum: @python, location: @madrid, start_date: Date.new(2018,5,23),end_date: Date.new(2018,6,23))
    @ca4 = FactoryBot.create(:camp, curriculum: @java, location: @doha, time_slot: "pm", start_date: Date.new(2018,8,15),end_date: Date.new(2018,8,22))
    @ca5 = FactoryBot.create(:camp, curriculum: @java, location: @dubai, start_date: Date.new(2018,5,12),end_date: Date.new(2018,5,25))
    @ca6 = FactoryBot.create(:camp, curriculum: @java, location: @doha, start_date: Date.new(2018,9,31),end_date: Date.new(2018,10,21))
  end
  
  def destroy_camps
    @ca1.delete
    @ca2.delete
    @ca3.delete
    @ca4.delete
    @ca5.delete
    @ca6.delete
    destroy_curriculums
  end
  
  def create_past_camps
    @ca6 = FactoryBot.create(:camp, curriculum: @java, start_date: Date.new(2018,5,1), end_date: Date.new(2018,5,12), time_slot: "pm", location: @doha)
    @ca7 = FactoryBot.create(:camp, curriculum: @ruby, start_date: Date.new(2018,4,31), end_date: Date.new(2018,5,5), time_slot: "pm", location: @madrid)
    @ca8 = FactoryBot.create(:camp, curriculum: @chess, start_date: Date.new(2018,5,10), end_date: Date.new(2018,5,26), time_slot: "pm", location: @paris)
    @ca9 = FactoryBot.create(:camp, curriculum: @java, start_date: Date.new(2018,8,2), end_date: Date.new(2018,8,11), time_slot: "am", location: @doha)
      
    @ca6.update_attributes(:start_date => Date.new(2017,6,12), :end_date => Date.new(2017,6,25))
    @ca7.update_attributes(:start_date => Date.new(2017,5,5), :end_date => Date.new(2017,5,15))
    @ca8.update_attributes(:start_date => Date.new(2017,5,1), :end_date => Date.new(2017,5,13))
    @ca9.update_attributes(:start_date => Date.new(2017,6,12), :end_date => Date.new(2017,6,25))
  end
  
  def destroy_past_camps
    @ca6.delete
    @ca7.delete
    @ca8.delete
    @ca9.delete
  end
  
  def create_upcoming_camps
    @ca10 = FactoryBot.create(:camp, curriculum: @java, start_date: Date.new(2018,5,2), end_date: Date.new(2018,5,12), time_slot: "pm", location: @madrid)
    @ca11 = FactoryBot.create(:camp, curriculum: @ruby, start_date: Date.new(2018,5,16), end_date: Date.new(2018,5,21), time_slot: "pm", location: @london)
    @ca12 = FactoryBot.create(:camp, curriculum: @java, start_date: Date.new(2018,6,21), end_date: Date.new(2018,6,31), time_slot: "am", location: @dubai)
    @ca13 = FactoryBot.create(:camp, curriculum: @chess, start_date: Date.new(2018,7,13), end_date: Date.new(2018,7,25), time_slot: "am", location: @doha)
  end
  
  def destroy_upcoming_camps
    @ca10.delete
    @ca11.delete
    @ca12.delete
    @ca13.delete
  end
  
end
end