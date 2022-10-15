require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should not save article without author" do
    article = Article.new
    assert_not article.save, "Saved the article without a author"
  end

  test "should not save article without title" do
    article = Article.new author: 'dummy'
    assert_not article.save, "Saved the article without a title"
  end
end
