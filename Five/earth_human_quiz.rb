# frozen_string_literal: true

require '../Utility/game_message'
require './scenario_character'
require './scenario_standard'

title_scene = GameStandard::Title.new("地球人クイズ", "開始だよー")

title_scene.start

talk_scene = GameStandard::Talk.new

firstPresident = Hercule.new("初代首相")

talk_scene.message_show(firstPresident.display_name, "みなさん、お待たせしました！！！")
talk_scene.message_show(firstPresident.display_name, "これより地球人確認クイズを始めます！！")
talk_scene.message_show(firstPresident.display_name, "ルールは簡単")
talk_scene.message_show(firstPresident.display_name, "これから出す問題は、一般の地球人では答えられないはずのクイズだ！！")
talk_scene.message_show(firstPresident.display_name, "そして一般人じゃない、要人は大統領の私以外全て地球に移動してもらった！！")
talk_scene.message_show(firstPresident.display_name, "それじゃあ、張り切って行こう！！")

first_answer_list = ["1.", "2.", "3.", "4."]
first_message_list = ["問題", "は何でしょうか"]
first_quiz_type = GameRule::QuizGameRow::SELECT_TYPE
first_quiz_row = GameRule::QuizGameRow.new(first_answer_list, first_message_list, first_quiz_type)
quiz_scene = GameRule::QuizGameBase.new([first_quiz_row])


select_num = gets.chomp
sleep(1)
talk_scene.message_show(firstPresident.display_name, "それじゃあ、今回のクイズはここまでだ")

talk_scene.message_show("サリー開発センター", "終わり")

