class MagicEight
    def greeting_instructions
        puts "~~ Welcome to the magic eight ball ~~"
        sleep 0.25
        puts "Ask me anything, hombre."
        @user_response = gets.chomp.to_s
        if @user_response == 'quit'
            puts 'Fine, be a quitter.'
          exit()
        end
    end #greeting end

    def comp_response 
      answer_arr = ["Perhaps", 
                    "Fat chance, hombre", 
                    "Purple! Because aliens don't wear hats!",
                    "Salsa deems it unworthy. Pesant.",
                    "Go ask the Griz. He seems like a wise dog.",
                    "It's on like Donkey Kong!",
                    "Dunno. Google it.",
                    "What's the point?",
                    "Thou shall count to 3 with the holy hand granade, not 2! 
                    \nWhile 2 is too short and 4 being too long... and 5 is right out."
                    ]
      display_comp_response(answer_arr)
    end
    def display_comp_response(answer_arr)
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts answer_arr.sample
    end

    def play_again
      puts "Anything else?"
      puts "Type 'quit' to be a quitter."
      @user_response = gets.chomp.to_s
      if @user_response == 'quit'
        puts 'Fine, be a quitter.'
        exit()
      # else
      #   play
      end
    end

    def play
    # begin
      greeting_instructions
      while true
      comp_response
      # display_comp_response
      play_again
    # until @user_response == 'quit'
    # break
      end #while end statement
    end #play method end
end # MagicEight end

m = MagicEight.new
m.play