class Ferret
  attr_accessor :name

  def initialize
    @name = "a ferret has no name"
  end

  def give_name(ferret_name)
    self.name = "a ferret's name is #{ferret_name}"
  end
end
