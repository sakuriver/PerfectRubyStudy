# frozen_string_literal: true

require '../Utility/game_message'
require '../Utility/opening_message_base'
require './scenario_character'
require './scenario_standard'

title_scene = GameStandard::Title.new("パスワード入力脱出ゲーム", "(*'ω'*)始まるよー")

title_scene.start

talk_scene = GameStandard::Talk.new

producer = QuizProducer.new("プロデューサー")
challenger = Challenger.new("挑戦者")

# シナリオ
# ファイル処理以降では、CSVファイルなどから読み込み予定
opening_list = [
    GameScene::OpeningMessage.new(challenger.display_name, "こ、ここは....?"),
    GameScene::OpeningMessage.new(challenger.display_name, "見覚えがない部屋だな..."),
    GameScene::OpeningMessage.new(producer.display_name, "いやー、起きたようだね"),
    GameScene::OpeningMessage.new(producer.display_name, "おはよう"),
    GameScene::OpeningMessage.new(challenger.display_name, "誰だ.....?"),
    GameScene::OpeningMessage.new(producer.display_name, "私は、番組プロデューサーだ。"),
    GameScene::OpeningMessage.new(producer.display_name, "ここは今、富豪向けに放送されている。"),
    GameScene::OpeningMessage.new(challenger.display_name, "富豪向け...?"),
    GameScene::OpeningMessage.new(producer.display_name, "娯楽として利用させてもらっている"),
    GameScene::OpeningMessage.new(challenger.display_name, "どういうことだ...?"),
    GameScene::OpeningMessage.new(producer.display_name, "何、君の命に危険があるわけじゃない。"),
    GameScene::OpeningMessage.new(producer.display_name, "学校には連絡をしてある。"),
    GameScene::OpeningMessage.new(producer.display_name, "何日か前に、学校でアンケートが届かなかったかい？"),
    GameScene::OpeningMessage.new(producer.display_name, "100万円と普段の１ヵ月"),
    GameScene::OpeningMessage.new(producer.display_name, "欲しい方にまるをつけなさい"),
    GameScene::OpeningMessage.new(challenger.display_name, "(....あ、あれか!?)"),
    GameScene::OpeningMessage.new(producer.display_name, "その顔は、思い出してくれたようだね。"),
    GameScene::OpeningMessage.new(challenger.display_name, "...あ、あぁ 確かに100万円に丸をつけた"),
    GameScene::OpeningMessage.new(producer.display_name, "よかったよー、同意を得られていて"),
    GameScene::OpeningMessage.new(producer.display_name, "....ふう"),
    GameScene::OpeningMessage.new(producer.display_name, "それじゃあ、本題に入ろうか"),
    GameScene::OpeningMessage.new(producer.display_name, "今回、君は100万円ゲームの当選者に選ばれた"),
    GameScene::OpeningMessage.new(producer.display_name, "なーに、簡単な話だ。"),
    GameScene::OpeningMessage.new(producer.display_name, "君には、ここで1ヵ月間 生活をしてもらう。"),
    GameScene::OpeningMessage.new(producer.display_name, "食事の部屋も、お風呂も完備だ。"),
    GameScene::OpeningMessage.new(producer.display_name, "日光だって浴びられる"),
    GameScene::OpeningMessage.new(producer.display_name, "ただ、外には出られない。それだけだよ"),
    GameScene::OpeningMessage.new(challenger.display_name, "...は？"),
    GameScene::OpeningMessage.new(producer.display_name, "あぁ、クリア条件を話していなかったね。"),
    GameScene::OpeningMessage.new(producer.display_name, "ずばり、1ヵ月以内にこの建物からの脱出だ。"),
    GameScene::OpeningMessage.new(producer.display_name, "建物内での犯罪行為は禁止、それだけだ。"),
    GameScene::OpeningMessage.new(producer.display_name, "脱出できた時点で100万円をプレゼントしよう。"),
    GameScene::OpeningMessage.new(challenger.display_name, "...はは、そんなゲームみたいな話"),
    GameScene::OpeningMessage.new(producer.display_name, "残念ながら、現実だ。"),
    GameScene::OpeningMessage.new(challenger.display_name, "...."),
    GameScene::OpeningMessage.new(producer.display_name, "犯罪行為が禁止だから、基本的なゴールを教えるよ"),
    GameScene::OpeningMessage.new(producer.display_name, "あそこに見える、パスワードが合っていたらクリアだよ"),
    GameScene::OpeningMessage.new(producer.display_name, "成功者が少なすぎるから、単語４文字が合っていればクリアにしている"),
    GameScene::OpeningMessage.new(producer.display_name, "0101が正解だとして、d0101でも脱出可能だ。"),
    GameScene::OpeningMessage.new(producer.display_name, "何か質問はあるかい？"),
    GameScene::OpeningMessage.new(challenger.display_name, "(....もう、受け入れるしかなさそうだな)"),
    GameScene::OpeningMessage.new(challenger.display_name, "そうだな..."),
    GameScene::OpeningMessage.new(challenger.display_name, "それじゃあ "),

]


# オープニングを再生
for opening_message in opening_list
    talk_scene.message_show(opening_message.display_name, opening_message.message_body)
end

# 質問コーナー
loop do
    select_num = gets.chomp
    cake_base_value = 10.5
    cook_type_message = ""
    select_num_value = select_num.to_i
    if select_num_value == 3
    elsif select_num_value == 1
      cook_type_message = "よーし、魔法を使っちゃうぞー"
    else
      cook_type_message = "うーん、魔力少ないし手で切るか"
    end        
end



# 質問終了後演出
game_start_message_list = [
    GameScene::OpeningMessage.new(challenger.display_name, "いや、もう大丈夫だ。"),
    GameScene::OpeningMessage.new(producer.display_name, "お、いい顔ですね。"),
    GameScene::OpeningMessage.new(producer.display_name, "初日でやる気が残っている顔です"),
    GameScene::OpeningMessage.new(producer.display_name, "それじゃあ、行きますよ"),
    GameScene::OpeningMessage.new(challenger.display_name, "....あぁ"),
]


for game_start_message in game_start_message_list
    talk_scene.message_show(game_start_message.display_name, game_start_message.message_body)
end


# パスワード入力


# issue メッセージの組み合わせによる、コンボ実装と

talk_scene.scenario_end_message

