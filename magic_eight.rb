class MagicEight
    def greeting_instructions
        print "~~ Welcome to the magic eight ball ~~"
        sleep 0.25
        print "Ask me anything, hombre."
        @user_response = gets.chomp
    end


end