require 'card'

class Deck
  attr_reader :cards

  VALID_SUITS = ['♣', '♦', '♥', '♠'].freeze
  VALID_VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A'].freeze

  def initialize
    @cards = []

    number = 1
    VALID_SUITS.each do |suit|
      VALID_VALUES.each do |value|
        cards << Card.new(value, suit, number)
        number += 1
      end
    end
  end
end
