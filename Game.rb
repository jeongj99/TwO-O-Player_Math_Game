class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end

  def start
    puts "Welcome to the math game #{@player1.name} and #{@player2.name}!"
    turn
  end

  def check_death
    if @player1.dead?
      winner(@player2)
    elsif @player2.dead?
      winner(@player1)
    end
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)
  end

  def stats
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def turn
    @player1.question_for_player
    check_death
    stats
    puts "----- NEW TURN -----"
    @player2.question_for_player
    check_death
    stats
    puts "----- NEW TURN -----"
    turn
  end
end