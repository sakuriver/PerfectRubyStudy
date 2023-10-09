# frozen_string_literal: true

require '../Utility/game_message'
require './scenario_character'
require './scenario_standard'

title_scene = GameStandard::Title.new("ブウのずるっこ日記", "(*'ω'*)文明の利器なのだー")
title_scene.start

talk_scene = GameStandard::Talk.new

dog = BuuDog.new("イッヌ")

buu = Buu.new("ブウ")

talk_scene.message_show(buu.display_name, "#{dog.display_name}、ただいまー")
talk_scene.message_show(dog.display_name, "おかえりなさいー。 ワンワン(*'ω'*)")
talk_scene.message_show(buu.display_name, "#{dog.display_name}、お願いがあるんだけど")
talk_scene.message_show(dog.display_name, "ワウ(*'ω'*)？")
talk_scene.message_show(buu.display_name, "算数の宿題があるから、#{dog.display_name}の変換機能で解いてほしいんだー")
talk_scene.message_show(dog.display_name, "了解ですー(*'ω'*)")
talk_scene.message_show(buu.display_name, "あざーすー")

start_num = 1
end_num = 3

start_num.step end_num do |now_num|
    talk_scene.message_show(dog.display_name, "それじゃあ、#{now_num}問目は何にする？(*'ω'*)")
    talk_scene.message_show(dog.display_name, "1.２進数 2.16進数 3.xの10乗 4.分数 があるよ")

    select_num = gets.chomp
    sleep(1)
    select_num_value = select_num.to_i
    result_value = 0

    if select_num_value == 7
        break
    end

    if select_num_value == 1
        talk_scene.message_show(dog.display_name, "2進数にしたい数を教えてね(*'ω'*)")
        input_num = gets.chomp
        sleep(1)
        input_value = input_num.to_i
        result_value = dog.convert_value_binary(input_value)
    elsif select_num_value == 2
        talk_scene.message_show(dog.display_name, "16進数にしたい数を教えてね(*'ω'*)")
        input_num = gets.chomp
        sleep(1)
        input_value = input_num.to_i
        result_value = dog.convert_value_sixteen(input_value)
    elsif select_num_value == 3
        talk_scene.message_show(dog.display_name, "nがいくつかを教えてね(*'ω'*)")
        input_num = gets.chomp
        sleep(1)
        input_value = input_num.to_i
        result_value = dog.convert_value_dobulecalc(input_value, 10)
    else
        talk_scene.message_show(dog.display_name, "分母がいくつかを教えてね(*'ω'*)")
        input_num = gets.chomp
        sleep(1)
        input_value_first = input_num.to_i
        talk_scene.message_show(dog.display_name, "分子がいくつかを教えてね(*'ω'*)")
        input_num = gets.chomp
        sleep(1)
        input_value_second = input_num.to_i
        result_value = dog.convert_value_rational(input_value_second, input_value_first)
    end
    talk_scene.message_show(dog.display_name, "計算開始しますー(*'ω'*)")
    sleep(3)
    talk_scene.message_show(dog.display_name, "計算結果は、#{result_value}だよ(*'ω'*)")
    talk_scene.message_show(buu.display_name, "めっちゃ、助かった！？")          
end

talk_scene.message_show(buu.display_name, "全部終わったわー")
talk_scene.message_show(dog.display_name, "それじゃあ、散歩連れてって(*'ω'*)")
talk_scene.message_show(buu.display_name, "おう、連れて行ってやるぞー！？")
talk_scene.scenario_end_message

