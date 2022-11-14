class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    self.lives -= 1 if lives > 0
  end

  def dead?
    self.lives == 0
  end
end