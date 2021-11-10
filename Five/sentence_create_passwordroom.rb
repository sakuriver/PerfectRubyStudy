# frozen_string_literal: true

require '../Utility/game_message'
require './scenario_character'
require './scenario_standard'

title_scene = GameStandard::Title.new("パスワード入力脱出ゲーム", "(*'ω'*)始まるよー")

title_scene.start

talk_scene = GameStandard::Talk.new

producer = QuizProducer.new("プロデューサー")
challenger = Challenger.new("挑戦者")

# シナリオ
talk_scene.message_show(challenger.display_name, "こ、ここは....?")
talk_scene.message_show(challenger.display_name, "見覚えがない部屋だな...")
talk_scene.message_show(producer.display_name, "いやー、起きたようだね")
talk_scene.message_show(producer.display_name, "おはよう")


# パスワード入力


# issue メッセージの組み合わせによる、コンボ実装と

talk_scene.scenario_end_message

