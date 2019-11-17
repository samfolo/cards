require 'deck'

RSpec::Matchers.define :all_be_unique_cards do
  match do |actual|
    actual.map { |card| [card.suit, card.value, card.number] }.uniq.length == 52
  end
end

RSpec::Matchers.define :all_have_valid_suits do
  match do |actual|
    actual.all? { |card| Deck::VALID_SUITS.include? card.suit }
  end
end

RSpec::Matchers.define :all_have_valid_values do
  match do |actual|
    actual.all? { |card| Deck::VALID_VALUES.include? card.value }
  end
end

RSpec.describe Deck do
  it 'should contain cards' do
    expect(subject.cards).to all be_a Card
  end

  it 'should have 52 cards to start with' do
    expect(subject.cards.length).to be 52
  end

  it 'should consist entirely of unique card faces' do
    expect(subject.cards).to all_be_unique_cards
  end

  it 'should contain cards with valid suits' do
    expect(subject.cards).to all_have_valid_suits
  end

  it 'should contain cards with valid values' do
    expect(subject.cards).to all_have_valid_values
  end
end
