require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should not save article without author" do
    article = Article.new
    assert_not article.save, "Saved the article without an author"
  end
end
