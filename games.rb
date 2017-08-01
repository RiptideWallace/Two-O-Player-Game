module MathGame

  class Games

    # When a game begins two new players are created
    # and pushed to the players array
    # Current player starts at zero
    def initialize
      @players = []
      @players.push(Players.new)
      @players.push(Players.new)
      @current_player = 0
    end

    def start_game
      pp "Welcome to our two player math game"

      # Initially does a loop to determine whose turn
      # it is while also determining which question
      # to ask

      loop do
        puts "Player #{@current_player}"
        questions = MathGame::Question_Answer.new.question?
        pp questions[0]
        answer = gets.to_i

        # The following are actions that happen with
        # specific outcomes

        # This code causes the current player to
        # lose a life if they get a question wrong
        if(answer != questions[1])
          @players[@current_player].lives_lost
          pp "==============NEXT QUESTION============="
          # After that answer is determined
          # this code is used to determine which
          # player goes next
          if @current_player == @players.length - 1
            @current_player = 0
          else
            @current_player = 1
          end
        # This code is the action that is taken
        # if an answer is correct
        else
          pp "CORRECT!"
          pp "==============NEXT QUESTION============="
          if @current_player == @players.length - 1
            @current_player = 0
          else
            @current_player = 1
          end
        end
        # Now and action is taken on the end game
        # method
        if end_game?
          pp "PLAYER #{@current_player} HAS WON"
          pp "==============GAME OVER=============="
          break
        end
      end
    end
    # How a game is determined to be over
    def end_game?
      @players.any? {|player| player.lives == 0 }
    end
  end
end




