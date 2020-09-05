# frozen_string_literal: true

require '../Utility/game_message'
require './scenario_character'
require './scenario_standard'

title_scene = GameStandard::Title.new("クリリの文章勉強会", "(*'ω'*)始まるよー")

title_scene.start

talk_scene = GameStandard::Talk.new

kuriri = Kuriri.new("クリリ")
yati = Yati.new("ヤチ")

talk_scene.message_show(yati.display_name, "#{kuriri.display_name}、ただいまー")
talk_scene.message_show(kuriri.display_name, "あ、#{yati.display_name}いいところに")
talk_scene.message_show(yati.display_name, "#{kuriri.display_name}？？ どうかしたか？")
talk_scene.message_show(kuriri.display_name, "実は、娘の宿題に見え貼っちゃってさー")
talk_scene.message_show(kuriri.display_name, "文章を作る約束をしたんだけど、一人じゃ思いつかない部分があって")
talk_scene.message_show(yati.display_name, "それで、俺に手伝ってほしいと？")
talk_scene.message_show(kuriri.display_name, "そーなんだよー")
talk_scene.message_show(kuriri.display_name, "焼肉おごるからさー")
talk_scene.message_show(yati.display_name, "んー、分かった")
talk_scene.message_show(kuriri.display_name, "さっすがー")
talk_scene.message_show(kuriri.display_name, "それじゃあ、好きな単語を選んでくれ")
talk_scene.message_show(kuriri.display_name, "そしたら、後は俺が診断メーカーみたいに最後は文章にするから")
talk_scene.message_show(yati.display_name, "あ、あぁ　分かった。")


talk_scene.message_show(yati.display_name, "あ、あぁ　分かった。")
talk_scene.message_show(kuriri.display_name, "それじゃあ、次の中から選択してくれ。")

sentence_message  = String.new("")

first_messages = ["タケノコや", "今年の夏も", "今の時期"]
talk_scene.message_select_type(first_messages)

sentence_message << talk_scene.get_select_message(first_messages)
talk_scene.message_show(kuriri.display_name, "それじゃあ、次は")

second_messages = ["暑くなってきた", "その形が", "眠みに誘われる"]
talk_scene.message_select_type(second_messages)
sentence_message << talk_scene.get_select_message(second_messages)
talk_scene.message_show(kuriri.display_name, "次が最後だ")

last_messages = ["エアコン付けよう", "よし、寝よう", "面白い"]
talk_scene.message_select_type(last_messages)
sentence_message << talk_scene.get_select_message(last_messages)
talk_scene.message_show(kuriri.display_name, "それじゃあ、いまから読み上げるな")
talk_scene.message_show(kuriri.display_name, sentence_message)
talk_scene.message_show(kuriri.display_name, "#{yati.display_name}どうだ？")
talk_scene.message_show(yati.display_name, "おう、それであっている")

talk_scene.message_show(yati.display_name, "#{kuriri.display_name}、それじゃあ焼肉期待しているぞ？")
talk_scene.message_show(kuriri.display_name, "分かっているってー")

# issue メッセージの組み合わせによる、コンボ実装と

talk_scene.scenario_end_message

