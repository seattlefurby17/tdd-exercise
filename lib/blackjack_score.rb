# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)
  score = 0
  raise ArgumentError, 'You can not have more than 5 cards' if hand.length > 5
  
  hand.each do |card|
    unless VALID_CARDS.include?(card)
      raise ArgumentError, "#{card} is not a valid card"
    end
    
    case card
    when 'Jack', 'Queen', 'King'
      card = 10
    when 'Ace'
      card = 1
    end
    score += card
  end

  score += 10 if score <= 11 && hand.include?('Ace')
  return score
  
  raise ArgumentError, 'Busted' if score > 21
end

# def card_value(hand)
#   score = 0
#   hand.each do |card|
#     case card
#     # when 2, 3, 4, 5, 6, 7, 8, 9, 10
#     #   score = card
#     when 'Jack', 'Queen', 'King'
#       card = 10
#     when 'Ace'
#       card = 1
#     end
#     score += card
#   end
#   score += 10 if score <= 11
#   return score
# end
