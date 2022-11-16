# require './question'

class Player
  attr_accessor :name, :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def answer_question
    result = Question.new.generate_question(self.name)
    print "> "
    answer = $stdin.gets.chomp
    if answer.to_i == result
      puts "#{self.name}: Yes! You are correct."
    else 
      self.life -= 1
      puts "#{self.name}: Seriously? No!"
    end

  end

end