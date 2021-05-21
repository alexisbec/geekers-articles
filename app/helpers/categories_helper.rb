module CategoriesHelper
  def last_two_art(id)
    category = Category.includes(:articles).find(id)
    articles = category.articles.includes(:votes).includes(:author)
    @last_two = articles.last(2)
  end

  def first_two_art(id)
    category = Category.includes(:articles).find(id)
    articles = category.articles.includes(:votes).includes(:author)
    last_four = articles.last(4)
    @first_two = last_four.first(2)
  end

  def categories_show(first_two, last_two)
    first_two == last_two
  end
end
