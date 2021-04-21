require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        title: "Title",
        text: "MyText",
        author_id: 2,
        category_id: 3,
        image: "Image"
      ),
      Article.create!(
        title: "Title",
        text: "MyText",
        author_id: 2,
        category_id: 3,
        image: "Image"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
  end
end
