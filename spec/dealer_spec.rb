require 'dealer'

RSpec.describe Dealer do
  let(:player_1) { double(:player, hand: []) }
  let(:player_2) { double(:player, hand: []) }
  let(:short_hand_player) { double(:player, hand: ['card', 'card', 'card']) }
  let(:test_dealer) { Dealer.new }

  it 'deals cards' do
    test_dealer.deal_to(player_1, player_2)

    expect(player_1.hand.length).to be 5
    expect(player_2.hand.length).to be 5
  end

  it 'refreshes a hand when given cards' do
    test_dealer.refresh_hand(player_1)

    expect(player_1.hand.length).to be 5
  end
end
