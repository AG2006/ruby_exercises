class Ogre
  attr_reader :name, :home
  attr_accessor :swings
  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    if human.notices_ogre?
      swing_at(human)
    end
  end

  def swing_at(human)
    self.swings += 1
    if swings.even?
      human.knocked_out = true
    end
  end

  def apologize(human)
    human.knocked_out = false
  end
end

class Human
  attr_reader :name
  attr_accessor :encounter_counter, :knocked_out
  def initialize(name = "Jane")
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end

  def notices_ogre?
    if encounter_counter % 3 == 0
      true
    else
      false
    end
  end

  def knocked_out?
    knocked_out
  end
end
