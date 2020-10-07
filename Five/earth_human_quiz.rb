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



select_num = gets.chomp
sleep(1)
cook_type_message = ""
select_num_value = select_num.to_i
if select_num_value == 1
  cook_type_message = "よーし、魔法を使っちゃうぞー"
else
  cook_type_message = "うーん、魔力少ないし手で切るか"
end
cake_result = buu.magic(select_num_value, cake_base_value)

talk_scene.message_show(buu.display_name, cook_type_message)
talk_scene.message_show(buu.display_name, "よーし、完成したぞー(*'ω'*)")
talk_scene.message_show(hercule.display_name, "#{buu.display_name}さん、できました？")
talk_scene.message_show(buu.display_name, "おー、こっちは、ばっちりだー")
talk_scene.message_show(hercule.display_name, "いいですね、それじゃあ調理して食べましょうか")

if cake_base_value == cake_result
  talk_scene.message_show(buu.display_name, "あーむ、もぐもぐ")
  talk_scene.message_show(hercule.display_name, "これは、なかなか食べやすいサイズで美味しいですね")
  talk_scene.message_show(buu.display_name, "俺が切ったからなー")
  talk_scene.message_show(hercule.display_name, "ですねー")
else
  talk_scene.message_show(buu.display_name, "あーむ、もぐもぐ")
  talk_scene.message_show(hercule.display_name, "これは、...?")
  talk_scene.message_show(buu.display_name, "何か、微妙だな...")
  talk_scene.message_show(hercule.display_name, "あーブウさん、魔法使いました？")
  talk_scene.message_show(buu.display_name, "使ったぞー")
  talk_scene.message_show(hercule.display_name, "これですね、ブウさんの魔力だと")
  talk_scene.message_show(hercule.display_name, "上手く切れてなくて、美味しくならなかったんですね")
  talk_scene.message_show(buu.display_name, "なるほどー、次から気を付けるー")
end

talk_scene.message_show(hercule.display_name, "ごちそうさまでしたー")
talk_scene.message_show(buu.display_name, "ごちそうさまでしたー")

talk_scene.message_show("サリー開発センター", "終わり")

