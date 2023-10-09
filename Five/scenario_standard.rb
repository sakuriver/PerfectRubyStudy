
require '../Utility/scene_logger'

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
        @end_message_data
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
        def scenario_end_message
          @end_message_data = SceneStandard::MessageEndData.new("サリー開発センター", "終わり")
          message_show(@end_message_data.company_name, @end_message_data.complete_message)
        end
        def message_select_type(display_messages)
          Display::GameMessage.output(:white, "-                              -")
          Display::GameMessage.output(:white, "--------------------------------")
          Display::GameMessage.output(:white, "- 1. #{display_messages[0]}    -")
          Display::GameMessage.output(:white, "- 2. #{display_messages[1]}    -")
          Display::GameMessage.output(:white, "- 3. #{display_messages[2]}    -")
          Display::GameMessage.output(:white, "--------------------------------")
          Display::GameMessage.output(:white, "-                              -")
          Display::GameMessage.output(:white, "-                              -")
          Display::GameMessage.output(:white, "-                              -")
          Display::GameMessage.wait_and_message_clear
        end
        def get_select_message(select_messages, sleep_time = 1)
          select_num = gets.chomp
          sleep(sleep_time)
          select_messages[select_num.to_i-1].dup
        end
      end
end
  