require "test_helper"

class NewsbiteTest < ActiveSupport::TestCase
  def setup
    @newsbite = Newsbite.new
  end
  
  context 'validations' do
    should validate_presence_of(:title)
    should validate_uniqueness_of(:title)
  end
  
  ###   Alternative uniqueness validation
  def test_title_should_be_unique
    @newsbite.title = 'Hello World'   # duplicates?
    @newsbite.valid?
    assert_includes(@newsbite.errors[:title], 'has already been taken')
  end
end
