require "test_helper"

class ProductTest < ActiveSupport::TestCase
  context 'validations' do
    should validate_presence_of(:name)
    should validate_uniqueness_of(:name)
    should validate_presence_of(:uuid)
    should validate_uniqueness_of(:uuid)
  end
end
