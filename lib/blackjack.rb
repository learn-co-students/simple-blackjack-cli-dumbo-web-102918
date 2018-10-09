def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  puts 1 + rand(11)
  1 + rand(11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  "Type 'h' to hit or 's' to stay"
end

def get_user_input
  puts
  answer = gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
puts "Your cards add up to #{deal_card + deal_card}"
deal_card + deal_card
  # code #initial_round here
end

def hit?(card_total)
puts "Type 'h' to hit or 's' to stay"
prompt_user
input = get_user_input

if input == 's'
  puts card_total
  card_total
elsif input == 'h'
  puts card_total + deal_card
  card_total + deal_card
else
  prompt_user
  puts "Please enter a valid command"
end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
