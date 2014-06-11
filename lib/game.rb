require 'player'
require 'house'
require 'deck'

 class Game
  def initialize(player) # this relates to anything required to run the program
    @player = player
    @house = House.new
    @deck = Deck.new
  end # initialize

  def play
    puts "Let's play a simple game of Blackjack"
    @deck.shuffle_deck
    betting
    deal
    deal
    player_hand
    read_cards_house
    house_hand
    winner
    exchange_chips
  end # play

  def betting #need to store chips in player class
    if @player.chips == 0
      puts "You don't have enough chips.  Game over"
      puts "Would you like to play again?"
      if gets.chomp == "yes"
        play
      else
        exit
      end # if
    end #if
    puts "You current have #{@player.chips}"
    puts "Each game requires a bet of one chip"
    if @player.chips
    @bet
    end # if @bet
  end # bet

  def deal # take a card from the deck and put it in players hand
    @player.hand.card << @deck.hit
  end # deal

  def player_hand
    puts "Your hand has #{@player.hand.card_value}"
    if @house.hand.card_value == 21
      puts "Blackjack House Wins"
      puts "would you like to play again"
      if gets.chomp == "yes"
        play
        else
          exit
        end #if
    elsif @player.hand.card_value == 21
      puts "Blackjack You win"
      puts "would you like to play again"
        if gets.chomp == "yes"
          play
        else
          exit
        end # if
    end #elsif
    if @player.hand.card_value > 16
      read_cards_player
      puts "Your hand is above 16...hold"
      house_hand
    end if
    if @player.hand.card_value <= 17
      puts "your hand is below 17 you hit"
      deal
      player_hand
    end # if
  end # player_hand

  def read_cards_house
    puts "Your hand has #{@house.hand.card_value}"
  end # read_cards

  def house_hand
    if @house.hand.card_value >= 17
      put "House hand is above 17 so they will stay"
    end
    if @player.hand.card_value <= 17
      deal
      house_hand
    end
  end # def

  def winner
    if @player.hand.card_value >= @house.hand.card_value
    elsif @player.bust
      puts "House wins"
    end # if
  end # def
  def exchange_chips
  end # exchange
end #class Game

andrew = Player.new
g = Game.new(andrew)
g.play
