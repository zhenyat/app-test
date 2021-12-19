require "test_helper"

class NewsbiteTest < ActiveSupport::TestCase
  def setup
    @newsbite = Newsbite.new
  end
  
  should validate_presence_of(:title)

  def test_title_should_be_unique
    @newsbite.title = 'Hello World'
    @newsbite.valid?
      assert_includes(@newsbite.errors[:title], 'has already been taken')
  end
end
