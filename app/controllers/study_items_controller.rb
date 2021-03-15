class StudyItemsController < ApplicationController
  def show
    @study_item = StudyItem.find(params[:id]) #id n precisa ser find_by
    #@study_item = Study.find_by(id: params[:id])
  end

  def new
    @study_item = StudyItem.new
  end

  def create
    @study_item = StudyItem.new(study_item_params)

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

  def edit
    set_study_item
  end

  def update
    @study_item = StudyItem.find(params[:id])
    if @study_item.update(study_item_params)
      redirect_to study_item_path(@study_item)
    end
  end

  def mark_as_done
    set_study_item
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