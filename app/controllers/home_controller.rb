class HomeController < ApplicationController
  def index
    @study_items = StudyItem.all
    @categories = Category.all
  end
end
