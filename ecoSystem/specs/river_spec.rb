require("minitest/autorun")
require("minitest/rg")
require_relative("../Fish.rb")
require_relative("../River.rb")
require_relative("../Bear.rb")

class TestRiver < MiniTest::Test
	def setup()

    @ganga = Fish.new("Ganga")
    @ved =Fish.new("Ved")
    @chinni =Fish.new("chinni")
    @pinky =Fish.new("pinky")
    @style = Fish.new("style")
    @fishs =[@ved,@chinni,@pinky,@style]
		  @river = River.new("Amazon" ,@fishs )
 @bear = Bear.new("Ponny","Grizzly")
  end
  def test_get_river_name()
    assert_equal("Amazon", @river.river_name())
  end
	def test_get_fish_count()
		assert_equal(4 , @river.fish_count())
	end
	def test_add_new_fish_river()
		@river.add_fish(@ganga)
		assert_equal(5 , @river.fish_count)
	end
def test_catch_fish_to_bear()
	@bear.catch_fish(@ved)
	@river.remove_fish(@ved)
	assert_equal(1 , @bear.food_count())
	assert_equal(3,@river.fish_count())
end
end
