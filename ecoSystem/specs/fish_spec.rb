require("minitest/autorun")
require("minitest/rg")
require_relative("../Fish.rb")

class TestFish < MiniTest::Test
	def setup()
    @goldfish = Fish.new("Chuchi")
  end
  def test_fish_name()
    assert_equal("Chuchi", @goldfish.fish_name())
  end
end
