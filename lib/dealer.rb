class Dealer
  def deck
    arr = []
    52.times { arr << 'o' }
    arr
  end

  def deal_to(*players)
    players.each { |player| 5.times { player.hand << 'card' } }
  end

  def refresh_hand(*players)
    players.each { |player| (5 - player.hand.length).times { player.hand << 'card' } }
  end
end