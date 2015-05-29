class MagicEight
    def greeting_instructions #define method 'greeting_instruction'
        puts "~~ Welcome to the magic eight ball ~~" 
        sleep 0.25  #gives a little bit of buffer time between the welcoming and instructions
        puts "Ask me anything, hombre." #instructions
        @user_response = gets.chomp.to_s.downcase #assigns user input to a variable '@user_response'
        if @user_response == 'quit'   #if statement that has a conditional to exit the game if user input is 'quit'
            puts 'Fine, be a quitter.'
          exit()
        end
    end #greeting method end

    def comp_response   #defines the method that holds our array of responses the computer executes after user responds
      answer_arr = ["Perhaps", 
                    "Fat chance, hombre", 
                    "Purple! Because aliens don't wear hats!",
                    "Salsa deems it unworthy. Pesant.",
                    "Go ask the Griz. He seems like a wise dog.",
                    "It's on like Donkey Kong!",
                    "Dunno. Google it.",
                    "What's the point?",
                    "This next test may involve trace amounts of time travel. \nSo, word of advice: \nIf you meet yourself on the testing track, don't make eye contact. \nLab boys tell me that'll wipe out time. \nEntirely. \nForward and backward! \nSo do both of yourselves a favor and just let that handsome devil go about his business.\n",
                    "Those of you helping us test the Repulsion Gel today, just follow the blue line on the floor. \nThose of you who volunteered to be injected with praying mantis DNA, I've got some good news and some bad news. \nBad news is we're postponing those tests indefinitely. \nGood news is we've got a much better test for you: fighting an army of mantis men. \nPick up a rifle and follow the yellow line. \nYou'll know when the test starts.",
                    "Great work! \nBecause this message is prerecorded, any observations related to your performance are speculation on our part. \nPlease disregard any undeserved compliments.",
                    "First thou pullest the Holy Pin. \nThen thou must count to three. \nThree shall be the number of the counting and the number of the counting shall be three. \nFour shalt thou not count, neither shalt thou count two, \nexcepting that thou then proceedeth to three. \nFive is right out.",
                    ]
      display_comp_response(answer_arr) #executes method below, passes the array above as and arguement for the 'display_comp_response'
    end
    def display_comp_response(answer_arr)
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      sleep 0.5   #buffers
      puts answer_arr.sample  #calls on a random response in the array
      sleep 0.20  #buffers
    end

    def play_again  #method that gives the user the option to play again, user can say anything and the game will execute again
      sleep 1
      puts "Anything else?"
      puts "Type 'quit' to be a quitter."
      @user_response = gets.chomp.to_s.downcase
      if @user_response == 'quit'
        puts 'Fine, be a quitter.'
        exit()  #if conditional
      end
    end

    def play
      greeting_instructions
      while true  #loops through the 'comp_response' method and 'play_again' method so we don't get the 'greeting_instructions' method after every play back
      comp_response
      play_again
      end #while end statement
    end #play method end
end # MagicEight end

m = MagicEight.new
m.play