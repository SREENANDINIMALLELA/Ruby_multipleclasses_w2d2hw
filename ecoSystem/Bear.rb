class Bear
  attr_reader :name , :type
  def initialize(name , type )
    @name = name
    @type = type
    @stomuch =[]
    #  @food =[]
  end
  def stomuch_fish_count()
    @stomuch.count
  end
  def add_fish_to_bear_stomach(fish)
    @stomuch.push(fish)
  end
  def catch_fish(fish)
    @stomuch.push(fish)
  end
  # def food_count()
  # @stomuch.count
  # end
  def get_sound()
    return "Roar roar"
  end
end
