require 'deck'
require 'card'

class Hand # hold array of cards and determine value
attr_accessor :card, :total

  def initialize
    @card = []
  end # initialize

  def card_value
    card_values = @card.map { |card| card.rank_value} #each card
    @total = card_values.reduce(0, :+)

  end # card value

  # h.takes_card(d.hit)
  # Hand.new.takes_card(Deck.new.hit)
  # h.add_card(deck.draw)
end
