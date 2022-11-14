class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end
end

class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def ask
    "What does #{@num1} plus #{@num2} equal?"
  end

  def check_answer(answer)
    @sum == answer
  end
end

class Game
  def initialize
    @player1 = Player.new('Player 1').name
    @player2 = Player.new('Player 2').name
  end

  def start
    puts "Welcome to the math game #{@player1} and #{@player2}!"
    turn
  end

  def turn
    @player1.question_for_player
  end
end

new_game = Game.new
new_game.start