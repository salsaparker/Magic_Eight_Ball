class MagicEight
    def greeting_instructions
        puts "~~ Welcome to the magic eight ball ~~"
        sleep 0.25
        puts "Ask me anything, hombre."
        @user_response = gets.chomp
    end #greeting end

    def comp_response 
      @answer_arr = ["Perhaps", 
                    "Fat chance, hombre", 
                    "Purple! Because aliens don't wear hats!",
                    "Salsa deems it unworthy. Pesant.",
                    "Go ask, the Griz. He seems like a wise dog.",
                    "It's on like Donkey Kong!",
                    "Dunno. Google it.",
                    "What's the point?",
                    "Thou shall count to 3 with the holy hand granade, not 2! 
                    \nBecause 2 is too short and 4 being too long... and 5 is right out."
                    ]
    end
    def display_compresponse
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      @answer_arr.sample
    end

    def play
      greeting_instructions
      comp_response
    end

end # MagicEight end

m = MagicEight.new
m.play

