class Werewolf
  attr_reader :name, :location
  attr_accessor :form, :hungry, :victim_count
  def initialize(name, location = nil)
    @name = name
    @location = location
    @form = 'human'
    @hungry = false
    @victim_count = 0
  end

  def human?
    form == 'human'
  end

  def change!
    if self.human?
      self.form = 'wolf'
      self.hungry = true
    else
      self.form = 'human'
    end
  end

  def wolf?
    form == 'wolf'
  end

  def hungry?
    hungry
  end

  def consume(victim)
    if form == 'human'
      "EW!"
    else
    self.victim_count += 1
    self.hungry = false
    victim.status = :dead
    end
  end

end
