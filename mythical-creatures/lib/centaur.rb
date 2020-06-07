class Centaur
  attr_reader :name, :breed
  attr_accessor :activity_count, :cranky, :standing, :laying, :sick
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @sick = false
    @activity_count = 0
  end

  def shoot
    if !self.cranky? && !self.laying?
      self.activity
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    if !self.cranky? && !self.laying?
      self.activity
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
  end

  def cranky?
    cranky
  end

  def stand_up
    self.standing = true
    self.laying = false
  end

  def standing?
    standing
  end

  def activity
    self.activity_count += 1
    if activity_count > 2
      self.cranky = true
    end
  end

  def sleep
    if self.standing?
      "NO!"
    else
      self.cranky = false
      self.activity_count = 0
    end
  end

  def drink_potion
    if !self.standing?
      "NO!"
    elsif self.cranky == false && self.activity_count == 0
      self.sick = true
    else
      self.cranky = false
      self.activity_count = 0
    end
  end

  def lay_down
    self.standing = false
    self.laying = true
  end

  def laying?
    laying
  end
end
