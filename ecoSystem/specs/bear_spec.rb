require("minitest/autorun")
require("minitest/rg")
require_relative("../Fish.rb")

require_relative("../Bear.rb")
class TestBear< MiniTest::Test
	def setup()
    @bear = Bear.new("Yogi" , "Grizzly")
    @hippi = Fish.new("hippi")
    @snoo= Fish.new("Snoo")
    @Yeppee = Fish.new("Yeppee")
  end
  def test_bear_name()
    assert_equal("Yogi" , @bear.name())
end
def test_food_count()
	@bear.catch_fish(@hippi)
	assert_equal(1 , @bear.food_count())
end
def test_bear_sound()
	assert_equal("Roar roar" , @bear.get_sound())
end
def test_bear_stomach()
  @bear.add_fish_to_bear_stomach(@hippi)
  @bear.add_fish_to_bear_stomach(@snoo)
  @bear.add_fish_to_bear_stomach(@Yeppee)
assert_equal(3 , @bear.stomuch_fish_count())
end

end
