module GameRule
  class QuizGameRow
    SELECT_TYPE = 1
    PARTIAL_POINT_TYPE = 2
    @answer_list
    @messages_list
    @quiz_type_list
    @quiz_messages
    @quiz_message_now
    @quiz_type
    def initialize(answer_list, message_list, quiz_type)
      @answer_list = answer_list
      @messages_list = message_list
      @quiz_message_now = 0
      @quiz_type = quiz_type
    end
    def quiz_display
      @messages_list[@quiz_message_now]
    end

    def quiz_type
      @quiz_type
    end

    def next_quiz_display
      @quiz_message_now += 1
    end

    # 2択や3択といった、選んで完全一致の確認
    def check_answer_select_type(answer_num)
      @answer_list[@quiz_now] == answer_num
    end

    # 入力問題で、部分点形式
    def check_answer_partial_point_type(answer_value)

    end

  end
  class QuizGameBase
    @quiz_rows
    @quiz_result_rank_list
    # 以下、EXでの拡張用(付与はRuby本完走後)
    @quiz_rank_reward_list
    def initialize(quiz_row_list, quiz_result_rank_list, quiz_rank_reward)
      @quiz_row_list = quiz_row_list
      @quiz_result_rank_list = quiz_result_rank_list
      @quiz_rank_reward_list = quiz_rank_reward_list
    end
    def quiz_result_rank(value)
      quiz_result_rank = null
      @quiz_result_rank_list.each do |quiz_result_rank|
        if quiz_result_rank.check_value_rank(rank)
        end
      end


      end
    end
    def quiz_rank_reward_name(rank)
      @quiz_rank_reward_list[rank]
    end
  end
  class QuizResultRank
    @name
    @min_value
    @max_value
    def initialize(name)
      @name = name
    end
    def check_value_rank(rank)
      @min_value <= rank @max_value
    end
    def name
      @name
    end
  end
  class ActionCharacterBase
    @name
    @action_button
  end
end