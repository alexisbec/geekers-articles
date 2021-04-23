module ApplicationHelper
  def vote_btn(article)
    vote = Vote.find_by(article_id: article.id, user_id: current_user.id)

    unless vote
      link_to('Vote!', Vote.create(vote), method: :post)
    end
  end
end
