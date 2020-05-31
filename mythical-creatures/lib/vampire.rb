class Vampire
  attr_reader :name, :pet
  attr_accessor :thirst

  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirst = true
  end

  def thirsty?
    self.thirst
  end

  def drink
    self.thirst = false
  end
end
