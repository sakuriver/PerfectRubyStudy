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
  end
end