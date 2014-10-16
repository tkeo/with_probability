require "with_probability/version"

class Object
  def with_probability(probability)
    b = rand < probability
    if block_given?
      b ? yield : nil
    else
      b
    end
  end
end
