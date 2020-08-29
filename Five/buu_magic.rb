# frozen_string_literal: true

require '../Utility/game_message'
require './scenario_character'
require './scenario_standard'

title_scene = GameStandard::Title.new("ブウとサタンのほのぼの日記", "(*'ω'*)始まるよー")

title_scene.start

talk_scene = GameStandard::Talk.new

hercule = Hercule.new("サタン")
buu = Buu.new("ブウ")

talk_scene.message_show(buu.display_name, "#{hercule.display_name}、ただいまー")
talk_scene.message_show(hercule.display_name, "#{buu.display_name}さん、おかえりなさい")
talk_scene.message_show(buu.display_name, "#{hercule.display_name}、今日も材料を調達してきたー")
talk_scene.message_show(hercule.display_name, "それじゃあ、今日もお菓子を一緒に作りましょう")
talk_scene.message_show(buu.display_name, "#{hercule.display_name}、おう、一緒に作ろう!!")
talk_scene.message_show(hercule.display_name, "それじゃあ#{buu.display_name}さんは、材料を切るのをお願いしますね")
talk_scene.message_show(buu.display_name, "おう、わかった!!")
talk_scene.message_show(buu.display_name, "さてと、それじゃあ、どうやって切ろうかな。 1.魔法 2.自分で丁寧に")

select_num = gets.chomp
sleep(1)
cake_base_value = 10.5
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

