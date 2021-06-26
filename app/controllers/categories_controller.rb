class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update]

  def show
    @study_items = StudyItem.where(category: @category)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = 'Nova categoria cadastrada'
      redirect_to root_path
    else
      flash[:alert] = 'Não foi possível cadastrar a categoria'
      render 'new'
    end
  end

  def edit; end

  def update
    redirect_to category_path(@category) if @category.update(category_params)
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:title)
  end
end
