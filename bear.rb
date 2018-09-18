class Bear

  attr_reader :name, :type
  attr_accessor :stomach, :roar

  def initialize(name, type, roar)
    @name = name
    @type = type
    @roar = roar
    @stomach = []
  end

  def food_count()
    return @stomach.length
  end

  def take_fish(river, fish)
    river.lose_fish(1)
  end

  def eat_fish(fish)
    @stomach.push(fish)
  end

  def puke()
    @stomach.clear()
  end

  def change_roar(new_roar)
    @roar = new_roar
  end

end
