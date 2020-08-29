module Display
	class GameMessage
	  @color_maps = {
      :red =>  "31m", 
      :green => "32m", 
      :blue => "34m", 
      :black => "30m",
      :white => "37m",
      :yellow => "33m",      
    }
	  def self.output(color_code, body)
      print "\e[#{@color_maps[color_code]}"
      puts body
      print "\e[0m"
    end
    
    def self.message_clear
      puts "\e[H\e[2J"
    end

    def self.wait_and_message_clear
      wait = gets.chomp
      sleep(1)
      Display::GameMessage.message_clear
    end

    def self.title_footer_message
			Display::GameMessage.output(:white, "press push key")
			Display::GameMessage.output(:white, "----------------------------------")
			Display::GameMessage.output(:white, "- sakuriver develop center       -")
			Display::GameMessage.output(:white, "-                                -")
			Display::GameMessage.output(:white, "----------------------------------")
    end


  end
end