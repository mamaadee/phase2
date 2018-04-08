module Contexts
  module CurriculumContexts
    def create_curriculums
      @calc = FactoryBot.create(:curriculum)
      @java = FactoryBot.create(:curriculum, name: "Java", min_rating: 450, max_rating: 800)
      @ruby = FactoryBot.create(:curriculum, name: "Ruby", active: false)
    end

    def destroy_curriculums
      @calc.delete
      @java.delete
      @ruby.delete
    end

    def create_more_curriculums
      @python = FactoryBot.create(:curriculum, name: "Python", min_rating: 500, max_rating: 1000, description: "About python", active: false)
      @english = FactoryBot.create(:curriculum, name: "English", min_rating: 500, max_rating: 900, description: "Learn English.")
      @chess = FactoryBot.create(:curriculum, name: "Chess", min_rating: 500, max_rating: 900, description: "Learn the tactics of chess")
      @sport = FactoryBot.create(:curriculum, name: "Sport", min_rating: 550, max_rating: 1500, description: "Sports")
    end

    def destroy_more_curriculums
      @python.delete
      @english.delete
      @chess.delete
      @sport.delete
    end
  end
end

