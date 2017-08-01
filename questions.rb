module MathGame

  class Question_Answer
    attr_accessor :answer

    # How a question is rendered to the players
    def question?
      random_number = 2.times.map{1 + rand(20)}
      ["What is #{random_number[0]} + #{random_number[1]}", random_number[0] + random_number[1]]
    end
  end
end
