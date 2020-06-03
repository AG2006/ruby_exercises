class Wizard
  attr_reader :name, :bearded
  attr_accessor :spell_count, :rested
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spell_count = 0
  end

  def bearded?
    bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    rested
  end

  def cast(spell)
    self.spell_count += 1
    if spell_count > 2
      self.rested = false
    end

    "#{spell.upcase}"
  end
end
