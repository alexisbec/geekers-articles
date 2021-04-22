class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show ]

  def index
    @categories = Category.all
  end

  def show
    @category = Category.includes(:articles).find(params[:id])
    @articles = @category.articles.includes(:votes).includes(:author).order(created_at: 'DESC')
  end

  def edit
  end

  private

  def category_params
    params.require(:category).permit(:name, :priority)
  end
end