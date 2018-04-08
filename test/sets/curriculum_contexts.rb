module CurriculumContexts
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
  
end