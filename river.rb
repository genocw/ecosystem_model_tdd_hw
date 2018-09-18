class River

  attr_reader :name
  attr_accessor :fish_count

  def initialize(name, number_of_fish)
    @name = name
    @fish_count = number_of_fish
  end

  def lose_fish(amount)
    @fish_count -= amount
  end

end
