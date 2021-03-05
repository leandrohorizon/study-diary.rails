class HomeController < ApplicationController
  def index
    # render plain 'texto a ser exibido'
    # render 'index' # arquivo encontrado em home/index
    @study_items = ["MVC", "AGILE", "SASS", "SQLITE", "GIT_HUB"]
    @study_items << StudyItem.new("MVC")
  end
end