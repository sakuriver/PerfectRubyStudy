module GameRule
  class QuizGameRow
    @answer_list
    @messages_list
    @quiz_type_list
    @quiz_now
    @quiz_messages
    def initialize(answers, message_list, quiz_type_list)
      @answer_list = answers
      @messages_list = message_list
      @quiz_type_list = quiz_type_list
      @quiz_now
    end
    def quiz_display
      @messages_list[@quiz_now]
    end

    def check_answer(answer_num)
      @answer_list[@quiz_now] == answer_num
    end
  end
  class QuizGameBase
    @quiz_rows
    @quiz_result_ranks
  end
  class QuizResultRank
    @name
    def initialize(name)
      @name = name
    end
  end
  class ActionCharacterBase
    @name
    @action_button
  end
end