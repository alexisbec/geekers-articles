class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def show
    @category = Category.includes(:articles).find(params[:id])
    @articles = @category.articles.includes(:votes).includes(:author).order(created_at: 'DESC')
  end

  def edit; end

  private

  def category_params
    params.require(:category).permit(:name, :priority)
  end
end
