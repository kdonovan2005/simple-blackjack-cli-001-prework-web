def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
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
  return card_total
end

def hit?(card_total)
  prompt_user
  response = get_user_input
  loop do
  if response == 's'
    break
  elsif response == 'h'
    card_total += deal_card
    display_card_total(card_total)
    break
  else
    invalid_command
  end
end
return card_total
end

def invalid_command
  puts "Please enter a valid command"
  puts prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  inhand = initial_round
  inhand = hit?(inhand)
  while inhand < 21 do
    inhand += hit?(deal_card)
  end
  end_game(inhand)
end
  
