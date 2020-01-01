# frozen_string_literal: true

require './../Utility/game_message'
require './../Utility/gacha_base'
require './../Utility/opening_message_base'
require './scenario_character'
require './scenario_standard'

title_scene = GameStandard::Title.new("ガチャシミュレータ", "(*'ω'*)始まるよー")

title_scene.start

@draw_lists = [ GachaBasic::GachaLineup.new("もふうさ", 100), GachaBasic::GachaLineup.new("くまこ", 500) ]

talk_scene = GameStandard::Talk.new

gacha = GachaBasic::GachaBase.new(@draw_lists, @draw_lists)

game_messages = [
    "ガチャを引く",
    "図鑑モード",
    "プロフィール",
    "ゲームを終わる",
]

game_action_messages = [
    "",
    "ガチャを引く",
    "図鑑モード",
    "プロフィール",
    "ゲームを終わる",
]

talk_scene.message_select_type_five(game_messages)
game_end_flg = false
passowrd_challenge_flg = false

# ガチャシミュレータのメインループ.
loop do
    select_num = gets.chomp
    select_num_value = select_num.to_i
    game_over_message = "今日はここまでー"
    cook_type_message = case (select_num_value-1) 
    when 0
      "今日も運試ししようっと"
    when 1 
      "ガチャのレート見ようっと"  
    when 2
      "今の成績は？"  
    when 3
        game_over_message
    else 
      ""
    end
    talk_scene.message_show("ゆうま", cook_type_message)
    if select_num_value == 1
        talk_scene.message_show("ゆうま", "今日はどれをひこうかな")
        gacha.draw
        talk_scene.message_show("ゆうま", "今日は #{@draw_lists[gacha.draw_index].name} を引き当てたぞ " )
    elsif select_num_value == 2
    elsif select_num_value == 3
    else
        break
    end
    talk_scene.message_select_type_five(game_messages)
end

talk_scene.scenario_end_message