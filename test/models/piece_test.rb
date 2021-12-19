require "test_helper"

class PieceTest < ActiveSupport::TestCase
  ### Testing with gem 'shoulda'
  context 'validations' do 
    should validate_presence_of(:title)
    should validate_presence_of(:slug)
  end
  
  ### Standard testing
  # def setup
    #   @piece = Piece.new
    # end
  # def test_title_is_required
  #   @piece.valid?
  #   assert_includes(@piece.errors[:title], "can't be blank")
  #   assert_includes(@piece.errors[:slug], "can't be blank")
  # end
end
