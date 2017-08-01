module MathGame

  class Players
    attr_reader :lives

    # When a game starts this method makes it so
    # each player has three lives
    def initialize
      @lives = 3
    end

    # When a player gets a question wrong they
    # lose 1 life
    def lives_lost
      @lives -= 1
      pp "INCORRECT -- YOU HAVE #{@lives} LIVES LEFT"
    end
  end
end