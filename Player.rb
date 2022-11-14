class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def question_for_player
    question = Question.new
    puts "#{self.name}: #{question.ask}"
    print '> '
    player_answer = $stdin.gets.chomp
    question.check_answer(player_answer.to_i)
  end

  def lose_life
    self.lives -= 1 if lives > 0
  end

  def dead?
    self.lives == 0
  end
end