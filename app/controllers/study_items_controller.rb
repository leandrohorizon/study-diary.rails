class StudyItemsController < ApplicationController
  def show
    @study_item = Study.find(params[:id]) #id n precisa ser find_by
    #@study_item = Study.find_by(id: params[:id])
  end
end