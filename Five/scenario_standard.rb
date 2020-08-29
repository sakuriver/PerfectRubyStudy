module GameStandard
    class Title
        @game_header_title
        @game_title_comment
        def initialize(game_header_title, game_title_comment)
            @game_header_title = game_header_title 
            @game_title_comment = game_title_comment
        end
        def start
            Display::GameMessage.output(:white, @game_header_title)
            Display::GameMessage.output(:white, "-------------------------")
            Display::GameMessage.output(:white, @game_title_comment)
            Display::GameMessage.output(:white, "")
            Display::GameMessage.output(:white, "-------------------------")
            Display::GameMessage.output(:white, "パーフェクトRuby 星に願いを編")
            Display::GameMessage.title_footer_message
            Display::GameMessage.wait_and_message_clear
      end
    end  
    class Talk
        def message_show(display_name, display_message)
          Display::GameMessage.output(:white, "-                              -")
          Display::GameMessage.output(:white, "-                              -")
          Display::GameMessage.output(:white, "-                              -")
          Display::GameMessage.output(:white, "-                              -")
          Display::GameMessage.output(:white, "-                              -")
          Display::GameMessage.output(:white, "--------------------------------")
          Display::GameMessage.output(:white, "-                              -")
          Display::GameMessage.output(:white, "- #{display_name}「#{display_message}」-")
          Display::GameMessage.output(:white, "-                             -")
          Display::GameMessage.output(:white, "--------------------------------")
          Display::GameMessage.wait_and_message_clear
        end
      end    
end
  