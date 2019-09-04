require("minitest/autorun")
require("minitest/rg")
require_relative("../Fish.rb")

require_relative("../Bear.rb")
class TestBear< MiniTest::Test
	def setup()
    @bear = Bear.new("Yogi" , "Grizzly")
    @salmon = Fish.new("Bubble")
    @goldfish= Fish.new("Snoo")
    @catfish = Fish.new("Yeppee")
  end


  def test_bear_name()
    assert_equal("Yogi" , @bear.name())
end

def test_food_count()
	@bear.catch_fish(@salmon)
	assert_equal(1 , @bear.stomuch_fish_count())
end

def test_bear_sound()
	assert_equal("Roar roar" , @bear.get_sound())
end

def test_bear_stomach()
  @bear.add_fish_to_bear_stomach(@salmon)
  @bear.add_fish_to_bear_stomach(@goldfish)
  @bear.add_fish_to_bear_stomach(@catfish)
assert_equal(3 , @bear.stomuch_fish_count())
end

end
