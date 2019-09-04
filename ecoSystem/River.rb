class River
  attr_reader :river_name , :fish
  def initialize(river_name , fishs)
    @river_name=river_name
    @fishs= fishs
  end
  def fish_count()
    return @fishs.count
  end
  def add_fish(fish)
    @fishs.push(fish)
  end
  def remove_fish(new_fish)
    for fish in @fishs
      if fish = new_fish
        @fishs.delete(new_fish)
      end
    end
  end

end
