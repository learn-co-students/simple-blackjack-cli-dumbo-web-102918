def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 return rand(1..10)
end

def display_card_total (card_total)
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    input = gets.chomp
end

def end_game (card_total) 
puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total=0 
  2.times do
  card_total += deal_card
end
display_card_total(card_total)
return card_total
end

def hit? (card_total)
  prompt_user
  answer= get_user_input
  if answer != 's' && answer!= 'h'
    invalid_command
  end
  if answer == 'h'
    card_total += deal_card
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
jake
def runner
  jake
  welcome
  initial_round
 until card_total<21
 hit?(card_total)
end
end_game
end
    
