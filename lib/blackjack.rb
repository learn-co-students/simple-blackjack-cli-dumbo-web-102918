def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  Random.rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
  if input == 'h'
    current_card_total += deal_card
  elsif input == 's'
    current_card_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  hand = initial_round       # will show card total, so store as hand
  until hand > 21 do         # keep hitting until card total is over 21
    hand = hit?(hand)        # updates card total in hand 
    display_card_total(hand) # puts card total 
  end
  end_game(hand)             # puts end game 
end
    
