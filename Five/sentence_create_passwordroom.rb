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
    GameScene::OpeningMessage.new(producer.display_name, "成功者が少なすぎるから、単語が合っていればクリアにしている"),
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

qs_display_messages = [
    "せいかいの単語は俺が知っているのか",
    "かぞくとはなしがしたい",
    "もう、大丈夫だ",
]


ans_display_messages = [
    "",
    "あぁ、君がたどり着けることばだ",
    "いいだろう、ゲームスタート後に合わせよう",
]


talk_scene.message_select_type(qs_display_messages)
family_talk_flg = false
# 質問コーナー
loop do
    select_num = gets.chomp
    cook_type_message = ""
    select_num_value = select_num.to_i
    if select_num_value == 3
        break
    elsif select_num_value == 1
      cook_type_message = "俺が知っていることなのか？"
    else
      cook_type_message = "家族とはなしがしたい"
      family_talk_flg = true
    end
    talk_scene.message_show(challenger.display_name, cook_type_message)
    talk_scene.message_show(producer.display_name, ans_display_messages[select_num_value])
    talk_scene.message_show(producer.display_name, "他に質問はあるかい？")
    talk_scene.message_select_type(qs_display_messages)  
end

if family_talk_flg
    family_talk_message_list = [
        GameScene::OpeningMessage.new(producer.display_name, "それでは、お連れしますねー"),
        GameScene::OpeningMessage.new(challenger.display_name, "出て行ったな"),
        GameScene::OpeningMessage.new("", "ガチャ"),
        GameScene::OpeningMessage.new(challenger.display_name, "(....えぇ、全員本当にきたよ)"),
        GameScene::OpeningMessage.new(challenger.display_name, "(本当にこういうイベントなのか)"),
        GameScene::OpeningMessage.new("母親", "悠くん、ヤッホー"),
        GameScene::OpeningMessage.new(challenger.display_name, "....あぁ"),
        GameScene::OpeningMessage.new("父親", "悠、元気にしているか"),
        GameScene::OpeningMessage.new(challenger.display_name, "....あぁ"),
        GameScene::OpeningMessage.new("みゆ", "兄貴だけ、抽選に当たって3LDKのこんな広いところずるいなー"),
        GameScene::OpeningMessage.new(challenger.display_name, "おいおい"),
        GameScene::OpeningMessage.new("", "20分経過"),
        GameScene::OpeningMessage.new("父親", "あぁ、もういい時間だな。"),
        GameScene::OpeningMessage.new("母親", "そうね、そろそろ帰ろうかしら。"),
        GameScene::OpeningMessage.new("みゆ", "それじゃあ、がんばってきてね"),
        GameScene::OpeningMessage.new(producer.display_name, "それじゃあみなさま、こちらへ"),

    ]

    for family_talk_message in family_talk_message_list
        talk_scene.message_show(family_talk_message.display_name, family_talk_message.message_body)
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

room_messages = [
    "机の中を確認する",
    "ドアを調べる",
    "カーテンの裏側を見る",
    "脱出を試みる",
    "諦める"
]

room_action_messages = [
    "",
    "机の中を確認する",
    "ドアを調べる",
    "カーテンの裏側を見る",
    "脱出を試みる",
    "諦める"
]

talk_scene.message_select_type_five(room_messages)
game_end_flg = false
passowrd_challenge_flg = false

# 脱出ゲームのメインループ.
loop do
    select_num = gets.chomp
    select_num_value = select_num.to_i
    input_type_message = "よし、わかった"
    game_over_message = "全然わからん..."
    cook_type_message = case (select_num_value-1) 
    when 0
      "「機会を逃すな」と書かれた手紙がある"
    when 1 
      "please keyword と書かれてパスワードを入力できるものがある"  
    when 2
      "机の紙が全て と書かれてた手紙がある"  
    when 3
      input_type_message
    when 4
       game_over_message
    else 
      ""
    end
    talk_scene.message_show(challenger.display_name, cook_type_message)
    if select_num_value == 4
        passowrd_challenge_flg = true
        break
    elsif select_num_value == 5
        game_end_flg = true
        break
    end
    talk_scene.message_select_type_five(room_messages)
end

