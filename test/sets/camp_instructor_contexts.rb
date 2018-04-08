module CampInstructorContexts

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