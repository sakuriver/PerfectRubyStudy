# frozen_string_literal: true

require '../Utility/game_message'



class Buu 
  OKASHI_ID = 1
  @display_name
  def initialize(display_name)
    @display_name = display_name
  end
  def magic(skill_id, base_cake)
    if skill_id == 1
      return base_cake.ceil
    end
    base_cake
  end
  def display_name
    @display_name
  end
end

class Hercule
  @display_name
  def initialize(display_name)
    @display_name = display_name
  end
  def display_name
    @display_name
  end
end


module Game
  class Title
    def start
      Display::GameMessage.output(:white, "ブウとサタンのほのぼの日記")
      Display::GameMessage.output(:white, "-------------------------")
      Display::GameMessage.output(:white, "(*'ω'*)始まるよー")
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

title_scene = Game::Title.new

title_scene.start


talk_scene = Game::Talk.new

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

