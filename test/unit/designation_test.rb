require 'test_helper'

class DesignationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Designation.new.valid?
  end
end
