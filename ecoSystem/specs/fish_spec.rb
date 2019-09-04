require("minitest/autorun")
require("minitest/rg")
require_relative("../Fish.rb")

class TestFish < MiniTest::Test
	def setup()
    @fish = Fish.new("Chuchi")
  end
  def test_fish_name()
    assert_equal("Chuchi", @fish.fish_name())
  end
end
