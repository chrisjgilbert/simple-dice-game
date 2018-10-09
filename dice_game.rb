# If I roll higher than my opponent, I win.
# Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
# Upgrade the game once more: now we play several rounds for each game.
# The first player to win two rounds wins the game. (Still with two dice each.)

player_1_wins = 0
player_2_wins = 0

while true do
  player1_roll = rand(6) + rand(6)
  player2_roll = rand(6) + rand(6)

  if player1_roll > player2_roll
    puts "player1: #{player1_roll}\nplayer2: #{player2_roll}\nplayer1 wins!"
    player_1_wins += 1
  elsif player2_roll > player1_roll
    puts "player1: #{player1_roll}\nplayer2: #{player2_roll}\nplayer2 wins!"
    player_2_wins += 1
  else
    puts "player1: #{player1_roll}\nplayer2: #{player2_roll}\nthat's a draw!"
  end

  print "press enter to roll again"
  gets.chomp

  if player_1_wins == 2
    puts "player1 wins #{player_1_wins} : #{player_2_wins}"
    break
  end
  if player_2_wins == 2
    puts "player3 wins! #{player_2_wins} : #{player_1_wins}"
  end
end
