class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    candies.empty?
  end

  def count
    candies.count
  end

  def <<(candy)
    candies << candy
  end

  def contains?(candy_name)
    candies.any? {|candy| candy.type == candy_name}
  end

  def grab(candy_name)
    candies.each do |candy|
      if candy.type == candy_name
        return candies.delete(candy)
      end
    end
  end

  def take(num)
    taken = []
    num.times do
      taken << candies.pop
    end
      taken
  end
end
