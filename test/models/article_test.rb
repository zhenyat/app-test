require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  # test "should not save article without author" do
  #   article = Article.new #author: 'ZT'
  #   assert_not article.save, "Saved the article without an author"
  # end

  test "should save article with author" do
    article = Article.new #author: 'ZT'
    assert article.save, "Saved the article with an author"
  end
  

  # test "the truth" do
  #   assert true
  # end
end
