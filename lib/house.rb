require 'hand'

class House
  attr_reader :hand # attr_accessor is a key word (key words from Ruby)

  def initialize
    @hand = Hand.new
  end # initialize
end # class House
