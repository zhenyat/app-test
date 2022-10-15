require "test_helper"

class NewsbiteTest < ActiveSupport::TestCase
  def setup
    @newsbite = Newsbite.new
  end

  context 'validations' do
    should validate_presence_of(:title)
    should validate_uniqueness_of(:title)
    should validate_presence_of(:content)
  end

  def test_is_published
    assert_not(@newsbite.published?)
    @newsbite.published_at = DateTime.now
    assert(@newsbite.published?)
  end

    ###   Alternative uniqueness validation
    def test_title_should_be_unique
      @newsbite.title = 'MyString'   # duplicating (see fixture)
      @newsbite.valid?
      assert_includes(@newsbite.errors[:title], 'has already been taken')
    end
end
