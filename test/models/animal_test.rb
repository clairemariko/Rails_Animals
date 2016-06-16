require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  test "has a name" do
    assert_equal("Tiger", animals(:one).name)
  end

  test "has legs" do 
    assert_equal(4, animals(:one).legs)
  end

  test "animals with legs walk" do 
    assert_equal("walk", animals(:one).move())
  end

  test "animals without legs slither" do
    assert_equal("slither", animals(:two).move())
  end


end
