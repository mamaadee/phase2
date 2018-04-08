module Contexts
  module CurriculumContexts
    def create_curriculums
      @calc    = FactoryBot.create(:curriculum)
      @java   = FactoryBot.create(:curriculum, name: "Java", min_rating: 450, max_rating: 800)
      @ruby = FactoryBot.create(:curriculum, name: "Ruby", active: false)
    end

    def destroy_curriculums
      @calc.destroy
      @java.destroy
      @ruby.destroy
    end

    def create_more_curriculums
      @python = FactoryBot.create(:curriculum, name: "Python", min_rating: 500, max_rating: 100, description: "About python", active: false)
      @english = FactoryBot.create(:curriculum, name: "English", min_rating: 1000, max_rating: 3000, description: "Learn English.")
      @chess = FactoryBot.create(:curriculum, name: "Chess", min_rating: 0, max_rating: 500, description: "Learn the tactics of chess")
      @sport = FactoryBot.create(:curriculum, name: "Sport", min_rating: 1000, max_rating: 1800, description: "Sports")
    end

    def destroy_more_curriculums
      @python.destroy
      @english.destroy
      @chess.destroy
      @sport.destroy
    end
  end
end