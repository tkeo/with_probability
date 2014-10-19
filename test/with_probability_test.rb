require 'test/unit'
require 'test/unit/power_assert'
require 'with_probability'

class WithProbabilityTest < Test::Unit::TestCase
  def test_always_true
    assert do
      with_probability(1) == true
    end
  end

  def test_always_false
    assert do
      with_probability(0) == false
    end
  end

  def test_yield_block
    assert do
      with_probability(1) { :in_block } == :in_block
    end
  end

  def test_does_not_yield_block
    assert do
      with_probability(0) { :in_block } == nil
    end
  end
end
