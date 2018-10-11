def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand 1..11
  end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
    dealt_card = deal_card
    return card_total += dealt_card
  elsif input == 's'
    return card_total
  else input != 'h' || input != 's'
    invalid_command
    hit?
  end
end


def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_sum = initial_round
  until card_sum > 21 do
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
  end_game(card_sum)
end