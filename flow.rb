# require './player'

class Flow
  def start
    player1 = Player.new("Player 1")
    player2 = Player.new("Player 2")
    players = [player1, player2]

    i = 2

    while player1.life > 0 && player2.life > 0
      j = i % 2
      players[j].answer_question
      p1_life = player1.life
      p2_life = player2.life

      if player1.life > 0 && player2.life > 0
        puts "P1 : #{p1_life}/3 vs P2 : #{p2_life}/3 "
        puts "-----NEW TURN-----"
        i += 1
      else
        winner = players.select{|player| player.life > 0}[0]
        puts "#{winner.name} wins with a score of #{winner.life}/3 "
        puts "-----GAME OVER-----"
        puts "Good bye!"
      end

    end

  end

end
