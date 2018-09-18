require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")

class RiverTest < MiniTest::Test

  def setup()
    @river1 = River.new("Elb", 27)
  end

  def test_has_name()
    assert_equal("Elb", @river1.name())
  end

  def test_starting_total_fish()
    assert_equal(27, @river1.fish_count())
  end

  def test_lose_fish()
    @river1.lose_fish(6)
    assert_equal(21, @river1.fish_count())
  end

end
