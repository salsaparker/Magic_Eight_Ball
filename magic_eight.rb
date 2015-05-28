class MagicEight
    def greeting_instructions
        print "~~ Welcome to the magic eight ball ~~"
        sleep 0.25
        print "Ask me anything, hombre."
        @user_response = gets.chomp
    end #greeting end

    def comp_response 
      @comp_answer = (0..9).to_a.sample
       puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        while @comp_answer == 1
          puts "Perhaps"
        end
        while @comp_answer == 2
          puts "Fat chance, hombre"
        end
        while @comp_answer == 3
          puts "Purple! Because aliens don't wear hats!" 
        end
        while @comp_answer == 4
          puts "Salsa deems it unworthy. Pesant." 
        end
        while @comp_answer == 5
          puts "Go ask, the Griz. He seems like a wise dog."
        end
        while @comp_answer == 6
          puts "It's on like Donkey Kong!"
        end
        while @comp_answer == 7
          puts "Dunno. Google it."
        end
        while @comp_answer == 8
          puts "What's the point?"
        end 
        while @comp_answer == 9
          "Thou shall count to 3 with the holy hand granade, not 2! Because 2 is too short
          and 4 being too long... and 5 is right out."
        end 
    end #comp_response class end

end # MagicEight end