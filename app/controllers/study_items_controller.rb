class StudyItemsController < ApplicationController
  before_action :set_study_item, only: %i[show edit update mark_as_done]
  def show; end

  def new
    @study_item = StudyItem.new
  end

  def create
    @study_item = StudyItem.new(study_item_params)

    if @study_item.save
      flash[:notice] = 'Novo item adionado'
      redirect_to root_path
    else
      flash[:alert] = 'Não foi possível adicionar o item de estudo'
      render 'new'
    end
  end

  def edit; end

  def update
    redirect_to study_item_path(@study_item) if @study_item.update(study_item_params)
  end

  def mark_as_done
    @study_item.done!
    redirect_to @study_item
  end

  private

  def set_study_item
    @study_item = StudyItem.find(params[:id])
  end

  def study_item_params
    params.require(:study_item).permit(:title, :category_id, :done)
  end
end
