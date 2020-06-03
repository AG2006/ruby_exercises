class Pirate
attr_reader :name, :job
attr_accessor :henious_act_count, :curse, :booty
  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @curse = false
    @henious_act_count = 0
    @booty = 0
  end

  def cursed?
    curse
  end

  def commit_heinous_act
    self.henious_act_count += 1
    if henious_act_count > 2
      self.curse = true
    end
  end

  def rob_ship
    self.booty += 100
 end
end
