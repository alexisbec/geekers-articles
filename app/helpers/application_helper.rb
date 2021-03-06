module ApplicationHelper
  def vote_btn(article)
    vote = Vote.find_by(article: article, user: current_user)
    if vote
      link_to('Unvote):', article_vote_path(id: vote.id, article_id: article.id), method: :delete)
    else
      link_to('Vote!', article_vote_path(article_id: article.id), method: :post)
    end
  end

  def categories_index(categories)
    categories.count < 6
  end
end
