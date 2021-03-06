gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AnyPatternTest < Minitest::Test

  def test_has_at_least_one_zero
    numbers = [2, 0, 9, 3, 0, 1]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number.zero?
    end
    assert has_zero
  end

  def test_does_not_have_any_zeros
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = false
    numbers.each do |number|
      if number == 0
        has_number = true
        break
      end
    end
    refute has_zero
  end

  def test_has_at_least_one_alice
    names = ["Bill", "Bob", "Burton", "Alice", "Brandon"]
    has_alice = false
    names.each do |name|
      if name == 'Alice'
        has_alice = true
        break
      end
    end
    assert has_alice
  end

  def test_no_alices
    skip
    names = ["Chuck", "Charlene", "Cory", "Chris", "Carl"]
    # Your code goes here
    refute has_alice
  end

  def test_has_a_multi_word_phrase
    phrases = ["Sure!", "OK.", "I have no idea.", "Really?Whatever."]
    has_multi_word_phrase = false
    phrases.each do |phrase|
      has_multi_word_phrase = true if phrase.split.size > 1
    end
    assert has_multi_word_phrase
  end

  def test_no_monkeys
    skip
    animals = ["elephant", "hippo", "jaguar", "python"]
    # Your code goes here
    refute has_monkeys
  end

  def test_no_multiples_of_five
    skip
    numbers = [3, 1, 3, 2, 4, 9, 8]
    # Your code goes here
    refute multiples_of_5
  end

end
