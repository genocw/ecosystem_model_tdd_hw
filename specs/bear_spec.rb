require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup()
    @bear1 = Bear.new("Yogi", "Grizzly", "Howdie!")
    @river1 = River.new("Elb", 27)
    @fish1 = Fish.new("Joe")
  end

  def test_has_name()
    assert_equal("Yogi", @bear1.name())
  end

  def test_starts_with_empty_stomach()
    assert_equal(0, @bear1.stomach().length())
  end

  def test_can_take_fish_from_river()
    @bear1.take_fish(@river1, @fish1)
    assert_equal(26, @river1.fish_count())
  end

  def test_fish_now_in_stomach()
    @bear1.eat_fish(@fish1)
    assert_equal(1, @bear1.food_count())
  end

  def test_stomach_empty_after_puke()
    @bear1.puke()
    assert_equal(0, @bear1.food_count())
  end

  def test_roar()
    assert_equal("Howdie!", @bear1.roar())
  end

  def test_change_roar()
    @bear1.change_roar("FEAR ME!")
    assert_equal("FEAR ME!", @bear1.roar())
  end

end
