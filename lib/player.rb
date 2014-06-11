require 'hand'

class Player
  attr_accessor :chips, :hand #attr_accessor is a key word (key words are reserved by ruby)

  def initialize
    @hand = Hand.new
    @chips = 10
  end # initialize
end # class player
