class Card
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
  def rank
    @rank
  end
  def suit
    @suit
  end
  def rank_value # if card("ace") is
    case rank
    when :A then 1
    when :K, :Q, :J then 10
    else rank
  end
  end
end
