module GameScene
  class OpeningMessage
    @display_name
    @message_body
    def initialize(display_name, message_body)
        @display_name = display_name
        @message_body = message_body
    end

    def display_name
      @display_name
    end

    def message_body
      @message_body
    end
  end
end