class StudyItemsController < ApplicationController
  def show
    @study_item = StudyItem.find(params[:id]) #id n precisa ser find_by
    #@study_item = Study.find_by(id: params[:id])
  end

  def new
    @study_item = StudyItem.new
  end

  def create
    si_params = params.require(:study_item).permit(:title, :category, :done)
    @study_item = StudyItem.new(si_params)

    # @study_item.title = params[:study_item][:title]
    # @study_item.category = params[:study_item][:category]

    if @study_item.save
      flash[:notice] = "Novo item adionado"
      redirect_to root_path
    else
      # redirect_to new_study_item_path
      flash[:alert] = "Não foi possível adicionar o item de estudo"
      render "new"
    end
  end
end