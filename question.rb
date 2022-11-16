class Question

  def generate_question(name)
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "#{name}: What does #{num1} plus #{num2} equal?"
    return result = num1 + num2
  end

end