# パスワードのパターンを入力
if passowrd_challenge_flg
    talk_scene.message_show(challenger.display_name, "ちょうせん時の注意？")
    talk_scene.message_show(challenger.display_name, "プロデューサーを呼ぶことと書いてあるな")
    talk_scene.message_show(challenger.display_name, "プロデューサー、聞こえているか？")
    talk_scene.message_show(producer.display_name, "はいはい、どうしました")
    talk_scene.message_show(challenger.display_name, "パスワードの入力に挑もうと思う")
    talk_scene.message_show(producer.display_name, "いよいよ、ですね。")
    talk_scene.message_show(producer.display_name, "それでは、ご説明いたしましょう。")
    talk_scene.message_show(producer.display_name, "入力可能回数は3回です。")
    talk_scene.message_show(producer.display_name, "3回を過ぎてしまうと、家に帰ることになります。")
    talk_scene.message_show(challenger.display_name, "わかった")

    game_clear_flg = false

    max_num = 3
    num = 0
    loop do
        input_value = gets.chomp
        password = 'timing'
        if input_value.match(password)
            game_clear_flg = true
            break
        else
            num += 1
            talk_scene.message_show("機械", "エラー後 #{max_num-num} 回です")
            if num >= max_num
                break
            end
        end
    end

    if game_clear_flg 
        talk_scene.message_show("", "ガチャ")
        talk_scene.message_show(producer.display_name, "...おお、おめでとうございますー")
        talk_scene.message_show(challenger.display_name, "オーバーだな")
        talk_scene.message_show(producer.display_name, "いえいえ、本当に久しぶりに見ましたよ")
        talk_scene.message_show(producer.display_name, "私を通さない場合に、家族とすら連絡できない限界状況")
        talk_scene.message_show(producer.display_name, "建物内でわんりょくを一切使わないスマートさ")
        talk_scene.message_show(producer.display_name, "3回しか入力できない状況")
        talk_scene.message_show(producer.display_name, "言葉の暴力なんてしなくても上記で大抵諦めます")

        talk_scene.message_show(producer.display_name, "かなり、久しぶりです。")
        talk_scene.message_show(producer.display_name, "近々'次'の舞台からも連絡が来るでしょう。")
        talk_scene.message_show(challenger.display_name, "スリル世界から、抜け出したのにか...?")
        talk_scene.message_show(producer.display_name, "あなたは、そういう側の人間ということです")
        talk_scene.message_show(challenger.display_name, "...まぁ、いい。")
        talk_scene.message_show(challenger.display_name, "賞金はもらえるんだな")
        talk_scene.message_show(producer.display_name, "あなたにこの小切手を差し上げましょう")
        talk_scene.message_show(producer.display_name, "これを銀行で使っていただければ受け取れます")
        talk_scene.message_show(challenger.display_name, "...わかった。 受け取ろう")
        talk_scene.message_show(producer.display_name, "これにて、番組は終了です。")
        talk_scene.message_show(challenger.display_name, "ん？ 親父、おふくろも？")
        talk_scene.message_show(producer.display_name, "えぇ、来ていただいております。")

        talk_scene.message_show("M社",  "プロデューサー、彼に興味がある");
        talk_scene.message_show("M社", "他のクリア者と同じように少しばかり支援をしたい。")
        talk_scene.message_show(producer.display_name, "承知いたしました。")
        talk_scene.message_show(producer.display_name, "他のスポンサー様と同様'彼自身の進路'が決まりましたら")
        talk_scene.message_show(producer.display_name, "ご連絡いたします")
        talk_scene.message_show(producer.display_name, "'たまたま'進学先の設備がよくなったり")
        talk_scene.message_show(producer.display_name, "'たまたま'M社様たちから見て新卒研修クラスの方が先生でいるだけです")

        talk_scene.message_show("G社",  "えぇ、頼みますよ。");

    else 
        talk_scene.message_show(producer.display_name, "おやおや、残念。")
        talk_scene.message_show(producer.display_name, "それじゃあ、ご家族に迎えに来てもらいますね")    
    end


end

if game_end_flg
    talk_scene.message_show(challenger.display_name, "プロデューサー、聞こえているか？")
    talk_scene.message_show(producer.display_name, "はいはい、どうしました")
    talk_scene.message_show(challenger.display_name, "さっぱり、わからん。　家帰るわ")
    talk_scene.message_show(producer.display_name, "おやおや、残念。")
    talk_scene.message_show(producer.display_name, "それじゃあ、ご家族に迎えに来てもらいますね")
end

talk_scene.scenario_end_message
