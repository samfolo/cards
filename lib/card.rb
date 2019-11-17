class Card
  attr_reader :value, :suit, :number

  def initialize(value = nil, suit = nil, number = nil)
    @value = value
    @suit = suit
    @number = number
  end
end
